const mysql = require('mysql2/promise');

const createConnection = async () => {
  return await mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'P@ssw0rd',
    database: 'wa_api'
  });
}

const getReply = async (keyword) => {
  const connection = await createConnection();
  const [rows] = await connection.execute('SELECT message FROM wa_replies WHERE keyword = ?', [keyword]);
  if (rows.length > 0) return rows[0].message;
  return false;
}

const getKontak = async (contact_id) => {
  const connection = await createConnection();
  // const [rows] = await connection.execute('SELECT phone FROM kontak');
  const [rows] = await connection.execute('SELECT number FROM numbers WHERE contact_id = ?', [contact_id]);
  if (rows.length > 0) return rows;
  return false;
}

const getTemplate = async (id) => {
  const connection = await createConnection();
  // const [rows] = await connection.execute('SELECT phone FROM kontak');
  const [rows] = await connection.execute('SELECT content FROM templates WHERE id = ?', [id]);
  if (rows.length > 0) return rows;
  return false;
}

const saveMessage = async (message, name, phone) => {
  const connection = await createConnection();
  let data = {message: message, name:name, phone:phone};
  let sql = "INSERT INTO message SET ?";
  connection.query(sql, data,(err, results) => {
    if(err) throw err;
  });
}

const postInfoMedia = async (phone, nama, path, reply) => {
  console.log(path);
  const connection = await createConnection();
  let data = {nomor: phone, nama: nama, path: path, reply:reply};
  let sql = "INSERT INTO media SET ?";
  connection.query(sql, data,(err, results) => {
    if(err) throw err;
  });
}

module.exports = {
  createConnection,
  getReply,
  postInfoMedia,
  saveMessage,
  getKontak,
  getTemplate
}
