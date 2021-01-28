/*
MySQL Data Transfer
Source Host: localhost
Source Database: database
Target Host: localhost
Target Database: database
Date: 16/01/2021 13:51:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admintbl
-- ----------------------------
DROP TABLE IF EXISTS `admintbl`;
CREATE TABLE `admintbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(35) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for admintblcontoh
-- ----------------------------
DROP TABLE IF EXISTS `admintblcontoh`;
CREATE TABLE `admintblcontoh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(35) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for barangtbl
-- ----------------------------
DROP TABLE IF EXISTS `barangtbl`;
CREATE TABLE `barangtbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(35) NOT NULL,
  `deskripsi` text NOT NULL,
  `warna` varchar(25) NOT NULL,
  `ukuran` varchar(15) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for downloadtbl
-- ----------------------------
DROP TABLE IF EXISTS `downloadtbl`;
CREATE TABLE `downloadtbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for kategoritbl
-- ----------------------------
DROP TABLE IF EXISTS `kategoritbl`;
CREATE TABLE `kategoritbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for newstbl
-- ----------------------------
DROP TABLE IF EXISTS `newstbl`;
CREATE TABLE `newstbl` (
  `tanggal` date NOT NULL,
  `judul` varchar(50) NOT NULL,
  `news` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for pelanggantbl
-- ----------------------------
DROP TABLE IF EXISTS `pelanggantbl`;
CREATE TABLE `pelanggantbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `email` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for testimonialtbl
-- ----------------------------
DROP TABLE IF EXISTS `testimonialtbl`;
CREATE TABLE `testimonialtbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(35) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `testimonial` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for transaksirincitbl
-- ----------------------------
DROP TABLE IF EXISTS `transaksirincitbl`;
CREATE TABLE `transaksirincitbl` (
  `notransaksi` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for transaksitbl
-- ----------------------------
DROP TABLE IF EXISTS `transaksitbl`;
CREATE TABLE `transaksitbl` (
  `notransaksi` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`notransaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for visitortbl
-- ----------------------------
DROP TABLE IF EXISTS `visitortbl`;
CREATE TABLE `visitortbl` (
  `ip` int(11) NOT NULL,
  `time` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=1610779560 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admintbl` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `admintbl` VALUES ('5', 'operator', '28b662d883b6d76fd96e4ddc5e9ba780');
INSERT INTO `barangtbl` VALUES ('7', 'Gelombang Cinta', 'Sesuai dengan namanya, tanaman hias ini memiliki karakteristik daun yang bergelombang.\r\n\r\nTanaman ini sangat cocok dimanfaatkan untuk menghias sudut-sudut rumah.', 'Harga TIdak Termasuk Pot', 'Tanaman Muda', 'Gelombang Cinta', '200000', '4', '1.jpg');
INSERT INTO `barangtbl` VALUES ('8', 'Anggrek', 'Anggrek menyukai cahaya matahari tetapi tidak langsung sehingga ia biasa ditemukan di alam sebagai tumbuhan lantai hutan atau di bawah naungan. Sebagai tanaman hias, anggrek tahan di dalam ruang.', 'Harga TIdak Termasuk Pot', 'Tanaman Muda', 'Anggrek', '80000', '6', '2.jpg');
INSERT INTO `barangtbl` VALUES ('9', 'Janda Bolong', 'Janda bolong adalah jenis tanaman hias tropis monstera yang tengah naik daun. Tanaman ini sedang diganderungi masyarakat dan biasa dipakai sebagai dekorasi ruangan bergaya minimalis atau skandinavia karena bentuknya yang dinilai memiliki estetika.', 'Harga TIdak Termasuk Pot', 'Tanaman Muda', 'Janda Bolong', '350000', '6', '4.jpg');
INSERT INTO `barangtbl` VALUES ('10', 'Lidah Buaya', 'Lidah buaya (Aloe vera) adalah spesies tumbuhan dengan daun berdaging tebal dari genus Aloe.[3] Tumbuhan ini bersifat menahun, berasal dari Jazirah Arab, dan tanaman liarnya telah menyebar ke kawasan beriklim tropis, semi-tropis, dan kering di berbagai belahan dunia.', 'Harga TIdak Termasuk Pot', 'Tanaman Muda', 'Lidah buaya', '65000', '3', '5.jpg');
INSERT INTO `barangtbl` VALUES ('11', 'Mawar', 'Mawar adalah suatu jenis tanaman semak dari genus Rosa sekaligus nama bunga yang dihasilkan tanaman ini. Mawar liar terdiri dari 100 spesies lebih, kebanyakan tumbuh di belahan bumi utara yang berudara sejuk', 'Harga TIdak Termasuk Pot', 'Tanaman Muda', 'Mawar', '75000', '6', '3.jpg');
INSERT INTO `barangtbl` VALUES ('12', 'Sri Rezeki', 'Aglaonema, sri rezeki, atau chinese evergreen merupakan tanaman hias populer dari suku talas-talasan atau Araceae. ... Genus Aglaonema memiliki sekitar 30 spesies. Habitat asli tanaman ini adalah di bawah hutan hujan tropis, tumbuh baik pada areal dengan intensitas penyinaran rendah dan kelembaban tinggi.', 'Harga TIdak Termasuk Pot', 'Tanaman Muda', 'Sri Rezeki (Aglaonema)', '150000', '6', '6.jpg');
INSERT INTO `downloadtbl` VALUES ('1', 'CARA MERAWAT GELOMBANG CINTA', 'pada file ini anda akan diajarkan cara merawat tanaman Gelombang Cinta', 'download/Gelombang Cinta.pdf');
INSERT INTO `downloadtbl` VALUES ('2', 'CARA MERAWAT ANGGREK', 'pada file ini anda akan diajarkan cara merawat tanaman anggrek', 'download/Anggrek.pdf');
INSERT INTO `downloadtbl` VALUES ('3', 'CARA MERAWAT JANDA BOLONG', 'pada file ini anda akan diajarkan cara merawat tanaman janda bolong', 'download/Janda Bolong.pdf');
INSERT INTO `downloadtbl` VALUES ('4', 'CARA MERAWAT LIDAH BUAYA', 'pada file ini anda akan diajarkan cara merawat tanaman lidah buaya', 'download/Lidah Buaya.pdf');
INSERT INTO `downloadtbl` VALUES ('5', 'CARA MERAWAT MAWAR', 'pada file ini anda akan diajarkan cara merawat tanaman mawar', 'download/Mawar.pdf');
INSERT INTO `downloadtbl` VALUES ('6', 'CARA MERAWAT SRI REJEKI', 'pada file ini anda akan diajarkan cara merawat tanaman sri rejeki', 'download/Sri Rejeki.pdf');
INSERT INTO `kategoritbl` VALUES ('1', 'Accesories');
INSERT INTO `kategoritbl` VALUES ('2', 'Anggrek');
INSERT INTO `kategoritbl` VALUES ('3', 'Mawar');
INSERT INTO `kategoritbl` VALUES ('4', 'Janda Bolong');
INSERT INTO `kategoritbl` VALUES ('5', 'Lidah buaya');
INSERT INTO `kategoritbl` VALUES ('6', 'Gelombang Cinta');
INSERT INTO `kategoritbl` VALUES ('7', 'Sri Rezeki (Aglaonema)');
INSERT INTO `newstbl` VALUES ('2020-12-31', 'pameran', 'Now Open! Tanaman Hias Shop');
INSERT INTO `newstbl` VALUES ('2020-12-31', 'RESTOCK', 'RESTOCK !!! Tanaman Anggrek buy 1 get 1 GRAB IT FAST GUYS !!!');
INSERT INTO `newstbl` VALUES ('2020-12-31', 'New Items', 'NEW ITEMS: JANDA BOLONG READY STOCK !!!!');
INSERT INTO `pelanggantbl` VALUES ('15', 'uuk', 'karawaci', 'hgjgfh', '8986797869768', 'uuk', 'b30ae3584851b79c9e3f8ccf12819b28');
INSERT INTO `pelanggantbl` VALUES ('16', '', '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e');
INSERT INTO `pelanggantbl` VALUES ('17', 'tes', 'tes', 'a', '02', 'a', '0cc175b9c0f1b6a831c399e269772661');
INSERT INTO `pelanggantbl` VALUES ('18', 'p', 'p', 'p', 'p', 'p', '83878c91171338902e0fe0fb97a8c47a');
INSERT INTO `pelanggantbl` VALUES ('19', 'b', 'b', 'b', 'b', 'b', '92eb5ffee6ae2fec3ad71c777531578f');
INSERT INTO `transaksirincitbl` VALUES ('32', 'a', '7', 'Gelombang Cinta', '200000', '2', '400000');
INSERT INTO `transaksirincitbl` VALUES ('32', 'a', '12', 'Sri Rezeki', '150000', '2', '300000');
INSERT INTO `transaksirincitbl` VALUES ('31', 'uuk', '12', 'Sri Rezeki', '150000', '1', '150000');
INSERT INTO `transaksirincitbl` VALUES ('33', 'p', '12', 'Sri Rezeki', '150000', '1', '150000');
INSERT INTO `transaksirincitbl` VALUES ('34', 'a', '12', 'Sri Rezeki', '150000', '1', '150000');
INSERT INTO `transaksirincitbl` VALUES ('35', 'a', '11', 'Mawar', '75000', '1', '75000');
INSERT INTO `transaksirincitbl` VALUES ('36', 'uuk', '12', 'Sri Rezeki', '150000', '2', '300000');
INSERT INTO `transaksirincitbl` VALUES ('37', 'a', '12', 'Sri Rezeki', '150000', '1', '150000');
INSERT INTO `transaksirincitbl` VALUES ('37', 'a', '11', 'Mawar', '75000', '1', '75000');
INSERT INTO `transaksirincitbl` VALUES ('38', '', '12', 'Sri Rezeki', '150000', '1', '150000');
INSERT INTO `transaksirincitbl` VALUES ('39', 'b', '12', 'Sri Rezeki', '150000', '1', '150000');
INSERT INTO `transaksirincitbl` VALUES ('40', 'b', '11', 'Mawar', '75000', '3', '225000');
INSERT INTO `transaksirincitbl` VALUES ('41', 'b', '12', 'Sri Rezeki', '150000', '1', '150000');
INSERT INTO `transaksirincitbl` VALUES ('42', 'b', '10', 'Lidah Buaya', '65000', '1', '65000');
INSERT INTO `transaksirincitbl` VALUES ('43', 'uuk', '11', 'Mawar', '75000', '1', '75000');
INSERT INTO `transaksirincitbl` VALUES ('45', 'uuk', '12', 'Sri Rezeki', '150000', '1', '150000');
INSERT INTO `transaksirincitbl` VALUES ('46', 'uuk', '11', 'Mawar', '75000', '1', '75000');
INSERT INTO `transaksirincitbl` VALUES ('47', 'a', '12', 'Sri Rezeki', '150000', '2', '300000');
INSERT INTO `transaksirincitbl` VALUES ('47', 'a', '8', 'Anggrek', '80000', '1', '80000');
INSERT INTO `transaksitbl` VALUES ('31', 'uuk', '1');
INSERT INTO `transaksitbl` VALUES ('32', 'a', '1');
INSERT INTO `transaksitbl` VALUES ('33', 'p', '1');
INSERT INTO `transaksitbl` VALUES ('34', 'a', '1');
INSERT INTO `transaksitbl` VALUES ('35', 'a', '1');
INSERT INTO `transaksitbl` VALUES ('36', 'uuk', '1');
INSERT INTO `transaksitbl` VALUES ('37', 'a', '1');
INSERT INTO `transaksitbl` VALUES ('38', '', '1');
INSERT INTO `transaksitbl` VALUES ('39', 'b', '1');
INSERT INTO `transaksitbl` VALUES ('40', 'b', '1');
INSERT INTO `transaksitbl` VALUES ('41', 'b', '1');
INSERT INTO `transaksitbl` VALUES ('42', 'b', '1');
INSERT INTO `transaksitbl` VALUES ('43', 'uuk', '1');
INSERT INTO `transaksitbl` VALUES ('44', 'uuk', '1');
INSERT INTO `transaksitbl` VALUES ('45', 'uuk', '1');
INSERT INTO `transaksitbl` VALUES ('46', 'uuk', '1');
INSERT INTO `transaksitbl` VALUES ('47', 'a', '0');
INSERT INTO `visitortbl` VALUES ('0', '1368498420');
INSERT INTO `visitortbl` VALUES ('0', '1368498503');
INSERT INTO `visitortbl` VALUES ('0', '1368498733');
INSERT INTO `visitortbl` VALUES ('0', '1368499016');
INSERT INTO `visitortbl` VALUES ('0', '1368499042');
INSERT INTO `visitortbl` VALUES ('0', '1368499194');
INSERT INTO `visitortbl` VALUES ('0', '1368499579');
INSERT INTO `visitortbl` VALUES ('0', '1368499593');
INSERT INTO `visitortbl` VALUES ('0', '1368499638');
INSERT INTO `visitortbl` VALUES ('0', '1368499664');
INSERT INTO `visitortbl` VALUES ('11', '1368500516');
INSERT INTO `visitortbl` VALUES ('1', '1610779559');
