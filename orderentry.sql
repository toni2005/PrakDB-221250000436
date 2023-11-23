-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 Nov 2023 pada 03.41
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orderentry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `cust_id` char(5) NOT NULL,
  `cust_name` varchar(25) DEFAULT NULL,
  `cust_address` varchar(30) DEFAULT NULL,
  `cust_city` varchar(25) DEFAULT NULL,
  `cust_state` varchar(5) DEFAULT NULL,
  `cust_zip` varchar(5) DEFAULT NULL,
  `cust_country` varchar(20) DEFAULT NULL,
  `cust_contact` varchar(25) DEFAULT NULL,
  `cust_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_name`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_country`, `cust_contact`, `cust_email`) VALUES
('10002', 'Mouse House', 'Gejayan Yogya', 'Columbus', 'OH', '43333', 'INA', 'Jerry Mouse', NULL),
('10003', 'Wascals', '1 Sunny Place', 'Muncie', 'IN', '42222', 'USA', 'Jim Jones', 'rabbit@wascally.com'),
('10004', 'Yosemite Place', '829 Riverside Drive', 'Phoenix', 'AZ', '88888', 'USA', 'Y Sam', 'sam@yosemite.com'),
('10005', 'E Fudd', '4545 53rd Street', 'Chicago', 'IL', '45454', 'USA', 'E Fudd', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orderitems`
--

CREATE TABLE `orderitems` (
  `order_num` int(11) NOT NULL,
  `order_item` int(11) NOT NULL,
  `prod_id` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orderitems`
--

INSERT INTO `orderitems` (`order_num`, `order_item`, `prod_id`, `quantity`) VALUES
(20005, 1, 'ANV01', 10),
(20005, 2, 'ANV02', 3),
(20005, 3, 'tnt2', 5),
(20005, 4, 'FB', 1),
(20006, 1, 'JP2000', 1),
(20007, 1, 'TNT2', 100),
(20008, 1, 'FC', 50),
(20009, 1, 'FB', 1),
(20009, 2, 'OL1', 1),
(20009, 3, 'SLING', 1),
(20009, 4, 'ANV03', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `order_num` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `cust_id` varchar(10) DEFAULT NULL,
  `fakultas` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `productnotes`
--

CREATE TABLE `productnotes` (
  `note_id` char(3) NOT NULL,
  `id_produk` varchar(10) DEFAULT NULL,
  `note_date` date NOT NULL,
  `note_text` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `prod_id` varchar(10) NOT NULL,
  `vend_id` char(4) NOT NULL,
  `prod_name` varchar(25) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`prod_id`, `vend_id`, `prod_name`, `prod_price`, `prod_desc`) VALUES
('ANV02', '1001', '1 ton anvil', 10, '1 ton anvil, black, complete with handy hook and carrying case'),
('ANV03', '1001', '2 ton anvil ', 15, '2 ton anvil, black, complete with handy hook and carrying case'),
('DTNTR', '1003', 'Detonator', 10, 'Detonator (plunger powered), fuses not include'),
('FB', '1003', 'Bird seed', 10, 'large bag (suitable for road runners)'),
('FC', '1003', 'Carrots', 3, 'Caroots (rabbit hunting season only)'),
('FU1', '1002', 'FUses', 3, '1 dozen, extra long'),
('JP1000', '1005', 'JetPack 1000', 35, 'JetPack 1000, intended for single use'),
('JP2000', '1005', 'JetPack 2000', 55, 'JetPack 2000, multi-use'),
('OL1', '1002', 'Oil can', 9, 'Oil can, red'),
('SAFE', '1003', 'Safe', 50, 'Safe with combination lock'),
('SLING', '1003', 'sling', 4, 'Sling, one size fitz all'),
('TNT1', '1003', 'TNT (1 stick)', 3, 'TNT, red, single stick'),
('TNT2', '1003', 'TNT (5 sticks)', 10, 'TNT, red, pack of 10 sticks');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendors`
--

CREATE TABLE `vendors` (
  `vend_id` char(4) NOT NULL,
  `vend_name` varchar(25) NOT NULL,
  `vend_address` varchar(30) DEFAULT NULL,
  `vend_city` varchar(20) DEFAULT NULL,
  `vend_state` varchar(5) DEFAULT NULL,
  `vend_zip` varchar(7) DEFAULT NULL,
  `vend_country` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `vendors`
--

INSERT INTO `vendors` (`vend_id`, `vend_name`, `vend_address`, `vend_city`, `vend_state`, `vend_zip`, `vend_country`) VALUES
('1001', 'Anvils R Us', '123 Main Street', 'Southfield', 'MI', '48075', 'USA'),
('1002', 'LT Supplies', '500 Park Street', 'Anytown', 'OH', '44333', 'USA'),
('1003', 'ACME', '555 High Street', 'Los Angeles', 'CA', '90046', 'USA'),
('1004', 'Furball Inc.', '1000 5th Avenue', 'New York', 'NY', '111111', 'USA'),
('1005', 'Jet Set', '42 Galaxy Road', 'London', NULL, 'N16 6PS', 'England'),
('1006', 'Jouets Et Ours', '1 Rue Amusement', 'Paris', NULL, '45678', 'France');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`order_num`,`order_item`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_num`);

--
-- Indexes for table `productnotes`
--
ALTER TABLE `productnotes`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `prod_id` (`id_produk`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vend_id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `productnotes`
--
ALTER TABLE `productnotes`
  ADD CONSTRAINT `productnotes_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `products` (`prod_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
