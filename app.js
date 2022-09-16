const { Client, MessageMedia, LocalAuth, Buttons, List } = require('whatsapp-web.js');
const express = require('express');
const { body, validationResult } = require('express-validator');
const socketIO = require('socket.io');
const qrcode = require('qrcode');
const http = require('http');
const fs = require('fs');
const { phoneNumberFormatter } = require('./helpers/formatter');
const fileUpload = require('express-fileupload');
const axios = require('axios');
const port = process.env.PORT || 8000;

const mime = require('mime-types');

const app = express();
const server = http.createServer(app);
const io = socketIO(server);

app.use(express.json());
app.use(express.urlencoded({
  extended: true
}));
app.use(fileUpload({
  debug: true
}));

const SESSION_FILE_PATH = './whatsapp-session.json';
let sessionCfg;
if (fs.existsSync(SESSION_FILE_PATH)) {
  sessionCfg = require(SESSION_FILE_PATH);
}

app.get('/', (req, res) => {
  res.sendFile('index.html', {
    root: __dirname
  });
});

const client = new Client({ 
  authStrategy: new LocalAuth(),
  puppeteer: {
    executablePath: '/usr/bin/chromium-browser',
  },
});

const db = require('./helpers/db');

client.on('message', async msg => {
  console.log(msg);
  const keyword = msg.body.toLowerCase();
  console.log(keyword.length);
  let replyMessage = true;
  // if(keyword.length < 100){
  //   await db.saveMessage(msg.body.toLowerCase(), msg.author, msg.from);
  //   replyMessage = await db.getReply(keyword);
  // }
   
  // if (replyMessage !== false) {
    
    // const productsList = new List(
    //   "Here's our list of products at 50% off",
    //   "View all products on Luqni Store",
    //   [
    //     {
    //       title: "Products Luqni Store",
    //       rows: [
    //         { id: "apple", title: "Buku Sekolah" },
    //         { id: "mango", title: "Kitab Kuning" },
    //         { id: "banana", title: "Alat Tulis" },
    //       ],
    //     },
    //   ],
    //   "Wa'alaikumussalam Please select a product"
    // );
    // msg.reply(productsList);
  // } else if (msg.body == '!groups') {
  //   client.getChats().then(chats => {
  //     const groups = chats.filter(chat => chat.isGroup);

  //     if (groups.length == 0) {
  //       msg.reply('You have no group yet.');
  //     } else {
  //       let replyMsg = '*YOUR GROUPS*\n\n';
  //       groups.forEach((group, i) => {
  //         replyMsg += `ID: ${group.id._serialized}\nName: ${group.name}\n\n`;
  //       });
  //       replyMsg += '_You can use the group id to send a message to the group._'
  //       msg.reply(replyMsg);
  //     }
  //   });
  // }

  // Downloading media
  if (msg.hasMedia) {
    console.log(msg);
    // filter hanya media yang di kirim yg disimpan
    if(msg.from != 'status@broadcast' && msg.type == 'image'){
      msg.downloadMedia().then(media => {
        // To better understanding
        // Please look at the console what data we get
        // console.log(media);

  
        if (media) {
          // The folder to store: change as you want!
          // Create if not exists
          const mediaPath = './downloaded-media/';
  
          if (!fs.existsSync(mediaPath)) {
            fs.mkdirSync(mediaPath);
          }
  
          // Get the file extension by mime-type
          const extension = mime.extension(media.mimetype);
          
          // Filename: change as you want! 
          // I will use the time for this example
          // Why not use media.filename? Because the value is not certain exists
          const filename = new Date().getTime();
  
          const fullFilename = mediaPath + filename + '.' + extension;
  
          // Save to file
          try {
            fs.writeFileSync(fullFilename, media.data, { encoding: 'base64' }); 
            console.log('File downloaded successfully!', fullFilename);
            async function start() {
              const postImageInformation = await db.postInfoMedia(msg.from, msg.notifyName, fullFilename, 0 );
           }
           const tes = start();
          } catch (err) {
            console.log('Failed to save the file:', err);
          }
        }
      });
    }
  }


});

client.initialize();

// Socket IO
io.on('connection', function(socket) {
  socket.emit('message', 'Connecting...');

  client.on('qr', (qr) => {
    console.log('QR RECEIVED', qr);
    qrcode.toDataURL(qr, (err, url) => {
      socket.emit('qr', url);
      socket.emit('message', 'QR Code received, scan please!');
    });
  });

  client.on('ready', () => {
    socket.emit('ready', 'Whatsapp is ready!');
    socket.emit('message', 'Whatsapp is ready!');
  });

  client.on('authenticated', (session) => {
    socket.emit('authenticated', 'Whatsapp is authenticated!');
    socket.emit('message', 'Whatsapp is authenticated!');
    console.log('AUTHENTICATED');
    
  });

  client.on('auth_failure', function(session) {
    socket.emit('message', 'Auth failure, restarting...');
  });

  client.on('disconnected', (reason) => {
    socket.emit('message', 'Whatsapp is disconnected!');
    fs.unlinkSync(SESSION_FILE_PATH, function(err) {
        if(err) return console.log(err);
        console.log('Session file deleted!');
    });
    client.destroy();
    client.initialize();
  });
});


const checkRegisteredNumber = async function(number) {
  const isRegistered = await client.isRegisteredUser(number);
  return isRegistered;
}

// Send message
app.post('/send-message', [
  body('number').notEmpty(),
  body('message').notEmpty(),
], async (req, res) => {
  const errors = validationResult(req).formatWith(({
    msg
  }) => {
    return msg;
  });

  if (!errors.isEmpty()) {
    return res.status(422).json({
      status: false,
      message: errors.mapped()
    });
  }

  const number = phoneNumberFormatter(req.body.number);
  const message = req.body.message;

  // const isRegisteredNumber = await checkRegisteredNumber(number);

  // if (!isRegisteredNumber) {
  //   return res.status(422).json({
  //     status: false,
  //     message: 'The number is not registered'
  //   });
  // }

  client.sendMessage(number, message).then(response => {
    res.status(200).json({
      status: true,
      response: response
    });
  }).catch(err => {
    console.log(err);
    res.status(500).json({
      status: false,
      response: err
    });
  });
});

// Send media
app.post('/send-media', async (req, res) => {
  const number = phoneNumberFormatter(req.body.number);
  const caption = req.body.caption;
  const fileUrl = req.body.file;

  // const media = MessageMedia.fromFilePath('./image-example.png');
  // const file = req.files.file;
  // const media = new MessageMedia(file.mimetype, file.data.toString('base64'), file.name);
  let mimetype;
  const attachment = await axios.get(fileUrl, {
    responseType: 'arraybuffer'
  }).then(response => {
    mimetype = response.headers['content-type'];
    return response.data.toString('base64');
  });

  const media = new MessageMedia(mimetype, attachment, 'Media');

  client.sendMessage(number, media, {
    caption: caption
  }).then(response => {
    res.status(200).json({
      status: true,
      response: response
    });
  }).catch(err => {
    res.status(500).json({
      status: false,
      response: err
    });
  });
});

// Send Broadcast 
app.post('/send-broadcast', async (req, res) => {
  
  const requestJobs = [];  
  // const kontak = await db.getKontak();
  const contact_id = req.body.contact_id;
  const id = req.body.template_id;

  const kontak = await db.getKontak(contact_id);
  const template = await db.getTemplate(id);

  // console.log(template[0].content);
  // console.log(kontak[0].number);

  const caption = template[0].content;
  const fileUrl = req.body.file;

  
  
  for(let i = 0; i < kontak.length; i++){
    console.log(kontak[i].number);
    const delay = 5000 * i;
    // const number = phoneNumberFormatter(kontak[i].phone);
    const number = phoneNumberFormatter(kontak[i].number);
    
    if(fileUrl !== ''){
      let mimetype;
      const attachment = await axios.get(fileUrl, {
        responseType: 'arraybuffer'
      }).then(response => {
        mimetype = response.headers['content-type'];
        return response.data.toString('base64');
      });
  
      const media = new MessageMedia(mimetype, attachment, 'Media');
      requestJobs.push(client.sendMessage(number, media, {
        caption: caption
      }));

      delay;
      
    }else{ 
      requestJobs.push(client.sendMessage(number, caption));
      
    }
  }

  Promise.all(requestJobs)
  .then(response => {
    res.status(200).json({
      status: true,
      response: response
    });
  }).catch(err => {
    res.status(500).json({
      status: false,
      response: err
    });
  });

  const used = process.memoryUsage().heapUsed / 1024 / 1024;
  console.log(`The Broadcast script uses approximately ${Math.round(used * 100) / 100} MB`);

});

const findGroupByName = async function(name) {
  const group = await client.getChats().then(chats => {
    return chats.find(chat => 
      chat.isGroup && chat.name.toLowerCase() == name.toLowerCase()
    );
  });
  return group;
}

// Send message to group
// You can use chatID or group name, yea!
app.post('/send-group-message', [
  body('id').custom((value, { req }) => {
    if (!value && !req.body.name) {
      throw new Error('Invalid value, you can use `id` or `name`');
    }
    return true;
  }),
  body('message').notEmpty(),
], async (req, res) => {
  const errors = validationResult(req).formatWith(({
    msg
  }) => {
    return msg;
  });

  if (!errors.isEmpty()) {
    return res.status(422).json({
      status: false,
      message: errors.mapped()
    });
  }

  let chatId = req.body.id;
  const groupName = req.body.name;
  const message = req.body.message;

  // Find the group by name
  if (!chatId) {
    const group = await findGroupByName(groupName);
    if (!group) {
      return res.status(422).json({
        status: false,
        message: 'No group found with name: ' + groupName
      });
    }
    chatId = group.id._serialized;
  }

  client.sendMessage(chatId, message).then(response => {
    res.status(200).json({
      status: true,
      response: response
    });
  }).catch(err => {
    res.status(500).json({
      status: false,
      response: err
    });
  });
});

server.listen(port, function() {
  console.log('App running on *: ' + port);
});

const used = process.memoryUsage().heapUsed / 1024 / 1024;
console.log(`The All script uses approximately ${Math.round(used * 100) / 100} MB`);
