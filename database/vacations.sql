-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 12:31 PM
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
-- Database: `vacations`
--
CREATE DATABASE IF NOT EXISTS `vacations` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vacations`;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `userId` char(36) DEFAULT NULL,
  `vacationId` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleId` int(11) NOT NULL,
  `roleName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleId`, `roleName`) VALUES
(1, 'USER'),
(2, 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` char(36) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `email`, `password`, `roleId`) VALUES
('7cc53449-9b95-49fa-8093-b2e0885cd03e', 'Daniel', 'Alexandrov', 'danik20021@gmail.com', '130e714e86f6d2da02cab0e6b38a1e6d', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vacations`
--

CREATE TABLE `vacations` (
  `vacationId` varchar(36) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vacations`
--

INSERT INTO `vacations` (`vacationId`, `destination`, `description`, `startDate`, `endDate`, `price`, `image`) VALUES
('21b69409-e991-4be0-a1c0-a2c1e157614a', 'Cape town, South Africa', 'Cape Town is the legislative capital of South Africa. It is the country\'s oldest city and the seat of the Parliament of South Africa. It is the country\'s second-largest city, after Johannesburg, and the largest in the Western Cape', '2024-06-17', '2024-06-22', 1800, 'dace9c19-288e-41f7-8dee-0657d9f2e25e.jpg'),
('381ba848-4d5b-4d28-b936-acb379fa1a78', 'Amalfi, Italy', 'Amalfi is a town and comune in the province of Salerno, in the region of Campania, Italy, on the Gulf of Salerno.', '2024-08-01', '2024-08-10', 1800, 'e066f7e9-af46-4038-9c91-7c682b693f97.jpg'),
('4024d09f-4b26-4dde-a150-4572802b2b80', 'Amsterdam, Netherlands', 'Amsterdam is the capital and largest city in the European country of the Netherlands. Amsterdam is famous for its canals and dikes.', '2024-08-12', '2024-08-15', 2350, '0a496876-3ce9-49ec-8cfe-0a9d0e2c382b.jpg'),
('4c7773a7-ea8f-473b-b85c-c2585642bf0f', 'Prague, Czech Republic', 'Lying at the heart of Europe, it is one of the continent\'s finest cities and the major Czech economic and cultural centre. The city has a rich architectural heritage that reflects both the uncertain currents of history in Bohemia and an urban life extendi', '2024-07-18', '2024-07-25', 2100, '92912faf-db60-43c7-b777-80222e9b8a90.jpg'),
('8632bdf2-47af-42a3-bffd-c063c9a32827', 'Bangkok, Thailand', 'The metropolis is a bustling, crowded city, with temples, factories, shops, and homes juxtaposed along its roads and canals. It is also a major tourist destination, noted for bountiful cultural attractions', '2024-06-17', '2024-06-22', 1700, '410b457c-3670-40e0-99ed-053b03381a04.jpg'),
('95573a17-a6a0-4d47-a741-3e3fdea7e6f7', 'London, England', '\r\nLondon is the capital and largest city of both England and the United Kingdom, with a population of around 8.8 million, and its metropolitan area is the largest in Western Europe, with a population of 14.9 million.', '2024-06-11', '2024-06-15', 1300, 'e9d5de22-dcad-4080-be31-55da3f777db6.jpg'),
('a4f971f1-d8a1-4a9e-a147-32b9a57c8089', 'Tokyo, Japan', 'Tokyo is the administrative, cultural, financial, commercial, and educational centre of Japan and the focus of an extensive urban complex that includes Kawasaki and Yokohama. Attractions include the Imperial Palace.', '2024-07-09', '2024-07-20', 3500, 'c6150979-4612-4ebe-9d4d-2e5edcb91551.jpg'),
('afda57db-b13f-4c01-9de7-e46ab2ebf809', 'Barcelona, Spain', 'It is Spain\'s major Mediterranean port and commercial centre and is famed for its individuality, cultural interest, and physical beauty. On his visit to the city in 1862, Hans Christian Andersen remarked that Barcelona was the “Paris of Spain.”', '2024-10-01', '2024-10-10', 3200, '605a8549-b405-47af-9f0a-767258bb6ead.jpg'),
('c2fb98e4-7234-4c94-ae8a-6f9eebe0fd40', 'Rome Italy', 'Rome is often referred to as the City of Seven Hills due to its geographic location, and also as the "Eternal City". Rome is generally considered to be the cradle of Western civilization and Western Christian culture, and the centre of the Catholic Church', '2024-06-11', '2024-06-15', 2500, '675c3f28-4321-42a2-abb3-494107bee261.jpg'),
('dd6c9b41-a5e0-464f-931a-075ce9f20717', 'Dubai, UAE', 'Dubai is a city and emirate in the United Arab Emirates known for luxury shopping, ultramodern architecture and a lively nightlife scene. Burj Khalifa, an 828m-tall tower, dominates the skyscraper-filled skyline. At its foot lies Dubai Fountain, with jets', '2024-09-10', '2024-09-16', 2500, 'fb48191d-6540-4fc9-a58d-847e2a98b983.jpg'),
('e7420625-2e46-484c-96fd-ee016cf64215', 'Nice, France', 'Nice, seaport city, Mediterranean tourist centre, and capital of Alpes-Maritimes département, Provence–Alpes–Côte-d’Azur région, southeastern France. The city is located on the Baie (bay) des Anges, 20 miles (32 km) from the Italian border', '2024-06-19', '2024-06-26', 1800, 'b555f00d-2369-47d8-84e2-b64bb19e15bb.jpeg'),
('ec6b8e45-1a5c-489e-ba8a-6309d30ffcdd', 'Sydney, Australia', 'Sydney, city, capital of the state of New South Wales, Australia. Located on Australia\'s southeastern coast, Sydney is the country\'s largest city and, with its magnificent harbour.', '2024-07-04', '2024-07-18', 1750, '8d89f94c-0320-474e-b262-124718e7349c.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD KEY `vacationId` (`vacationId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD KEY `roleId` (`roleId`);

--
-- Indexes for table `vacations`
--
ALTER TABLE `vacations`
  ADD PRIMARY KEY (`vacationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;