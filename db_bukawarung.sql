-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 10:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Ravi Sogood', 'admin', '0192023a7bbd73250516f069df18b500', '+6282217604816', 'ravi@gmail.com', 'Jl. petojo , Sawahan Kec Rengel Kab Tuban');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(7, 'Laptop'),
(8, 'Handphone'),
(9, 'Pakaian Pria'),
(10, 'Sayur');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_create` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_create`) VALUES
(6, 10, 'Pakaian Pria', 90000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam in earum harum accusamus incidunt labore quidem expedita odio laudantium qui quas, minus et deserunt dignissimos maiores dolorem libero ipsum illum, beatae corporis veritatis! Iste maiores reprehenderit in itaque ipsam consectetur sapiente fugiat, explicabo nostrum voluptatibus velit quas neque ab eos accusamus corrupti ea porro nulla at! Beatae iure labore alias eligendi sit. Soluta maxime at ratione voluptatum dolores obcaecati necessitatibus libero quis officiis delectus vero, aliquam atque omnis dolor eius nulla odit, porro doloribus amet! Temporibus eaque libero ab deleniti quas maxime accusantium vel excepturi quaerat quos suscipit necessitatibus, facere debitis perspiciatis culpa nesciunt dolorum labore, cumque placeat nemo illum minus? Repellendus consectetur atque quidem esse impedit amet laudantium sequi ut, quisquam commodi labore assumenda dolorum ratione debitis totam eaque non architecto quas. At delectus labore perspiciatis beatae ipsum laudantium natus quasi, dicta incidunt, deserunt magnam minima recusandae veritatis ipsam distinctio quidem impedit exercitationem accusamus! Blanditiis quis voluptatem optio quia distinctio voluptatum error autem doloremque rerum eveniet. Ad dolore neque, quos optio molestiae unde architecto reprehenderit veritatis repellendus ratione hic nihil, voluptatum natus. Adipisci amet nobis error enim eaque nisi mollitia. Eum perferendis alias in qui voluptatem quas deserunt tenetur.', 'produk1717672044.jpg', 1, '2024-06-06 11:07:24'),
(7, 10, 'Pakaian Pria sawdas', 90000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam in earum harum accusamus incidunt labore quidem expedita odio laudantium qui quas, minus et deserunt dignissimos maiores dolorem libero ipsum illum, beatae corporis veritatis! Iste maiores reprehenderit in itaque ipsam consectetur sapiente fugiat, explicabo nostrum voluptatibus velit quas neque ab eos accusamus corrupti ea porro nulla at! Beatae iure labore alias eligendi sit. Soluta maxime at ratione voluptatum dolores obcaecati necessitatibus libero quis officiis delectus vero, aliquam atque omnis dolor eius nulla odit, porro doloribus amet! Temporibus eaque libero ab deleniti quas maxime accusantium vel excepturi quaerat quos suscipit necessitatibus, facere debitis perspiciatis culpa nesciunt dolorum labore, cumque placeat nemo illum minus? Repellendus consectetur atque quidem esse impedit amet laudantium sequi ut, quisquam commodi labore assumenda dolorum ratione debitis totam eaque non architecto quas. At delectus labore perspiciatis beatae ipsum laudantium natus quasi, dicta incidunt, deserunt magnam minima recusandae veritatis ipsam distinctio quidem impedit exercitationem accusamus! Blanditiis quis voluptatem optio quia distinctio voluptatum error autem doloremque rerum eveniet. Ad dolore neque, quos optio molestiae unde architecto reprehenderit veritatis repellendus ratione hic nihil, voluptatum natus. Adipisci amet nobis error enim eaque nisi mollitia. Eum perferendis alias in qui voluptatem quas deserunt tenetur.', 'produk1717672149.jpg', 1, '2024-06-06 11:09:09'),
(8, 9, 'Dasi', 90000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam in earum harum accusamus incidunt labore quidem expedita odio laudantium qui quas, minus et deserunt dignissimos maiores dolorem libero ipsum illum, beatae corporis veritatis! Iste maiores reprehenderit in itaque ipsam consectetur sapiente fugiat, explicabo nostrum voluptatibus velit quas neque ab eos accusamus corrupti ea porro nulla at! Beatae iure labore alias eligendi sit. Soluta maxime at ratione voluptatum dolores obcaecati necessitatibus libero quis officiis delectus vero, aliquam atque omnis dolor eius nulla odit, porro doloribus amet! Temporibus eaque libero ab deleniti quas maxime accusantium vel excepturi quaerat quos suscipit necessitatibus, facere debitis perspiciatis culpa nesciunt dolorum labore, cumque placeat nemo illum minus? Repellendus consectetur atque quidem esse impedit amet laudantium sequi ut, quisquam commodi labore assumenda dolorum ratione debitis totam eaque non architecto quas. At delectus labore perspiciatis beatae ipsum laudantium natus quasi, dicta incidunt, deserunt magnam minima recusandae veritatis ipsam distinctio quidem impedit exercitationem accusamus! Blanditiis quis voluptatem optio quia distinctio voluptatum error autem doloremque rerum eveniet. Ad dolore neque, quos optio molestiae unde architecto reprehenderit veritatis repellendus ratione hic nihil, voluptatum natus. Adipisci amet nobis error enim eaque nisi mollitia. Eum perferendis alias in qui voluptatem quas deserunt tenetur.', 'produk1717672170.jpg', 1, '2024-06-06 11:09:30'),
(9, 10, 'Hp', 90000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam in earum harum accusamus incidunt labore quidem expedita odio laudantium qui quas, minus et deserunt dignissimos maiores dolorem libero ipsum illum, beatae corporis veritatis! Iste maiores reprehenderit in itaque ipsam consectetur sapiente fugiat, explicabo nostrum voluptatibus velit quas neque ab eos accusamus corrupti ea porro nulla at! Beatae iure labore alias eligendi sit. Soluta maxime at ratione voluptatum dolores obcaecati necessitatibus libero quis officiis delectus vero, aliquam atque omnis dolor eius nulla odit, porro doloribus amet! Temporibus eaque libero ab deleniti quas maxime accusantium vel excepturi quaerat quos suscipit necessitatibus, facere debitis perspiciatis culpa nesciunt dolorum labore, cumque placeat nemo illum minus? Repellendus consectetur atque quidem esse impedit amet laudantium sequi ut, quisquam commodi labore assumenda dolorum ratione debitis totam eaque non architecto quas. At delectus labore perspiciatis beatae ipsum laudantium natus quasi, dicta incidunt, deserunt magnam minima recusandae veritatis ipsam distinctio quidem impedit exercitationem accusamus! Blanditiis quis voluptatem optio quia distinctio voluptatum error autem doloremque rerum eveniet. Ad dolore neque, quos optio molestiae unde architecto reprehenderit veritatis repellendus ratione hic nihil, voluptatum natus. Adipisci amet nobis error enim eaque nisi mollitia. Eum perferendis alias in qui voluptatem quas deserunt tenetur.', 'produk1717672188.jpg', 0, '2024-06-06 11:09:48'),
(10, 9, 'HandsFree', 90000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam in earum harum accusamus incidunt labore quidem expedita odio laudantium qui quas, minus et deserunt dignissimos maiores dolorem libero ipsum illum, beatae corporis veritatis! Iste maiores reprehenderit in itaque ipsam consectetur sapiente fugiat, explicabo nostrum voluptatibus velit quas neque ab eos accusamus corrupti ea porro nulla at! Beatae iure labore alias eligendi sit. Soluta maxime at ratione voluptatum dolores obcaecati necessitatibus libero quis officiis delectus vero, aliquam atque omnis dolor eius nulla odit, porro doloribus amet! Temporibus eaque libero ab deleniti quas maxime accusantium vel excepturi quaerat quos suscipit necessitatibus, facere debitis perspiciatis culpa nesciunt dolorum labore, cumque placeat nemo illum minus? Repellendus consectetur atque quidem esse impedit amet laudantium sequi ut, quisquam commodi labore assumenda dolorum ratione debitis totam eaque non architecto quas. At delectus labore perspiciatis beatae ipsum laudantium natus quasi, dicta incidunt, deserunt magnam minima recusandae veritatis ipsam distinctio quidem impedit exercitationem accusamus! Blanditiis quis voluptatem optio quia distinctio voluptatum error autem doloremque rerum eveniet. Ad dolore neque, quos optio molestiae unde architecto reprehenderit veritatis repellendus ratione hic nihil, voluptatum natus. Adipisci amet nobis error enim eaque nisi mollitia. Eum perferendis alias in qui voluptatem quas deserunt tenetur.', 'produk1717672214.jpeg', 1, '2024-06-06 11:10:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
