-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db-ulwah
DROP DATABASE IF EXISTS `db-ulwah`;
CREATE DATABASE IF NOT EXISTS `db-ulwah` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db-ulwah`;

-- Dumping structure for table db-ulwah.cart
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` varchar(25) NOT NULL,
  `id_invoice` varchar(30) NOT NULL,
  `id_brg` int NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `jumlah` int NOT NULL,
  `harga` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db-ulwah.cart: ~0 rows (approximately)
DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `id_user`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`) VALUES
	(27, '11', 'INV-40169245', 6, 'Ulwahs Sandal Wanita Elora Black', 2, 109900),
	(28, '11', 'INV-99232152', 6, 'Ulwahs Sandal Wanita Elora Black', 2, 109900);

-- Dumping structure for table db-ulwah.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id_brg` int NOT NULL AUTO_INCREMENT,
  `nama_brg` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int NOT NULL,
  `stok` int NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`id_brg`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db-ulwah.product: ~2 rows (approximately)
DELETE FROM `product`;
INSERT INTO `product` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
	(6, 'Ulwahs Sandal Wanita Elora Black', 'Elora by ULWAHS OFFICIAL   Size : 37 - 41 Colour  : Black - Nude - Beige Material : PU Premium Leather Tinggi  : 1-2 CM  SIZE CHART: SIZE 37 = PANJANG KAKI 24 CM SIZE 38 = PANJANG KAKI 24.5 CM SIZE 39 = PANJANG KAKI 25 CM SIZE 40 = PANJANG KAKI 25.5 CM SI', 'Sandal', 109900, 6, 'elore.jpeg'),
	(7, 'Ulwahs Flat Shoes Wanita Chessy Black', 'Chessy by ULWAHS OFFICIAL   Size : 37 - 41 Colour  : Black - Nude - Beige Material : PU Premium Leather Tinggi  : 1-3 CM  SIZE CHART: SIZE 37 = PANJANG KAKI 23.5 CM SIZE 38 = PANJANG KAKI 24 CM SIZE 39 = PANJANG KAKI 24.5 CM SIZE 40 = PANJANG KAKI 25 CM S', 'flatshoes', 129900, 10, 'chessy.jpeg');

-- Dumping structure for table db-ulwah.transaction
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `order_id` char(30) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(225) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `mobile_phone` varchar(15) NOT NULL,
  `city` varchar(255) NOT NULL,
  `kode_pos` varchar(100) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `ekspedisi` varchar(100) NOT NULL,
  `tracking_id` varchar(30) NOT NULL,
  `transaction_time` datetime DEFAULT NULL,
  `payment_limit` datetime DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `gambar` text,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db-ulwah.transaction: ~0 rows (approximately)
DELETE FROM `transaction`;
INSERT INTO `transaction` (`order_id`, `id_user`, `name`, `email`, `alamat`, `mobile_phone`, `city`, `kode_pos`, `payment_method`, `ekspedisi`, `tracking_id`, `transaction_time`, `payment_limit`, `status`, `gambar`) VALUES
	('INV-40169245', '11', 'husnu ', 'husnutazkiyaulwah@gmail.com', 'ppp', '085777446980', 'ppp', 'pppp', 'Direct Bank Transfer', 'JNE', '717127814372', '2023-12-08 14:29:55', '2023-12-09 14:29:55', '1', 'elore1.jpeg'),
	('INV-99232152', '11', 'husnu ', 'husnutazkiyaulwah@gmail.com', 'test', '0000', 'p', 'p', 'Direct Bank Transfer', 'JNE', '75696343747', '2023-12-09 11:52:56', '2023-12-10 11:52:56', '1', 'elore2.jpeg');

-- Dumping structure for table db-ulwah.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db-ulwah.user: ~0 rows (approximately)
DELETE FROM `user`;
INSERT INTO `user` (`id_user`, `nama_user`, `email`, `password`, `level`, `avatar`) VALUES
	(6, 'Helpdesk Shoppify', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1', 'user.png'),
	(11, 'husnu ', 'husnutazkiyaulwah@gmail.com', 'b5300c22563f7a6285c744dc09c5662e', '2', 'user.png');

-- Dumping structure for trigger db-ulwah.pesanan_penjualan
DROP TRIGGER IF EXISTS `pesanan_penjualan`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `cart` FOR EACH ROW BEGIN
	UPDATE product SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
