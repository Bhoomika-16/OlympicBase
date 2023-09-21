-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 08, 2022 at 12:33 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olympic_base`
--

-- --------------------------------------------------------

--
-- Table structure for table `athletes`
--

DROP TABLE IF EXISTS `athletes`;
CREATE TABLE IF NOT EXISTS `athletes` (
  `Aid` int(5) NOT NULL AUTO_INCREMENT,
  `Aname` varchar(100) NOT NULL,
  `Country` varchar(4) NOT NULL,
  `Sportid` int(5) NOT NULL,
  PRIMARY KEY (`Aid`),
  KEY `Cn_fk` (`Country`),
  KEY `Sp_fk` (`Sportid`)
) ENGINE=InnoDB AUTO_INCREMENT=5205 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `athletes`
--

INSERT INTO `athletes` (`Aid`, `Aname`, `Country`, `Sportid`) VALUES
(5111, 'Simon Fairweather', 'AUS', 1010),
(5152, 'Mete Gazoz\r\n', 'TUR', 1010),
(5153, 'San An\r\n', 'KOR', 1011),
(5154, 'Neeraj Chopra\r\n', 'IND', 1113),
(5155, 'Shiying Liu', 'CHN', 1114),
(5156, 'Ryan Crouser\r\n', 'USA', 1117),
(5157, 'Lijiao Gong\r\n', 'CHN', 1118),
(5158, 'Viktor Axelsen\r\n', 'DNK', 1211),
(5163, 'Yu Fei Chen', 'CHN', 1212),
(5164, 'Yu Fei Chen', 'CHN', 1212),
(5165, 'Joseph Choong\r\n', 'GBR', 1411),
(5166, 'Kate French\r\n', 'GBR', 1412),
(5167, 'Victor Wunderle\r\n', 'USA', 1010),
(5168, 'Nam-Soon Kim', 'KOR', 1011),
(5169, 'Mirella Maniani-Tzelili', 'GRC', 1114),
(5170, 'Adam Nelson', 'USA', 1117),
(5171, 'Larisa Peleshenko', 'RUS', 1118),
(5172, 'Hendrawan', 'IDN', 1211),
(5173, 'Camilla Martin', 'DNK', 1212),
(5174, 'Gabor Balogh', 'DNK', 1411),
(5175, 'Emily De Riel', 'USA', 1412),
(5176, 'Tommy Haas', 'GER', 1511),
(5177, 'Yelena Dementyeva', 'RUS', 1512),
(5178, 'Steve Backley\r\n', 'GBR', 1113),
(5179, 'Yuzuru Hanyu\r\n\r\n', 'JPN', 2112),
(5180, 'Alina Zagitova', 'RUS', 2112),
(5181, 'David Gleirscher', 'AUT', 2121),
(5182, 'Natalie Geisenberger', 'GER', 2122),
(5183, 'Sungbin Yun', 'KOR', 2131),
(5184, 'Lizzy Yarnold\r\n', 'GBR', 2132),
(5185, 'Andreas Wellinger', 'GER', 2151),
(5186, 'Maren Lundby', 'NOR', 2152),
(5187, 'Havard Lorentzen', 'NOR', 2161),
(5188, 'Nao Kodaira', 'JPN', 2162),
(5189, 'Alexei Yagudin', 'RUS', 2111),
(5190, 'Sarah Hughes', 'USA', 2112),
(5191, 'Armin Zoeggeler', 'ITA', 2121),
(5192, 'Sylke Otto', 'GER', 2122),
(5193, 'Sang-Hwa Lee\r\n', 'KOR', 2162),
(5194, 'Tristan Gale', 'USA', 2132),
(5195, 'Simon Ammann', 'CHE', 2151),
(5196, 'Casey Fitzrandolph', 'USA', 2161),
(5197, 'Catriona Le May Doan', 'CAN', 2162),
(5198, 'Jacqueline Loelling\r\n', 'GER', 2132),
(5199, 'Adelina Sotnikova', 'RUS', 2112),
(5200, 'Felix Loch', 'GER', 2121),
(5201, 'Min Kyu Cha', 'KOR', 2161),
(5202, 'Alexander Tretyakov', 'RUS', 2131),
(5203, 'Saina Nehwal', 'IND', 1212),
(5204, 'Pusarla Venkata Sindhu\r\n', 'IND', 1212);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `C_id` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Message` text NOT NULL,
  PRIMARY KEY (`C_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`C_id`, `Name`, `Message`) VALUES
(1, 'Bhoomika', 'Thank you for viewing our website');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `Countryabb` varchar(5) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Goldmedals` int(10) NOT NULL,
  `Silvermedals` int(10) NOT NULL,
  `Bronzemedals` int(10) NOT NULL,
  `Totalmedals` int(10) NOT NULL,
  PRIMARY KEY (`Countryabb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Countryabb`, `Country`, `Goldmedals`, `Silvermedals`, `Bronzemedals`, `Totalmedals`) VALUES
('AFG', 'Afghanistan', 0, 0, 2, 2),
('ARG', 'Argentina', 21, 26, 30, 77),
('ARM', 'Armenia', 2, 8, 8, 18),
('AUS', 'Australia', 169, 178, 215, 562),
('AUT', 'Austria', 83, 115, 128, 326),
('AZE', 'Azerbaijan', 7, 14, 28, 49),
('BEL', 'Belgium', 44, 56, 61, 161),
('BGR', 'Bulgaria', 55, 90, 85, 230),
('BHS', 'Bahamas', 8, 2, 6, 16),
('BLR', 'Belarus', 21, 35, 47, 103),
('BRA', 'Brazil', 37, 42, 71, 150),
('CAN', 'Canada', 144, 172, 209, 525),
('CHE', 'Switzerland', 109, 124, 125, 358),
('CHL', 'Chile', 2, 7, 4, 13),
('CHN', 'China', 275, 227, 194, 696),
('COL', 'Columbia', 5, 13, 16, 34),
('CUB', 'Cuba', 85, 71, 85, 241),
('CZE', 'Czech Republic', 28, 32, 38, 98),
('DNK', 'Denmark', 48, 79, 79, 206),
('DZA', 'Algeria', 5, 4, 8, 17),
('EGY', 'Egypt', 8, 11, 19, 38),
('ESP', 'Spain', 49, 72, 50, 171),
('EST', 'Estonia', 14, 11, 18, 43),
('ETH', 'Ethiopia', 23, 12, 23, 58),
('FIN', 'Finland', 144, 148, 180, 472),
('FRA', 'France', 258, 289, 327, 874),
('GBR', 'Great Britain', 296, 323, 331, 950),
('GEO', 'Georgia', 10, 12, 18, 40),
('GER', 'Germany', 293, 293, 306, 892),
('GRC', 'Greece', 35, 45, 41, 121),
('HKG', 'Hongkong', 2, 3, 4, 9),
('HRV', 'Croatia', 18, 19, 15, 52),
('HUN', 'Hungary', 182, 156, 180, 518),
('IDN', 'Indonesia', 8, 14, 15, 37),
('IND', 'India', 10, 9, 16, 35),
('IRL', 'Ireland', 11, 10, 14, 35),
('IRN', 'Iran', 24, 23, 29, 76),
('ISL', 'Iceland', 0, 2, 2, 4),
('ISR', 'Israel', 3, 1, 9, 13),
('ITA', 'Italy', 257, 224, 261, 742),
('JAM', 'Jamaica', 26, 36, 25, 87),
('JOR', 'Jordan', 1, 1, 1, 3),
('JPN', 'Japan', 183, 172, 200, 555),
('KAZ', 'Kazakhstan', 16, 24, 40, 80),
('KEN', 'Kenya', 35, 42, 36, 113),
('KOR', 'South Korea', 217, 116, 114, 357),
('KWT', 'Kuwait', 0, 0, 3, 3),
('LKA', 'Sri Lanka', 0, 2, 0, 2),
('LTU', 'Lithuania', 6, 7, 13, 26),
('LVA', 'Latvia', 5, 14, 11, 30),
('MAR', 'Morocco', 7, 5, 12, 24),
('MEX', 'Mexico', 13, 24, 36, 73),
('MNG', 'Mongolia', 2, 11, 17, 30),
('MYS', 'Malaysia', 0, 8, 5, 13),
('NGA', 'Nigeria', 3, 11, 13, 27),
('NLD', 'Netherlands', 140, 148, 163, 451),
('NOR', 'Norway', 192, 176, 160, 528),
('NZL', 'New Zealand', 53, 34, 53, 140),
('PAK', 'Pakistan', 3, 3, 4, 10),
('PAN', 'Panama', 1, 0, 2, 3),
('PER', 'Peru', 1, 3, 0, 4),
('PHL', 'Phillipines', 1, 5, 8, 14),
('POL', 'Poland', 79, 96, 145, 320),
('PRK', 'North Korea', 16, 17, 23, 56),
('PRT', 'Portugal', 5, 9, 14, 28),
('QAT', 'Qatar', 2, 1, 5, 8),
('ROU', 'Romania', 90, 97, 122, 309),
('RUS', 'Russia', 196, 164, 187, 547),
('SAU', 'Saudi Arabia', 0, 2, 2, 4),
('SGP', 'Singapore', 1, 2, 2, 5),
('SRB', 'Serbia', 6, 7, 11, 24),
('SVK', 'Slovakia', 13, 18, 9, 40),
('SVN', 'Slovania', 10, 14, 21, 45),
('SWE', 'Sweden', 205, 222, 234, 661),
('THA', 'Thailand', 10, 8, 17, 35),
('TUR', 'Turkey', 41, 26, 37, 104),
('UAE', 'UAE', 1, 0, 1, 2),
('UGA', 'Uganda', 4, 4, 3, 11),
('UK', 'United Kingdom', 296, 320, 332, 948),
('UKR', 'Ukraine', 38, 37, 72, 147),
('URY', 'Uruguay', 2, 2, 6, 10),
('USA', 'United Staes', 1180, 959, 841, 2980),
('UZB', 'Uzbekstan', 11, 6, 20, 37),
('VEN', 'Venezuela', 3, 7, 9, 19),
('VNM', 'Vietnam', 1, 3, 1, 5),
('ZAF', 'South Africa', 27, 33, 29, 89);

--
-- Triggers `country`
--
DROP TRIGGER IF EXISTS `cnupdate`;
DELIMITER $$
CREATE TRIGGER `cnupdate` AFTER UPDATE ON `country` FOR EACH ROW INSERT INTO country(Countryabb,Country) VALUES (NEW.Countryabb,NEW.Country)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(15) NOT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Password` (`Password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('BhoomikaB', 'Bbkp16j'),
('Gagana', 'Gagana22');

-- --------------------------------------------------------

--
-- Table structure for table `olympic_sports`
--

DROP TABLE IF EXISTS `olympic_sports`;
CREATE TABLE IF NOT EXISTS `olympic_sports` (
  `Year` int(5) NOT NULL,
  `Games` varchar(10) NOT NULL,
  `Place` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Athlete` int(10) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Year`) USING BTREE,
  KEY `Country` (`Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olympic_sports`
--

INSERT INTO `olympic_sports` (`Year`, `Games`, `Place`, `Country`, `Athlete`, `Date`) VALUES
(2000, 'Summer', 'Sydney', 'AUS', 10651, '2000-09-15'),
(2002, 'Winter', 'Salt Lake City', 'USA', 2399, '2002-02-08'),
(2004, 'Summer', 'Athens', 'GRC', 10625, '2004-08-13'),
(2006, 'Winter', 'Turin', 'ITA', 2508, '2006-02-10'),
(2008, 'Summer', 'Beijing', 'CHN', 10942, '2008-08-08'),
(2010, 'Winter', 'Vancouver', 'CAN', 2566, '2010-02-12'),
(2012, 'Summer', 'London', 'UK', 10568, '2012-07-27'),
(2014, 'Winter', 'Sochi', 'RUS', 2780, '2014-02-07'),
(2016, 'Summer', 'Rio', 'BRA', 11238, '2016-08-05'),
(2018, 'Winter', 'Pyeongchang', 'PRK', 2833, '2018-02-09'),
(2020, 'Summer', 'Tokyo', 'JPN', 11417, '2020-07-23'),
(2022, 'Winter', 'Beijing', 'CHN', 0, '2020-02-04'),
(2024, 'Summer', 'Paris', 'FRA', 0, '2024-07-26'),
(2026, 'Winter', 'Milano Cortina', 'ITA', 0, '2026-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
CREATE TABLE IF NOT EXISTS `sports` (
  `Sportid` int(5) NOT NULL,
  `Sname` varchar(25) NOT NULL,
  `Event` varchar(30) NOT NULL,
  PRIMARY KEY (`Sportid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`Sportid`, `Sname`, `Event`) VALUES
(1010, 'archery', 'men individual'),
(1011, 'archery', 'women individual'),
(1113, 'athletics', 'men javelin throw'),
(1114, 'athletics', 'women javline throw'),
(1117, 'athletics', 'men shotput'),
(1118, 'athletics', 'women shotput'),
(1211, 'badminton', 'men single'),
(1212, 'badminton', 'women single'),
(1411, 'modern pentathlon', 'men individual'),
(1412, 'modern pentathlon', 'women individual'),
(1511, 'tennis', 'men single'),
(1512, 'tennis', 'women single'),
(2111, 'figure skating', 'men single'),
(2112, 'figure skating', 'women single'),
(2121, 'luge', 'men single'),
(2122, 'luge', 'women single'),
(2131, 'skeleton', 'men '),
(2132, 'skeleton', 'women'),
(2151, 'ski jumping', 'men NH individual'),
(2152, 'ski jumping', 'women NH individual'),
(2161, 'speed skating', 'men 500m'),
(2162, 'speed skating', 'women 500m');

-- --------------------------------------------------------

--
-- Table structure for table `summer_olympic`
--

DROP TABLE IF EXISTS `summer_olympic`;
CREATE TABLE IF NOT EXISTS `summer_olympic` (
  `Soid` int(5) NOT NULL AUTO_INCREMENT,
  `Sportid` int(5) NOT NULL,
  `Year` int(5) NOT NULL,
  `Gold` varchar(100) NOT NULL,
  `Silver` varchar(100) NOT NULL,
  `Bronze` varchar(100) NOT NULL,
  PRIMARY KEY (`Soid`),
  KEY `Year` (`Year`,`Sportid`),
  KEY `SID_fk` (`Sportid`)
) ENGINE=InnoDB AUTO_INCREMENT=1108 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `summer_olympic`
--

INSERT INTO `summer_olympic` (`Soid`, `Sportid`, `Year`, `Gold`, `Silver`, `Bronze`) VALUES
(1001, 1010, 2000, 'Simon Fairweather', 'Victor Wunderle', 'Wietse Van Alten'),
(1002, 1011, 2000, 'Mi-Jin Yun', 'Nam-Soon Kim', 'Soo-Nyung Kim'),
(1038, 1113, 2000, 'Jan Železný\r\n', 'Steve Backley', 'Sergey Makarov'),
(1039, 1114, 2000, 'Trine Hattestad\r\n', 'Mirella Maniani-Tzelili\r\n', 'Osleidys Menendez\r\n'),
(1040, 1117, 2000, 'Arsi Harju\r\n', 'Adam Nelson\r\n', 'Adam Nelson\r\n'),
(1041, 1118, 2000, 'Yanina Pravalinskay-Karolchyk\r\n', 'Larisa Peleshenko\r\n', 'Astrid Kumbernuss\r\n'),
(1042, 1211, 2000, 'Xinpeng Ji\r\n', 'Hendrawan\r\n', 'Xuanze Xia\r\n'),
(1043, 1212, 2000, 'Zhichao Gong\r\n', 'Camilla Martin\r\n', 'Zhaoying Ye\r\n'),
(1044, 1411, 2000, 'Dmitry Svatkovsky\r\n', 'Gabor Balogh\r\n', 'Pavel Dovgal\r\n'),
(1045, 1412, 2000, 'Stephanie Cook\r\n', 'Emily De Riel\r\n', 'Kate Allenby\r\n'),
(1046, 1511, 2000, 'Eugueni Kafelnikov\r\n', 'Tommy Haas\r\n', 'Arnaud Di Pasquale\r\n'),
(1047, 1512, 2000, 'Venus Williams\r\n', 'Yelena Dementyeva\r\n', 'Monica Seles\r\n'),
(1048, 1010, 2004, 'Marco Galiazzo\r\n', 'Hiroshi Yamamoto\r\n', 'Tim Cuddihy\r\n'),
(1049, 1011, 2000, 'Sung-Hyun Park\r\n', 'Sung Jin Lee\r\n', 'Alison Williamson\r\n'),
(1050, 1113, 2004, 'Andreas Thorkildsen\r\n', 'Vadims Vasilevskis\r\n', 'Sergey Makarov\r\n'),
(1051, 1114, 2004, 'Osleidys Menendez\r\n', 'Steffi Nerius\r\n', 'Mirella Maniani-Tzelili\r\n'),
(1052, 1117, 2004, 'Adam Nelson\r\n', 'Joachim Broechner Olsen\r\n', 'Manuel Martinez\r\n'),
(1053, 1118, 2004, 'Yumileidi Cumba\r\n', 'Nadine Kleinert\r\n', 'NULL'),
(1054, 1211, 2004, 'Taufik Hidayat\r\n', 'Seung-Mo Shon\r\n', 'Sony Dwi Kuncoro\r\n'),
(1055, 1212, 2004, 'Ning Zhang\r\n', 'Mia Audina\r\n', 'Mi Zhou\r\n'),
(1056, 1411, 2004, 'Andrey Moiseev\r\n', 'Andrejus Zadneprovskis\r\n', 'Libor Capalini\r\n'),
(1057, 1412, 2004, 'Zsuzsanna Voros\r\n', 'Elena Rublevska\r\n', 'Georgina Harland\r\n'),
(1058, 1511, 2004, 'Nicolas Massu\r\n', 'Mardy Fish\r\n', 'Fernando Gonzalez\r\n'),
(1059, 1512, 2004, 'Justine Henin-Hardenne\r\n', 'Amelie Mauresmo\r\n', 'Alicia Molik\r\n'),
(1060, 1010, 2008, 'Viktor Ruban\r\n', 'Kyung-Mo Park\r\n', 'Bair Badenov\r\n'),
(1061, 1011, 2008, 'Juan Juan Zhang\r\n', 'Sung-Hyun Park\r\n', 'Ok-Hee Yun\r\n'),
(1062, 1113, 2008, 'Andreas Thorkildsen\r\n', 'Ainars Kovals\r\n', 'Tero Pitkamaki\r\n'),
(1063, 1114, 2008, 'Barbora Spotakova\r\n', 'Christina Obergfoll\r\n', 'Goldie Sayers\r\n'),
(1064, 1117, 2008, 'Tomasz Majewski\r\n', 'Christian Cantwell\r\n', 'Dylan Armstrong\r\n'),
(1065, 1118, 2008, 'Valerie Adams\r\n', 'Misleydis Gonzalez\r\n', 'Lijiao Gong\r\n'),
(1066, 1211, 2008, 'Dan Lin\r\n', 'Chong Wei Lee\r\n', 'Jin Chen\r\n'),
(1067, 1212, 2008, 'Ning Zhang\r\n', 'Xingfang Xie\r\n', 'Maria Kristin Yulianti\r\n'),
(1068, 1411, 2008, 'Andrey Moiseev\r\n', 'Edvinas Krungolcas\r\n', 'Andrejus Zadneprovskis\r\n'),
(1069, 1412, 2008, 'Lena Schoneborn\r\n', 'Heather Fell\r\n', 'Anastasiya Samusevich-Prokopenko\r\n'),
(1070, 1511, 2008, 'Rafael Nadal\r\n', 'Fernando Gonzalez\r\n', 'Novak Djokovic\r\n'),
(1071, 1512, 2008, 'Yelena Dementyeva\r\n', 'Dinara Safina\r\n', 'Vera Zvonareva\r\n'),
(1072, 1010, 2012, 'Jin Hyek Oh\r\n', 'Takaharu Furukawa\r\n', 'Xiaoxiang Dai\r\n'),
(1073, 1011, 2012, 'Bobae Ki\r\n', 'Aida Roman\r\n', 'Mariana Avitia\r\n'),
(1074, 1113, 2012, 'Keshorn Walcott\r\n', 'Antti Ruuskanen\r\n', 'Vitezslav Vesely\r\n'),
(1075, 1114, 2012, 'Barbora Spotakova\r\n', 'Christina Obergfoll\r\n', 'Linda Stahl\r\n'),
(1076, 1117, 2012, 'Tomasz Majewski\r\n', 'David Storl\r\n', 'Reese Hoffa\r\n'),
(1077, 1118, 2012, 'Valerie Adams\r\n', 'Lijiao Gong\r\n', 'Ling Li\r\n'),
(1078, 1211, 2012, 'Dan Lin\r\n', 'Chong Wei Lee\r\n', 'Long Chen\r\n'),
(1079, 1212, 2012, 'Xuerui Li\r\n', 'Yihan Wang\r\n', 'Saina Nehwal\r\n'),
(1080, 1411, 2012, 'David Svoboda\r\n', 'Zhongrong Cao\r\n', 'Adam Marosi\r\n'),
(1081, 1412, 2012, 'Laura Asadauskaite\r\n', 'Samantha Murray\r\n', 'Yane Marques\r\n'),
(1082, 1511, 2012, 'Andy Murray\r\n', 'Roger Federer\r\n', 'Juan Martin Del Potro\r\n'),
(1083, 1512, 2012, 'Serena Williams\r\n', 'Maria Sharapova\r\n', 'Victoria Azarenka\r\n'),
(1084, 1010, 2016, 'Bonchan Ku\r\n', 'Jean-Charles Valladont\r\n', 'Brady Ellison\r\n'),
(1085, 1011, 2016, 'Hyejin Chang\r\n', 'Lisa Unruh\r\n', 'Bobae Ki\r\n'),
(1086, 1113, 2016, 'Thomas Rohler\r\n', 'Julius Yego\r\n', 'Keshorn Walcott\r\n'),
(1087, 1114, 2016, 'Sara Kolak\r\n', 'Sunette Viljoen\r\n', 'Barbora Spotakova\r\n'),
(1088, 1117, 2016, 'Ryan Crouser\r\n', 'Joe Kovacs\r\n', 'Tomas Walsh\r\n'),
(1089, 1118, 2016, 'Michelle Carter\r\n', 'Valerie Adams\r\n', 'Anita Marton\r\n'),
(1090, 1211, 2016, 'Long Chen\r\n', 'Chong Wei Lee\r\n', 'Viktor Axelsen\r\n'),
(1091, 1212, 2016, 'Carolina Marin\r\n', 'Pusarla Venkata Sindhu\r\n', 'Nozomi Okuhara\r\n'),
(1092, 1411, 2016, 'Aleksander Lesun\r\n', 'Pavlo Tymoshchenko\r\n', 'Ismael Marcelo Hernandez Uscanga\r\n'),
(1093, 1412, 2016, 'Chloe Esposito\r\n', 'Elodie Clouvel\r\n', 'Oktawia Nowacka\r\n'),
(1094, 1511, 2016, 'Andy Murray\r\n', 'Juan Martin Del Potro\r\n', 'Kei Nishikori\r\n'),
(1095, 1512, 2016, 'Monica Puig\r\n', 'Angelique Kerber\r\n', 'Angelique Kerber\r\n'),
(1096, 1010, 2020, 'Mete Gazoz\r\n', 'Mauro Nespoli\r\n', 'NULL'),
(1097, 1010, 2020, 'San An\r\n', 'NULL', 'NULL'),
(1098, 1113, 2020, 'Neeraj Chopra\r\n', 'Jakub Vadlejch\r\n', 'Vitezslav Vesely\r\n'),
(1099, 1114, 2020, 'Shiying Liu\r\n', 'Maria Andrejczyk\r\n', 'Kelsey-Lee Roberts\r\n'),
(1100, 1117, 2020, 'Ryan Crouser\r\n', 'Joe Kovacs\r\n', 'Tomas Walsh\r\n'),
(1101, 1118, 2020, 'Lijiao Gong\r\n', 'Raven Saunders\r\n', 'Valerie Adams\r\n'),
(1102, 1211, 2020, 'Viktor Axelsen\r\n', 'Long Chen\r\n', 'Anthony Sinisuka Ginting\r\n'),
(1103, 1212, 2020, 'Yu Fei Chen\r\n', 'Tzu Ying Tai\r\n', 'Pusarla Venkata Sindhu\r\n'),
(1104, 1411, 2020, 'Joseph Choong\r\n', 'Ahmed Elgendy\r\n', 'Woongtae Jun\r\n'),
(1105, 1412, 2020, 'Kate French\r\n', 'Laura Asadauskaite\r\n', 'Sarolta Kovacs\r\n'),
(1106, 1511, 2020, 'Alexander Zverev\r\n', 'Karen Khachanov\r\n', 'Pablo Carreno Busta\r\n'),
(1107, 1512, 2020, 'Belinda Bencic\r\n', 'Marketa Vondrousova\r\n', 'Elina Svitolina\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `winter_olympic`
--

DROP TABLE IF EXISTS `winter_olympic`;
CREATE TABLE IF NOT EXISTS `winter_olympic` (
  `Woid` int(5) NOT NULL AUTO_INCREMENT,
  `Sportid` int(5) NOT NULL,
  `Year` int(5) NOT NULL,
  `Gold` varchar(100) NOT NULL,
  `Silver` varchar(100) NOT NULL,
  `Bronze` varchar(100) NOT NULL,
  PRIMARY KEY (`Woid`),
  KEY `Year` (`Year`,`Sportid`),
  KEY `SID1_fk` (`Sportid`)
) ENGINE=InnoDB AUTO_INCREMENT=2053 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `winter_olympic`
--

INSERT INTO `winter_olympic` (`Woid`, `Sportid`, `Year`, `Gold`, `Silver`, `Bronze`) VALUES
(2001, 2111, 2002, 'Alexei Yagudin', 'Evgeni Viktorovich Plushenko', 'Timothy Goebel'),
(2002, 2112, 2002, 'Sarah Hughes', 'Irina Slutskaya', 'Michelle Kwan'),
(2004, 2121, 2002, 'Armin Zoeggeler\r\n', 'Georg Hackl\r\n', 'Markus Prock\r\n'),
(2005, 2122, 2002, 'Sylke Otto\r\n', 'Barbara Niedernhuber\r\n', 'Silke Kraushaar\r\n'),
(2006, 2131, 2002, 'Jim Shea, Jr.\r\n', 'Martin Rettl\r\n', 'Gregor Staehli\r\n'),
(2007, 2132, 2002, 'Tristan Gale\r\n', 'Lea Ann Parsley\r\n', 'Alex Coomber\r\n'),
(2008, 2151, 2002, 'Simon Ammann\r\n', 'Sven Hannawald\r\n', 'Adam Malysz\r\n'),
(2010, 2161, 2002, 'Casey Fitzrandolph\r\n', 'Hiroyasu Shimizu\r\n', 'Kip Carpenter\r\n'),
(2011, 2162, 2002, 'Catriona Le May Doan\r\n', 'Monique Garbrecht-Enfeldt\r\n', 'Sabine Voelker\r\n'),
(2012, 2111, 2006, 'Evgeni Viktorovich Plushenko\r\n', 'Stephane Lambiel\r\n', 'Jeffrey Buttle\r\n'),
(2013, 2112, 2006, 'Shizuka Arakawa\r\n', 'Sasha Cohen\r\n', 'Irina Slutskaya\r\n'),
(2014, 2121, 2006, 'Armin Zoeggeler\r\n', 'Albert Demchenko\r\n', 'Martins Rubenis\r\n'),
(2015, 2122, 2006, 'Sylke Otto\r\n', 'Silke Kraushaar\r\n', 'Tatjana Huefner\r\n'),
(2016, 2131, 2006, 'Duff Gibson\r\n', 'Jeff Pain\r\n', 'Gregor Staehli\r\n'),
(2017, 2132, 2006, 'Maya Pedersen\r\n', 'Shelley Rudman\r\n', 'Mellisa Hollingsworth\r\n'),
(2018, 2151, 2006, 'Lars Bystoel\r\n', 'Matti Hautamaeki\r\n', 'Roar Ljoekelsoey\r\n'),
(2020, 2161, 2006, 'Joey Cheek\r\n', 'Dmitry Dorofeyev\r\n', 'Kang Seok Lee\r\n'),
(2021, 2162, 2006, 'Svetlana Zhurova\r\n', 'Manli Wang\r\n', 'Hui Ren\r\n'),
(2022, 2111, 2010, 'Evan Lysacek\r\n', 'Evgeni Viktorovich Plushenko\r\n', 'Daisuke Takahashi\r\n'),
(2023, 2112, 2010, 'Yuna Kim\r\n', 'Mao Asada\r\n', 'Joannie Rochette\r\n'),
(2024, 2121, 2010, 'Felix Loch\r\n', 'David Moller\r\n', 'Armin Zoeggeler\r\n'),
(2025, 2122, 2010, 'Tatjana Huefner\r\n', 'Nina Reithmayer\r\n', 'Natalie Geisenberger\r\n'),
(2026, 2131, 2010, 'Jon Montgomery\r\n', 'Martins Dukurs\r\n', 'Alexander Tretyakov\r\n'),
(2027, 2132, 2010, 'Amy Williams\r\n', 'Kerstin Szymkowiak\r\n', 'Anja Huber\r\n'),
(2028, 2132, 2010, 'Amy Williams\r\n', 'Kerstin Szymkowiak\r\n\r\n', 'Anja Huber\r\n'),
(2029, 2151, 2010, 'Simon Ammann\r\n', 'Adam Malysz\r\n', 'Gregor Schlierenzauer\r\n'),
(2031, 2161, 2010, 'Tae-Bum Mo\r\n', 'Keiichiro Nagashima\r\n', 'Joji Kato\r\n'),
(2032, 2162, 2010, 'Sang-Hwa Lee\r\n', 'Jenny Wolf\r\n', 'Beixing Wang\r\n'),
(2033, 2111, 2014, 'Yuzuru Hanyu\r\n', 'Patrick Chan\r\n', 'Denis Ten\r\n'),
(2034, 2112, 2014, 'Adelina Sotnikova\r\n', 'Yuna Kim\r\n', 'Carolina Kostner\r\n'),
(2035, 2121, 2014, 'Felix Loch\r\n', 'Albert Demchenko\r\n', 'Armin Zoeggeler\r\n'),
(2036, 2122, 2014, 'Natalie Geisenberger\r\n', 'Tatjana Huefner\r\n', 'Erin Hamlin\r\n'),
(2037, 2131, 2014, 'Alexander Tretyakov\r\n', 'Martins Dukurs\r\n', 'Matt Antoine\r\n'),
(2038, 2132, 2014, 'Lizzy Yarnold\r\n', 'Noelle Pikus-Pace\r\n', 'Elena Nikitina\r\n'),
(2039, 2151, 2014, 'Kamil Stoch\r\n', 'Peter Prevc\r\n', 'Anders Bardal\r\n'),
(2040, 2152, 2014, 'Carina Vogt\r\n', 'Daniela Iraschko-Stolz\r\n', 'Coline Mattel\r\n'),
(2041, 2161, 2014, 'Michel Mulder\r\n', 'Jan Smeekens\r\n', 'Ronald Mulder\r\n'),
(2042, 2162, 2014, 'Sang-Hwa Lee\r\n', 'Olga Fatkulina\r\n', 'Margot Boer\r\n'),
(2043, 2111, 2018, 'Yuzuru Hanyu\r\n', 'Shoma Uno\r\n', 'Javier Fernandez\r\n'),
(2044, 2112, 2018, 'Alina Zagitova\r\n', 'Evgenia Medvedeva\r\n', 'Kaetlyn Osmond\r\n'),
(2045, 2121, 2018, 'David Gleirscher\r\n', 'Chris Mazdzer\r\n', 'Johannes Ludwig\r\n'),
(2046, 2122, 2018, 'Natalie Geisenberger\r\n', 'Dajana Eitberger\r\n', 'Alex Gough\r\n'),
(2047, 2131, 2018, 'Sungbin Yun\r\n', 'Nikita Tregubov\r\n', 'Dom Parsons\r\n'),
(2048, 2132, 2018, 'Lizzy Yarnold\r\n', 'Jacqueline Loelling\r\n', 'Laura Deas\r\n'),
(2049, 2151, 2018, 'Andreas Wellinger\r\n', 'Johann Andre Forfang\r\n', 'Robert Johansson\r\n'),
(2050, 2152, 2018, 'Maren Lundby\r\n', 'NULL\r\n', 'Sara Takanashi\r\n'),
(2051, 2161, 2018, 'Havard Lorentzen\r\n', 'Min Kyu Cha\r\n', 'Tingyu Gao\r\n'),
(2052, 2162, 2018, 'Nao Kodaira\r\n', 'Sang-Hwa Lee\r\n', 'Karolina Erbanova\r\n');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `athletes`
--
ALTER TABLE `athletes`
  ADD CONSTRAINT `Cn_fk` FOREIGN KEY (`Country`) REFERENCES `country` (`Countryabb`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Sp_fk` FOREIGN KEY (`Sportid`) REFERENCES `sports` (`Sportid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `olympic_sports`
--
ALTER TABLE `olympic_sports`
  ADD CONSTRAINT `CA_fk` FOREIGN KEY (`Country`) REFERENCES `country` (`Countryabb`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `summer_olympic`
--
ALTER TABLE `summer_olympic`
  ADD CONSTRAINT `SID_fk` FOREIGN KEY (`Sportid`) REFERENCES `sports` (`Sportid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `YR_fk` FOREIGN KEY (`Year`) REFERENCES `olympic_sports` (`Year`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `winter_olympic`
--
ALTER TABLE `winter_olympic`
  ADD CONSTRAINT `SID1_fk` FOREIGN KEY (`Sportid`) REFERENCES `sports` (`Sportid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `YR1_fk` FOREIGN KEY (`Year`) REFERENCES `olympic_sports` (`Year`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
