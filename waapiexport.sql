-- MySQL dump 10.13  Distrib 5.7.36, for Linux (x86_64)
--
-- Host: localhost    Database: wa_api
-- ------------------------------------------------------
-- Server version	5.7.36-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'test_blast');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kontak`
--

DROP TABLE IF EXISTS `kontak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kontak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2560 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kontak`
--

LOCK TABLES `kontak` WRITE;
/*!40000 ALTER TABLE `kontak` DISABLE KEYS */;
INSERT INTO `kontak` VALUES (2438,'noname','6281228082252'),(2439,'noname','6281224463008'),(2440,'noname','6285785907968'),(2441,'noname','6285703681113'),(2442,'noname','6282333515923'),(2443,'noname','6281259749021'),(2444,'noname','6282142034131'),(2445,'noname','6282175684637'),(2446,'noname','62895336407346'),(2447,'noname','6285607976000'),(2448,'noname','6281218162463'),(2449,'noname','6285691096249'),(2450,'noname','6281234992572'),(2451,'noname','6289604246816'),(2452,'noname','628972987960'),(2453,'noname','6285777172002'),(2454,'noname','6285384982100'),(2455,'noname','6281318422593'),(2456,'noname','6281585493495'),(2457,'noname','6287879715939'),(2458,'noname','6289661240225'),(2459,'noname','6282117841785'),(2460,'noname','6282173023907'),(2461,'noname','6282173023907'),(2462,'noname','6281299558619'),(2463,'noname','6282133617440'),(2464,'noname','6285701113692'),(2465,'noname','6282287324868'),(2466,'noname','6281391748620'),(2467,'noname','628122756583'),(2468,'noname','6281282001613'),(2469,'noname','6285921900819'),(2470,'noname','6281521930595'),(2471,'noname','6285973970897'),(2472,'noname','6285764148649'),(2473,'noname','628567785684'),(2474,'noname','628817230453'),(2475,'noname','6289601715380'),(2476,'noname','6289617889843'),(2477,'noname','6282313772913'),(2478,'noname','6285781626402'),(2479,'noname','628561591522'),(2480,'noname','6281234071992'),(2481,'noname','6285817846212'),(2482,'noname','6281313556955'),(2483,'noname','6287834628771'),(2484,'noname','62895326367773'),(2485,'noname','6285771203936'),(2486,'noname','6281318011378'),(2487,'noname','6282166917907'),(2488,'noname','6285643482878'),(2489,'noname','6285212572014'),(2490,'noname','6289654229248'),(2491,'noname','6281297991504'),(2492,'noname','6285271049867'),(2493,'noname','6285846817741'),(2494,'noname','6281288529222'),(2495,'noname','6285251639186'),(2496,'noname','6281259607507'),(2497,'noname','6285894265354'),(2498,'noname','6281380321397'),(2499,'noname','6285727264018'),(2500,'noname','628111514047'),(2501,'noname','6282121910712'),(2502,'noname','6281398449141'),(2503,'noname','6285399772727'),(2504,'noname','6282339677392'),(2505,'noname','6281515054144'),(2506,'noname','6281210535182'),(2507,'noname','6289665385447'),(2508,'noname','6281224219938'),(2509,'noname','6282284114748'),(2510,'noname','628114320520'),(2511,'noname','6281247151200'),(2512,'noname','6282242043226'),(2513,'noname','6281317697428'),(2514,'noname','62817775004'),(2515,'noname','6289675243909'),(2516,'noname','6289675243909'),(2517,'noname','6289675243909'),(2518,'noname','628212753498'),(2519,'noname','6285214109696'),(2520,'noname','6285735583617'),(2521,'noname','6285207847933'),(2522,'noname','6281333174121'),(2523,'noname','62628170107829'),(2524,'noname','6285716969895'),(2525,'noname','6285921145252'),(2526,'noname','6281282108651'),(2527,'noname','6285775422331'),(2528,'noname','6287809317191'),(2529,'noname','6285736274647'),(2530,'noname','62811151737'),(2531,'noname','6289508210226'),(2532,'noname','6281210034493'),(2533,'noname','6281332478797'),(2534,'noname','6281261330910'),(2535,'noname','628813213630'),(2536,'noname','6288980043261'),(2537,'noname','6281318247699'),(2538,'noname','6281318247699'),(2539,'noname','6282393528411'),(2540,'noname','6282330108992'),(2541,'noname','6289508998272'),(2542,'noname','6285751546414'),(2543,'noname','628568574200'),(2544,'noname','6281213610270'),(2545,'noname','6281316365646'),(2546,'noname','6287846956237'),(2547,'noname','6285885715174'),(2548,'noname','6285315319760'),(2549,'noname','6281386078015'),(2550,'noname','6281311242038'),(2551,'noname','6285648025059'),(2552,'noname','6281904036875'),(2553,'noname','6287843952400'),(2554,'noname','6289689933050'),(2555,'noname','628983845050'),(2556,'noname','6285691404914'),(2557,'noname','6285718616206'),(2558,'noname','6287774316651'),(2559,'noname','6281268156125');
/*!40000 ALTER TABLE `kontak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kontak2`
--

DROP TABLE IF EXISTS `kontak2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kontak2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kontak2`
--

LOCK TABLES `kontak2` WRITE;
/*!40000 ALTER TABLE `kontak2` DISABLE KEYS */;
INSERT INTO `kontak2` VALUES (1,'luqni','6282313772913'),(2,'belajar siroh','6281311119363'),(3,'belajar siroh2','6281311119363'),(4,'luqni','6282313772913'),(5,'luqni','6282313772913'),(6,'luqni','6282313772913'),(7,'luqni','6282313772913'),(8,'luqni','6282313772913'),(9,'luqni','6282313772913'),(10,'luqni','6282313772913');
/*!40000 ALTER TABLE `kontak2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` varchar(100) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `reply` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'6282313772913@c.us',NULL,'2022-07-03 03:25:54','2022-07-03 04:05:29','2022-07-03 03:25:54',NULL,6),(2,'6282313772913@c.us',NULL,'2022-07-03 03:31:33','2022-07-03 03:31:33',NULL,NULL,NULL),(3,'6282313772913@c.us',NULL,'2022-07-03 03:33:54','2022-07-03 03:33:54',NULL,'./downloaded-media/1656819234794.jpeg',NULL),(4,'6282313772913@c.us',NULL,'2022-07-03 03:38:01','2022-07-03 03:38:01',NULL,'./downloaded-media/1656819481497.mp4',NULL),(5,'6282313772913@c.us',NULL,'2022-07-03 03:40:31','2022-07-03 03:40:31',NULL,'./downloaded-media/1656819631970.mp4',NULL),(6,'6282313772913@c.us',NULL,'2022-07-03 03:44:53','2022-07-03 04:14:37',NULL,'./downloaded-media/1656819893174.jpeg',1),(7,'6282313772913@c.us',NULL,'2022-07-03 04:08:15','2022-07-03 04:08:15',NULL,'./downloaded-media/1656821294967.jpeg',0),(8,'6282313772913@c.us',NULL,'2022-07-03 04:14:14','2022-07-03 04:14:14',NULL,'./downloaded-media/1656821654762.jpeg',0);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'tes',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(2,'assalamualaikum',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(3,'testing ini adalah testing .....',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(4,'tes\nyes',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(5,'tes ..\ntes..',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(6,'tes..\ntes..\ntes..\ntes..',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(7,'hai',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(8,'gelas pertama. kafe hikayat situ daun.',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(9,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(10,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(11,'hai',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(12,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(13,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(14,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(15,'jadikanlah dirimu sebagai pemilik jiwa yang indah (dengan belajar mengenal allah), dengan begitu kamu akan menemukan keindahan pada apa pun yang kamu lihat di depan matamu (dari pahit dan manisnya kehidupan).',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(16,'luqni sicaem',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(17,'testing bot wa',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(18,'testing',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(19,'/9j/4aaqskzjrgabaqaaaqabaad/4giosundx1bst0zjteuaaqeaaaiyaaaaaaiqaabtbnryukdcifhzwiaaaaaaaaaaaaaaaabhy3nwaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaqaa9tyaaqaaaadtlqaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaalkzxnjaaaa8aaaahrywflaaaabzaaaabrnwflaaaabeaaaabriwflaaaabjaaaabryvfjdaaaboaaaachnvfjdaaaboaaaachivfjdaaaboaaaach3dhb0aaabyaaaabrjchj0aaab3aaaadxtbhvjaaaaaaaaaaeaaaamzw5vuwaaafgaaaacahmaugbhaeiaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafhzwiaaaaaaaabvogaaopuaaaoqwflaiaaaaaaaagkzaac3hqaagnpywvogaaaaaaaajkaaaa+eaac2z3bhcmeaaaaaaaqaaaaczmyaapknaaanwqaae9aaaapbaaaaaaaaaabywvogaaaaaaaa9tyaaqaaaadtlw1sdwmaaaaaaaaaaqaaaaxlblvtaaaaiaaaabwarwbvag8azwbsaguaiabjag4aywauacaamgawadeanv/baemabgqfbguebgyfbgchbggkeaokcqkkfa4pdbaxfbgyfxqwfhodjr8agymcfhyglcajjicpkikzhy0wlsgwjsgpkp/baembbwchcggkewokeygafhookcgokcgokcgokcgokcgokcgokcgokcgokcgokcgokcgokcgokcgokcgokcgokcgokp/aabeiagqazambigaceqedeqh/xaacaaacagmbaqaaaaaaaaaaaaaaawecbauhcab/xaa9eaacaqmcagcecaueaweaaaabagmabbesiquxeyjbuwgbkqzxodejmkjyschh8acuumlxfsrdgjrtg6l/xaabaqebaqadaqeaaaaaaaaaaaaaagedbaugb//eacqraaicagedbqebaaaaaaaaaaabagmrmseeekefbiiyuxgx/9oadambaairaxeapwd0xcjdnbhgaezy7sqcmnxo8w/tx8t+lfm+1xhzwa/4k813hzclmkknzdvczanontfnkurldy/01tof8b4xx6wrudcutlrqq6xe2oqdngrnbtqv3ootemmrk4qs6u0ir44yk1fxhipvg4onpm8s9lr1dkbhliocxolfqfkmxssncami+udkqucporjfswwcry5+6ahcquuiyosaglnopjvy1ygyzk7joo71waeockoe5lsnahv3kyaaqe0nzofysjnjforqpgsxgqdsm+eahpk1dr4xhnrmssw4zw29malhvf7saqnjjgnjc+m5ry6pe2z/qfkiaejzrcxhoujrymoernrdboz399xybpmkoeay5oonv5vlpiug6vzgju76btjkp7zqwmggmccmg0uubgvycsfzingxxnhnru0ubq+k2fzxw/t1g4hxxh+if2m1m8xrm2oablymse0bywdvnfhcue3thcxbuenxf+rkaqzw8kfwgdq1ioj86wvbfi/eeacla/sjedriipq/nvcni+mqibtutyxwp7i8cv8aivelmo9veg3kzs4llh4bgr0zdnglttnvhqfm1dy45tn88n1dhfpqmk/1h/s37/e9ddomhddcedlceruxkxdhhghtgdqascytruc1p1l+f751seuyylxmkue1ziqixkxmhyabksk86+1vtld8e4hjncsnhbixagenqxd5957fdgdvnh7zui8b4lbw7ylmtpyvplbzcmh1rzjfwtiksw6sexhgj3153qe5jkk0z6v2xrxovlklms0fveli/wbdlllor3edtdw/hv7s3pg7swwvzve7tgckjnlsj495g2/crzotxn+ws5yrjpjmkbntzmuu/waelgz+nxt+qt0mns0wews5ujhj1d6jvrrdhjxtuyvhnq+uvqt6kvlqxjaousehxdyypwcevxfksyllylqzqxtswzravjw+nw2xj86yhd+nlksthsasdsyg2k9s/pykqjfjgm78jg49aklqbmkkrymfiqflwlf8stlgoog+l6csoetsza40ghtuoe7d1fazdfydjxs2vekmud1qjcxujxlgrsa4ibfkqfcrrqgj9ub2owm4tdc54patljjgl3fxnkyshtinqrucdjztjxph8n4tftxw5hv+f3nrnddvbsynqocknrodzz8ffvgbf2svjeh8kjlxix4womcmwgwnywyd1dabi5zz4vrvyqzoomtssxd2txfcrbq6tjbmydei5ezawf0gzxvulhz+let6lw16uxvonjketqvbio4yciniky2wwkpuwcrjue/kpgsqeujbktqy5enhyfayvj9+k41/fn2cflfjilnd0dvch6rvjistv9zc/fnvfdlxgs6gzkxzpafdwrxe0ndoek8evloba6wmhsexuanyya+vtfuryoj3ptutl0v8bvrz/dzfy2s17dxw1shkmlyiijtjob/mvrpspwolgha7e2jyegappvjtmn2id+xypacub/wy4v/m8au75ostaxr0yyjctjkz94csp+1db9rdaf5wzlukm0syxy2iv1pipgyiqv2shrzxtpndboke2pe9s9f3h17uuvefrh/wbnin6og2u9zdozwwlrzcoji7hy9scvq7n2jsc3sc2btppcdckssrigixvkfnxyowm58n6z+dvds8jijvbr0uoh6oaqqdrceodjvvjucrgg1h2vsrarf5+iggwrggyskwbdbjdair19z1s+awnq7580aqdi3egujib2sz9tlmghhxoltkmucbcstg/uooxoth/p0/gofci/1rtheqo0vyjduzezckgokkdv1whcqk3sat7ebibwe9cg0qgglfhdj/adti5neqbgiotjcjl50bobn2stl0xsxi3elwssrvkllozivagohcjjxrw3klqyselljbjb0+ffamjfrqdm27dley59afcq5kqohfaiocnuxfwnbgy5uypgmnhefwsi6yzi11maqx6red3dxf8e1/hxorzjmblgb95vlqiwbcyvghkfrg5xnt7o6qmjmjilfejnbijudvehufizswkgvjucmbndiqoymb/iafamijpej0qdg7ndvdshyihbgwhki4rltely1whg248py+ncpjg8m4da8jn0bkjlaoeqyshwsd3bz2hhnazsk2cggmgopmdqqg0gbr24pd61fyu/mfdseook539phvlsv/qxkdvfb9axjjyrupotzj5ynjkwxqea9yfooqfkmiys2a65otn9getbeyojjs5/pjh7/grryin10qqiegek9atjivjx+rgqo99v1qci1i6suymdntgo2qy7yscziqrcidsdm1smwgio2yd4gb60bk4wulissmgaowg9ftbi0cwlyuck4b5zordrj+sn3htlkp0kbkjoacdjg3lv8ads220ffx8rv7tqzx6hkb864k8djyxlylmbtikh/xp4vr5mkcbg3ygujfzq7rgfvlj3or+dubxpzms6tjgtnbbrlg048epfjdebvlsbo3yn104i7kfcrlcgfcopjj7yp2arczjmqqx0uttjkcfpuw0rsov9ixtwop9q5irmjikksyxyb426mkjszj5vr+scznld+44hpyp7sdjmi23hmjyp8e34ugsrq5emouqhgw6xhlv+vasmwgio2yd4gb60pgamtyqmfspuf35vzlujbmvxgnicfafol/7aic2kz3dvf1+narxe+hsogzcsmbmwfnbyhwcg7nygt5unhv5lxo3mavljagwscui2amhzgffsrc+2rcqgu72xek1kjs1wqwadpvkqqqrjk4o+c/jsblh1lyqjwhsgrko7ncrh0ybuzp2puhdqhwxtzat8k4zithwvel286rmjrhonzdjsv1tk81lc/tuv0xwki6isffdiitymeybit3b067ybgwdhdb4bpye6kocnoxksewb4hjt7voiwgyzbfbx2gutwvg8ly2i1q2wo45g7h0pcg1fhkjebmmhg4xiryaiahusgcitpyeyqsbihkyxhkotvitnpzxlxhr4jlvkkh6se/3cqkdcq/aje/hf4zqvcqynox2oqbispjuhtk4w4gstgfcpjvmd5kyp9entxohud4pz+i8qvp0+slcaeiysmc/h/fvhlcxoflaeirg3pwnliuv0trk76kbugzuv/ohpr440bnxnqcdi7kef+kthisf9pb8/ttv8f1qsejb+vtmlpy77l5z/krycq/+vcipp2i+fzoywdggqpc3izj6g/f5upphlkqxigxko2/psvacnsqw6n733pvxz+arizjjokettfiuckjbhr7qawwkjyzxz4bcio+h/wdzm3io2/cigjnjikmur0ke1kjmt4msi6/4vv8a5giiolplis/zsm+rp/8amf8a6oorkvohlzekzgm2cmgiwwe+iiuqkppi0alp/wcuagz3d/vrjley2mv23xdeixmiiginkdmly7avjaaoklgbjyri+d/sjyfoiigc6ma3keuivfizkdekhcywu7uxlbzlvgpciigh0uuub//z',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(20,'mbak',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(21,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(22,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(23,'cek',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(24,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(25,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(26,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(27,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(28,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(29,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(30,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(31,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(32,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(33,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(34,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(35,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(36,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(37,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(38,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(39,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(40,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(41,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(42,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(43,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(44,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(45,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(46,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(47,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(48,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(49,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(50,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(51,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(52,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(53,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(54,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(55,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(56,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(57,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(58,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(59,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(60,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(61,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(62,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(63,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(64,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(65,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(66,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(67,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(68,'tes',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(69,'tes',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(70,'tes lebaran',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(71,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(72,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(73,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(74,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(75,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(76,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(77,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(78,'ulek terus....',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(79,'',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(80,'gundul ketemu gondrong. perbedaan itu saling menguatkan.',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(81,'tes 19 juli',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(82,'tes 19',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(83,'tes',NULL,NULL,'2022-07-19 13:49:27','2022-07-19 13:53:02','2022-07-19 13:52:50'),(84,'ha',NULL,'6282313772913@c.us','2022-07-19 14:02:18','2022-07-19 14:02:18','2022-07-19 14:02:18'),(85,'la',NULL,'6282313772913@c.us','2022-07-19 14:55:35','2022-07-19 14:55:35','2022-07-19 14:55:35'),(86,'hai',NULL,'6282313772913@c.us','2022-07-19 15:37:12','2022-07-19 15:37:12','2022-07-19 15:37:12'),(87,'mbak',NULL,'6281934787493@c.us','2022-07-19 16:18:15','2022-07-19 16:18:15','2022-07-19 16:18:15'),(88,'waalaikum salam warahmatullahi wabaraktuhu',NULL,'6285216546800@c.us','2022-07-21 07:36:20','2022-07-21 07:36:20','2022-07-21 07:36:20'),(89,'tks',NULL,'6285216546800@c.us','2022-07-21 07:36:23','2022-07-21 07:36:23','2022-07-21 07:36:23'),(90,'assalamu\'alaikum',NULL,'6282313772913@c.us','2022-07-21 07:58:41','2022-07-21 07:58:41','2022-07-21 07:58:41'),(91,'hai',NULL,'6282313772913@c.us','2022-07-21 07:58:46','2022-07-21 07:58:46','2022-07-21 07:58:46'),(92,'pekan ini kita kembali dapat menyimak kajian keseharian nabi',NULL,'6282313772913@c.us','2022-07-21 08:03:56','2022-07-21 08:03:56','2022-07-21 08:03:56'),(93,'pekan ini kita kembali dapat menyimak kajian keseharian nabi, yang telah memasuki',NULL,'6282313772913@c.us','2022-07-21 08:04:29','2022-07-21 08:04:29','2022-07-21 08:04:29'),(94,'pekan ini kita kembali dapat menyimak kajian keseharian nabi, yang telah memasuki 1',NULL,'6282313772913@c.us','2022-07-21 08:04:40','2022-07-21 08:04:40','2022-07-21 08:04:40'),(95,'pekan ini kita kembali dapat menyimak kajian *keseharian nabi*, yang telah memasuki *episode',NULL,'6282313772913@c.us','2022-07-21 08:05:03','2022-07-21 08:05:03','2022-07-21 08:05:03'),(96,'pekan ini kita kembali dapat menyimak kajian *keseharian nabi*, yang telah memasuki *episode ke*.',NULL,'6282313772913@c.us','2022-07-21 08:05:19','2022-07-21 08:05:19','2022-07-21 08:05:19'),(97,'pekan ini kita kembali dapat menyimak kajian *keseharian nabi*, yang telah memasuki *episode ke-18*.',NULL,'6282313772913@c.us','2022-07-21 08:05:30','2022-07-21 08:05:30','2022-07-21 08:05:30'),(98,'pekan ini kita kembali dapat menyimak kajian keseharian nabi, yang telah memasuki episode ke-18.kkda',NULL,'6282313772913@c.us','2022-07-21 08:05:58','2022-07-21 08:05:58','2022-07-21 08:05:58'),(99,'pekan ini kita kembali dapat menyimak kajian keseharian nabi, yang telah memasuki episode ke-18.kkdajkdakdjabj',NULL,'6282313772913@c.us','2022-07-21 08:06:20','2022-07-21 08:06:20','2022-07-21 08:06:20'),(100,'hai',NULL,'6282313772913@c.us','2022-07-21 08:06:39','2022-07-21 08:06:39','2022-07-21 08:06:39'),(101,'hai',NULL,'6282313772913@c.us','2022-07-21 08:08:46','2022-07-21 08:08:46','2022-07-21 08:08:46'),(102,'hai',NULL,'6282313772913@c.us','2022-07-21 08:12:38','2022-07-21 08:12:38','2022-07-21 08:12:38'),(103,'hai',NULL,'6282313772913@c.us','2022-07-21 08:12:50','2022-07-21 08:12:50','2022-07-21 08:12:50'),(104,'itu',NULL,'6282313772913@c.us','2022-07-21 08:13:26','2022-07-21 08:13:26','2022-07-21 08:13:26'),(105,'hai',NULL,'6282313772913@c.us','2022-07-21 08:14:26','2022-07-21 08:14:26','2022-07-21 08:14:26'),(106,'hai',NULL,'6282313772913@c.us','2022-07-21 08:17:08','2022-07-21 08:17:08','2022-07-21 08:17:08');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numbers`
--

DROP TABLE IF EXISTS `numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numbers`
--

LOCK TABLES `numbers` WRITE;
/*!40000 ALTER TABLE `numbers` DISABLE KEYS */;
INSERT INTO `numbers` VALUES (1,1,'noname','6282313772913'),(2,1,'noname','6282313772913');
/*!40000 ALTER TABLE `numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'episode 18','*REMINDER Kajian*\n*KESEHARIAN NABI*\nبسم الله الرحمن الرحيم\nالسلام عليكم ورحمة الله وبركاته\n____\nSahabat Pencinta Nabi,\nالحمد لله\nPekan ini kita kembali dapat menyimak kajian *KESEHARIAN NABI*, yang telah memasuki *episode ke-18*.\nMari simak kajian: *\"Keseharian Nabi\"*\n? *Episode ke-18*:\n*Makan Malam Rasulullah* ﷺ\ndengan cara:\nLogin/daftar klik:\nwww.belajarsiroh.com\n ?️Bersama: \n*Ustadz Abdul Khoir Rahmat, Lc*.\n?Bersumber dari kitab: *_Al-Yaum An-Nabawiy_*, \n✒️karya:\n*Syaikh Abdul Wahab bin Nasir At-Thariri*\n____\nYuk, Bagikan kepada kerabat, handai taulan, agar kebaikan ini terus mengalir. Semoga bermanfaat.\nFollow :\nIG : @tempatbelajarsiroh\nFb : @tempatbelajarsiroh\nWeb : www.belajarsiroh.com');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_replies`
--

DROP TABLE IF EXISTS `wa_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wa_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_replies`
--

LOCK TABLES `wa_replies` WRITE;
/*!40000 ALTER TABLE `wa_replies` DISABLE KEYS */;
INSERT INTO `wa_replies` VALUES (1,'hai','hai juga');
/*!40000 ALTER TABLE `wa_replies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-21 19:45:38
