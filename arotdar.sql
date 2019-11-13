-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2019 at 05:29 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arotdar`
--

-- --------------------------------------------------------

--
-- Table structure for table `arot_info`
--

CREATE TABLE `arot_info` (
  `id` int(11) NOT NULL,
  `arot_name` varchar(200) DEFAULT NULL,
  `arot_phone` varchar(11) NOT NULL,
  `arot_address` varchar(99) NOT NULL,
  `arot_owner_name` varchar(50) NOT NULL,
  `arot_owner_phone` varchar(11) NOT NULL,
  `arot_owner_address` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arot_info`
--

INSERT INTO `arot_info` (`id`, `arot_name`, `arot_phone`, `arot_address`, `arot_owner_name`, `arot_owner_phone`, `arot_owner_address`) VALUES
(1, 'Devbug', '601-906-938', '57972 Karstens Terrace', 'Cesaro Lockhead', '306-102-142', '00884 Bultman Parkway'),
(2, 'Zoovu', '348-462-493', '271 Tomscot Street', 'Penny Girke', '402-990-565', '71646 Marcy Pass'),
(3, 'Voonder', '115-996-392', '48661 Oxford Street', 'Shaylah Feehely', '963-644-673', '8 Fair Oaks Trail'),
(4, 'Twinder', '408-368-152', '15 Mitchell Crossing', 'Denys McGillecole', '426-781-223', '88807 Colorado Street'),
(5, 'Skivee', '704-699-923', '948 Village Green Junction', 'Brendon Culmer', '461-463-376', '54 Mifflin Center'),
(6, 'Twinte', '940-804-793', '1525 Holmberg Drive', 'Robinett Kinnett', '733-909-766', '23 Homewood Crossing'),
(7, 'Devify', '106-119-297', '46795 Rusk Circle', 'Serge Florentine', '132-320-899', '9 Garrison Center'),
(8, 'Jabbersphere', '856-519-150', '2882 Division Road', 'Pet Dabney', '703-210-441', '2 Sheridan Point'),
(9, 'Kwimbee', '405-421-143', '107 Roth Avenue', 'Miles Pierucci', '904-425-317', '45443 Pepper Wood Parkway'),
(10, 'Flashspan', '431-727-320', '30 Cambridge Point', 'Elias Erwin', '436-223-538', '459 Waubesa Alley'),
(11, 'Buzzshare', '300-263-117', '49 Corry Road', 'Wilton Szymczyk', '763-731-786', '403 Mallory Plaza'),
(12, 'Ainyx', '738-788-566', '5489 Pine View Way', 'Dael Olpin', '559-378-202', '699 Grover Junction'),
(13, 'Buzzster', '963-213-444', '92 Nevada Point', 'Rosemarie Diver', '461-764-289', '03 Pankratz Lane'),
(14, 'Youopia', '945-794-370', '743 Mayfield Road', 'Devlen Gaskin', '948-749-144', '8176 Prairieview Avenue'),
(15, 'Photojam', '411-357-611', '8771 Dorton Road', 'Estell Ullett', '117-978-694', '00166 Starling Crossing'),
(16, 'Gigabox', '532-460-112', '9856 Marquette Lane', 'Kipp Twelves', '480-900-177', '6894 Melrose Alley'),
(17, 'Aimbu', '656-761-926', '5130 Dorton Point', 'Kizzie Koppke', '660-978-520', '4 Burning Wood Junction'),
(18, 'Twitterbridge', '391-334-205', '6 Butterfield Trail', 'Hunter Polkinghorne', '340-617-210', '3 Westport Park'),
(19, 'Flashset', '319-980-346', '51 Hanover Circle', 'Terri Warrior', '727-449-607', '465 Myrtle Way'),
(20, 'Mycat', '168-870-652', '326 Aberg Road', 'Jillene Lanktree', '965-886-641', '2 Cambridge Plaza'),
(21, 'Buzzster', '217-707-402', '2696 Spohn Road', 'Averil Igoe', '563-962-582', '468 Browning Court'),
(22, 'Thoughtblab', '371-456-223', '7379 Summer Ridge Road', 'Jasen Mussettini', '294-989-731', '593 Sloan Trail'),
(23, 'JumpXS', '809-275-982', '3504 Del Mar Road', 'Jacinta Rowell', '294-247-358', '04 Doe Crossing Parkway'),
(24, 'Skiba', '462-543-324', '13 Rusk Place', 'Milicent Gier', '387-667-002', '67556 Tennessee Road'),
(25, 'Wordtune', '129-862-094', '23 Eggendart Parkway', 'Bobina Gladhill', '884-243-309', '33 Debra Trail'),
(26, 'Divape', '941-991-797', '9962 Little Fleur Terrace', 'Silvano Hannon', '620-707-426', '642 Forest Run Pass'),
(27, 'Youspan', '609-772-994', '66581 Hoffman Circle', 'Lewes Ransley', '959-540-054', '540 Ronald Regan Street'),
(28, 'InnoZ', '293-614-561', '6 Commercial Trail', 'Daphne Foystone', '823-987-858', '93604 Farmco Pass'),
(29, 'Bubblebox', '352-824-037', '88137 Chive Junction', 'Karole Edney', '433-573-205', '9329 Lerdahl Way'),
(30, 'Kaymbo', '183-142-536', '2 Ridge Oak Center', 'Rosemaria Luca', '727-412-897', '611 Hermina Street'),
(31, 'Skimia', '591-269-181', '06345 Sycamore Lane', 'Madelyn Lockyer', '993-397-983', '12 Forest Run Pass'),
(32, 'Flipstorm', '358-289-509', '41 Hintze Park', 'Roby Houlaghan', '595-348-305', '19943 Hollow Ridge Way'),
(33, 'Zava', '362-629-120', '8 Rowland Road', 'Teresita Critchley', '420-765-046', '263 Mcguire Avenue'),
(34, 'Jazzy', '752-967-057', '4 Dahle Circle', 'Trent Nice', '284-737-804', '402 Spenser Pass'),
(35, 'Fivebridge', '575-364-008', '1712 Knutson Parkway', 'Alika De\'Ath', '290-135-511', '2161 Charing Cross Hill'),
(36, 'Voonyx', '576-924-651', '9 Cascade Circle', 'Rowan Randlesome', '349-176-382', '185 Scott Point'),
(37, 'Dynava', '360-879-246', '928 Sunnyside Circle', 'Dulcy Hebble', '357-338-752', '6310 Hallows Trail'),
(38, 'Rooxo', '527-659-376', '38 Coleman Hill', 'Walther Tuvey', '930-697-793', '0850 Nevada Avenue'),
(39, 'Yata', '896-919-496', '72804 Anhalt Plaza', 'Amye Prince', '800-817-206', '6454 Monument Lane'),
(40, 'Brightdog', '940-452-972', '44 Dawn Trail', 'Lizabeth Baruch', '615-874-598', '00393 High Crossing Plaza');

-- --------------------------------------------------------

--
-- Table structure for table `lc_info`
--

CREATE TABLE `lc_info` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `lc_number` varchar(99) DEFAULT NULL,
  `lc_date` varchar(10) DEFAULT NULL,
  `border` varchar(10) DEFAULT NULL,
  `importer_name` varchar(99) DEFAULT NULL,
  `exporter_name` varchar(99) DEFAULT NULL,
  `item` varchar(99) DEFAULT NULL,
  `price_per` int(99) NOT NULL,
  `total_weight` int(99) NOT NULL,
  `amount` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lc_info`
--

INSERT INTO `lc_info` (`id`, `bank_name`, `lc_number`, `lc_date`, `border`, `importer_name`, `exporter_name`, `item`, `price_per`, `total_weight`, `amount`) VALUES
(2, 'Twimbo', '6157398914', '5/9/2019', 'Burimari r', 'Kimmi Towell', 'Augustin Iacomettii', 'Madeira', 49150, 8841, 526),
(3, 'Eayo', '7095950199', '10/20/2018', 'Changraban', 'Cully Segrave', 'Adelice Ciciura', 'Wine - Balbach Riverside', 16482, 1804, 890),
(4, 'Skinder', '2235340660', '1/28/2019', 'Burimari r', 'Keenan Leigh', 'Arline Shrimplin', 'Beans - Butter Lrg Lima', 43472, 8194, 268),
(5, 'Skyba', '5248189357', '4/8/2019', 'Banglaband', 'Florencia O\'Corrin', 'Cortney Springthorp', 'Pasta - Tortellini, Fresh', 34256, 3824, 508),
(6, 'Dynabox', '1179772857', '6/28/2019', 'Dawki', 'Rodolphe Holdworth', 'Leila Donohoe', 'Kippers - Smoked', 11327, 8118, 923),
(7, 'Topicware', '8546139245', '8/22/2018', 'Akhaura Up', 'Hadley Tarzey', 'Andy Elliker', 'Beef - Top Sirloin', 13437, 5028, 327),
(8, 'Viva', '2281555674', '7/16/2019', 'Banglaband', 'Lonnard Priel', 'Merrielle Maycey', 'Flour - Semolina', 21671, 1623, 226),
(9, 'Tavu', '0666751390', '4/21/2019', 'Barsoi–Rad', 'Gwennie Greedy', 'Valentia Pick', 'Soup Campbells - Tomato Bisque', 19930, 6529, 984),
(10, 'Skaboo', '6016771953', '1/21/2019', 'Darshana r', 'Chilton Turle', 'Gerty Foale', 'Sauce - Hoisin', 45033, 7548, 326),
(11, 'Kwimbee', '0444136436', '12/10/2018', 'Banglaband', 'Paulette Killimister', 'Monro Ryal', 'Eel - Smoked', 10428, 3010, 336),
(12, 'Devcast', '4481982489', '5/24/2019', 'Dawki', 'Erasmus Alpin', 'Bettine Leyton', 'Bacardi Limon', 18426, 7241, 361),
(13, 'Miboo', '0657939188', '1/14/2019', 'Darshana r', 'Antonius Lowdwell', 'Sharline Raith', 'Rum - Spiced, Captain Morgan', 33758, 5666, 867),
(14, 'Skiba', '6895469680', '6/19/2019', 'Darshana r', 'Trixi Dabbes', 'Brandea Renison', 'Seaweed Green Sheets', 22727, 5328, 104),
(15, 'Eidel', '7151423675', '1/4/2019', 'Darshana r', 'Vincenty Airlie', 'Corinne Macbane', 'Scampi Tail', 17302, 9181, 936),
(16, 'Pixope', '5245194562', '6/29/2019', 'Dawki', 'Ynez Knightsbridge', 'Idette Farrey', 'Pastry - Key Limepoppy Seed Tea', 25420, 9054, 849),
(17, 'Brightdog', '5171666768', '8/22/2018', 'Burimari r', 'Michele Larcier', 'Marget Steeden', 'Bread Crumbs - Japanese Style', 10185, 2505, 695),
(18, 'Photospace', '1705307019', '8/22/2018', 'Benapole', 'Loella Roller', 'Brocky Lucius', 'Coffee - Hazelnut Cream', 14535, 5981, 933),
(19, 'Avavee', '5447875544', '7/27/2018', 'Barsoi–Rad', 'Andros Jeal', 'Nara Babb', 'Beans - Black Bean, Canned', 38051, 6968, 525),
(20, 'Thoughtbeat', '6114185382', '11/12/2018', 'Changraban', 'Karylin Bleue', 'Teddy Matashkin', 'Oil - Shortening - All - Purpose', 21599, 5582, 820),
(21, 'Oyondu', '4375702028', '7/11/2019', 'Benapole', 'Duky Humfrey', 'Fidelio Gummery', 'Bread - Multigrain, Loaf', 43073, 7809, 884),
(22, 'Myworks', '9214274355', '11/5/2018', 'Changraban', 'Libbey Shelliday', 'Kelsy Nobriga', 'Wine - Penfolds Koonuga Hill', 13529, 8219, 211),
(23, 'Trupe', '2266456105', '10/11/2018', 'Changraban', 'Sarene Zavittieri', 'Cristian Clac', 'Table Cloth 54x72 Colour', 17514, 9344, 919),
(24, 'Vinte', '0950654981', '7/22/2018', 'Burimari r', 'Fairfax McLaverty', 'Matthus Rathmell', 'Radish', 41395, 8723, 655),
(25, 'Zoomlounge', '1082441260', '1/20/2019', 'Benapole', 'Winslow Vanyashin', 'Ulises Latliff', 'Wine - Casillero Del Diablo', 43558, 6332, 207),
(26, 'Wikibox', '4222072796', '7/27/2018', 'Dawki', 'Morry Creaven', 'Shamus Haldon', 'Almonds Ground Blanched', 15304, 3844, 219),
(27, 'Jabbercube', '8446059908', '9/17/2018', 'Dawki', 'Welch Hotchkin', 'Sigrid Keatley', 'Chocolate Bar - Coffee Crisp', 23644, 9659, 261),
(28, 'Yodo', '6995322665', '7/10/2019', 'Barsoi–Rad', 'Tybie Rotchell', 'Dita Wickens', 'Kale - Red', 25038, 8870, 927),
(29, 'Cogilith', '2430589117', '4/22/2019', 'Dawki', 'Viki Sully', 'Gideon Crunden', 'Shrimp, Dried, Small / Lb', 35861, 2668, 525),
(30, 'Chatterpoint', '8882357406', '2/10/2019', 'Banglaband', 'Artair Tilley', 'Cyndi Heephy', 'Container - Clear 16 Oz', 39977, 5207, 363),
(31, 'Fivechat', '7889136560', '10/5/2018', 'Dawki', 'Sayre Gonnet', 'Milka Brenard', 'Cheese - Havarti, Salsa', 43050, 4196, 638),
(32, 'Kwinu', '1331644968', '5/22/2019', 'Dawki', 'Fredi Tilbey', 'Pearl Aldins', 'Milkettes - 2%', 29488, 4565, 158),
(33, 'Janyx', '0204400066', '2/3/2019', 'Akhaura Up', 'Marylinda Pulbrook', 'Jackquelin Stansell', 'Bread - 10 Grain', 21229, 8588, 507),
(34, 'Aimbo', '2507618590', '1/19/2019', 'Akhaura Up', 'Ailbert Upstone', 'Gino Ambage', 'Bag Stand', 34927, 3172, 752),
(35, 'Npath', '0511389515', '5/19/2019', 'Benapole', 'Persis Dever', 'Arty Melloi', 'Cheese - Ricotta', 37420, 2327, 134),
(36, 'Pixonyx', '6415184083', '7/1/2019', 'Changraban', 'Regen Rimbault', 'Steffen Varns', 'Glucose', 33687, 7570, 955),
(37, 'Centidel', '1951139003', '1/5/2019', 'Dawki', 'Erek Presser', 'Forbes Winterscale', 'Mayonnaise', 19090, 9286, 137),
(38, 'Centidel', '9332841748', '6/22/2019', 'Darshana r', 'Fanya Grabeham', 'Calypso Woofenden', 'Sambuca - Opal Nera', 43339, 1438, 939),
(39, 'Gabspot', '8610146898', '10/22/2018', 'Barsoi–Rad', 'Melicent Giampietro', 'Cammy Bleby', 'Yogurt - Assorted Pack', 29490, 6283, 565),
(40, 'Buzzster', '6459184518', '6/1/2019', 'Dawki', 'Mitchel Gulberg', 'Vincenty MacCathay', 'Coffee Beans - Chocolate', 35966, 7966, 864),
(41, 'Quinu', '0826725430', '4/7/2019', 'Burimari r', 'Thorsten Tuxwell', 'Alina Pow', 'Sponge Cake Mix - Vanilla', 47610, 1123, 294),
(42, 'Eamia', '7905320898', '11/21/2018', 'Barsoi–Rad', 'Devy Lamburn', 'Alyse Fall', 'Beef - Salted', 25081, 5566, 518),
(43, 'Rhycero', '0491083475', '6/1/2019', 'Darshana r', 'Rhody Donisi', 'Alf Fair', 'Appetizer - Smoked Salmon / Dill', 36459, 8435, 702),
(44, 'Wikibox', '9179584942', '11/12/2018', 'Dawki', 'Angelita MacAllister', 'Travis Pumfrey', 'Wine - White, Colubia Cresh', 26628, 7754, 479),
(45, 'Skajo', '9572225588', '3/4/2019', 'Changraban', 'Margeaux McGoogan', 'Kermie Higbin', 'Cheese - Grana Padano', 10137, 2486, 553),
(46, 'Digitube', '8499859984', '2/21/2019', 'Burimari r', 'Agnesse Worley', 'Morlee Gommowe', 'Bread - Multigrain, Loaf', 42950, 8422, 465),
(47, 'Thoughtbridge', '3643245491', '12/10/2018', 'Dawki', 'Marthe Karppi', 'Skippie Ridgwell', 'Nantucket Orange Juice', 17107, 3600, 777),
(48, 'Nlounge', '3502528047', '3/1/2019', 'Banglaband', 'Yvette Bartos', 'Rocky Whittek', 'Fennel - Seeds', 29382, 9814, 597),
(49, 'Lazz', '7393054833', '12/26/2018', 'Barsoi–Rad', 'Farly Fidal', 'Hertha Tyers', 'Contreau', 45025, 1732, 933),
(50, 'Gabtune', '5498139209', '8/28/2018', 'Benapole', 'Berky Rowan', 'Smith Callow', 'Lid - Translucent, 3.5 And 6 Oz', 14460, 3513, 486),
(51, 'Agimba', '1690624388', '2/10/2019', 'Changraban', 'Aland Broader', 'Fredrika Parkes', 'Beer - True North Strong Ale', 38349, 5058, 609),
(52, 'Fivechat', '6687954229', '6/14/2019', 'Akhaura Up', 'Sybyl Goundsy', 'Nadiya Derkes', 'Wine - Pinot Noir Latour', 44139, 5914, 151),
(53, 'Realcube', '9547617117', '6/26/2019', 'Benapole', 'Had Gilstoun', 'Krystle Deam', 'Sobe - Cranberry Grapefruit', 41321, 1317, 996),
(54, 'Wordpedia', '0999615904', '6/14/2019', 'Akhaura Up', 'Claudio Smallpiece', 'Creight Bracher', 'Veal - Nuckle', 35460, 5183, 664),
(55, 'Blogtags', '3087225096', '3/10/2019', 'Banglaband', 'Catherine Morch', 'Olin Node', 'Calvados - Boulard', 42553, 3542, 564),
(56, 'Aibox', '6246345891', '12/4/2018', 'Barsoi–Rad', 'Sarah Wenban', 'Kalvin Bernardotte', 'Kellogs Special K Cereal', 34377, 4488, 737),
(57, 'Kwideo', '4513215828', '3/16/2019', 'Dawki', 'Sheppard Solland', 'Georgie Calderhead', 'Yokaline', 15176, 3922, 465),
(58, 'Kwideo', '8018438382', '1/13/2019', 'Changraban', 'Nita Riby', 'Rubie Eivers', 'Pasta - Canelloni', 29326, 9807, 191),
(59, 'Wikizz', '2942734132', '12/24/2018', 'Burimari r', 'Nerte Thews', 'Hilton Josifovic', 'Cheese - Parmesan Cubes', 23701, 9837, 577),
(60, 'Rhynyx', '0973075740', '3/18/2019', 'Barsoi–Rad', 'Amerigo Aleksich', 'Kilian Ramplee', 'Table Cloth 62x120 Colour', 27549, 8502, 367),
(61, 'Voolia', '4209485535', '12/26/2018', 'Benapole', 'Justinn Firsby', 'Grayce Aysik', 'Squid - Tubes / Tenticles 10/20', 30583, 8289, 908),
(62, 'Realpoint', '6115440815', '7/26/2018', 'Dawki', 'Hinda Schaumann', 'Der Idill', 'Cranberries - Dry', 39782, 6033, 909),
(63, 'Livefish', '2046070682', '2/18/2019', 'Barsoi–Rad', 'Starlene Dobble', 'Gottfried Dumingo', 'Cookie Dough - Chocolate Chip', 29587, 8453, 969),
(64, 'Meezzy', '8111957254', '2/18/2019', 'Banglaband', 'Harlene Cianelli', 'Sherwin Goldney', 'Hersey Shakes', 12278, 5932, 710),
(65, 'Skimia', '6693894828', '6/16/2019', 'Dawki', 'Chas Linsay', 'Chauncey Slaten', 'Wine - Red, Gallo, Merlot', 42504, 1860, 166),
(66, 'Trunyx', '9407470520', '3/1/2019', 'Banglaband', 'Cy Hellicar', 'Richmound Regis', 'Mousse - Passion Fruit', 23772, 4435, 114),
(67, 'Podcat', '3840392179', '8/13/2018', 'Banglaband', 'Karoly Fuggles', 'Giffer Prangley', 'Nut - Pumpkin Seeds', 46107, 4794, 787),
(68, 'Jabbersphere', '9766281033', '1/24/2019', 'Benapole', 'Davidson Weighell', 'Vivia Buffery', 'Wine - White, Riesling, Semi - Dry', 11755, 3597, 286),
(69, 'Topicware', '7921847412', '9/30/2018', 'Changraban', 'Hunfredo Fedynski', 'Coop Siuda', 'Soup - Chicken And Wild Rice', 40046, 8433, 304),
(70, 'Agimba', '9134863028', '3/30/2019', 'Barsoi–Rad', 'Leodora Tuffield', 'Xaviera Ashmore', 'Beef - Roasted, Cooked', 16552, 8975, 514),
(71, 'Mynte', '1586129430', '8/31/2018', 'Changraban', 'Maddi Nancekivell', 'Eugenius Kinglake', 'Chives - Fresh', 19154, 7337, 194),
(72, 'Twitterwire', '4978086175', '8/24/2018', 'Dawki', 'Aloisia Kubal', 'Stewart Lamswood', 'Calypso - Black Cherry Lemonade', 45879, 1520, 557),
(73, 'Vidoo', '2777673403', '4/30/2019', 'Dawki', 'Ferdy Ondrasek', 'Melvin Garfirth', 'Sorrel - Fresh', 34216, 7922, 347),
(74, 'Roodel', '7007445764', '1/1/2019', 'Burimari r', 'Jessamine Flement', 'Mirelle Biddiss', 'Oil - Safflower', 20078, 8594, 320),
(75, 'Oba', '5436058744', '10/8/2018', 'Dawki', 'Osmund Wingatt', 'Catharine Beecham', 'Extract - Almond', 14705, 6499, 620),
(76, 'Wikizz', '3983177514', '2/19/2019', 'Burimari r', 'Justino O\'Rafferty', 'Fred Booler', 'Allspice - Jamaican', 36739, 6353, 602),
(77, 'Buzzbean', '0193428776', '1/24/2019', 'Dawki', 'Sandor Byne', 'Bendicty Guice', 'Bread Bowl Plain', 37612, 1676, 870),
(78, 'Trudeo', '8016721036', '10/16/2018', 'Darshana r', 'Jana Letterese', 'Sallie Shillaker', 'Sauce - Demi Glace', 38081, 8419, 211),
(79, 'Cogilith', '1076370810', '12/4/2018', 'Banglaband', 'Margarita Cocci', 'Valencia Illyes', 'Noodles - Steamed Chow Mein', 41736, 4619, 765),
(80, 'Jayo', '1750763494', '2/13/2019', 'Changraban', 'Wilden Kubecka', 'Sherman Birkmyr', 'Sauce - Thousand Island', 39091, 2842, 549),
(81, 'Quimm', '8398880694', '11/21/2018', 'Dawki', 'Dreddy Speight', 'Kristen Philbrook', 'Wine - George Duboeuf Rose', 16589, 1016, 179),
(82, 'Bluezoom', '1382395590', '9/24/2018', 'Darshana r', 'Sylvia Deniso', 'Gino Zanneli', 'Nut - Peanut, Roasted', 15807, 2141, 297),
(83, 'Agimba', '7576816414', '2/24/2019', 'Banglaband', 'Clevey Ronaldson', 'Denver Bruyet', 'Anisette - Mcguiness', 29100, 8365, 466),
(84, 'JumpXS', '4531467248', '4/16/2019', 'Akhaura Up', 'Laurence Jakucewicz', 'Delmer Leech', 'Scallop - St. Jaques', 39947, 9536, 219),
(85, 'Wordware', '4492940111', '1/10/2019', 'Barsoi–Rad', 'Ebeneser Ceillier', 'Selia Sandwick', 'Tea - Grapefruit Green Tea', 11158, 7481, 771),
(86, 'Shuffletag', '0792793307', '12/1/2018', 'Banglaband', 'Levey Gummary', 'Sybille Webburn', 'Ranchero - Primerba, Paste', 22012, 1108, 841),
(87, 'Muxo', '0631346600', '8/14/2018', 'Burimari r', 'Luca Riguard', 'Brynna Iacobassi', 'Baking Soda', 39413, 4108, 909),
(88, 'Meemm', '5108925034', '8/30/2018', 'Darshana r', 'Marina Petty', 'Dania Morales', 'Ecolab Digiclean Mild Fm', 36534, 4657, 780),
(89, 'Oloo', '1205246606', '1/28/2019', 'Burimari r', 'Philippa Dunabie', 'Anson Sheere', 'Crackers - Soda / Saltins', 30307, 3461, 426),
(90, 'Aimbu', '8433313797', '10/30/2018', 'Changraban', 'Horatio Rosensaft', 'Hildy Stelljes', 'Veal - Loin', 21808, 4956, 895),
(91, 'Skiba', '0660258218', '11/8/2018', 'Dawki', 'Kale Verralls', 'Hamnet Brozek', 'Savory', 10819, 6746, 808),
(92, 'Cogilith', '7429104010', '6/19/2019', 'Dawki', 'Doyle Renner', 'Dom Jedrzejewski', 'Red Snapper - Fresh, Whole', 34979, 3658, 148),
(93, 'Myworks', '1252052634', '9/23/2018', 'Darshana r', 'Bridgette Cudby', 'Kerby Halifax', 'Appetizer - Smoked Salmon / Dill', 12212, 7347, 249),
(94, 'Flashdog', '7593613186', '8/14/2018', 'Banglaband', 'Isaak Valde', 'Jodie Feedham', 'Doilies - 5, Paper', 42976, 9100, 245),
(95, 'Jazzy', '3723535038', '9/12/2018', 'Banglaband', 'Raul McNelly', 'Sidoney Skullet', 'Wine - Placido Pinot Grigo', 32086, 2947, 808),
(96, 'Vipe', '7424256858', '7/22/2018', 'Darshana r', 'Frankie Rennebeck', 'Nadiya Ferrarese', 'Chicken - Leg, Boneless', 36467, 6521, 577),
(97, 'Meemm', '6583019973', '1/10/2019', 'Burimari r', 'Lester Divisek', 'Brandyn Gravet', 'Chicken - Diced, Cooked', 24644, 6271, 473),
(98, 'Babbleopia', '4496762242', '3/8/2019', 'Benapole', 'Mitchael Ipsley', 'Colet Lummasana', 'Appetizer - Assorted Box', 28678, 5834, 413),
(99, 'Centimia', '0188464743', '2/11/2019', 'Barsoi–Rad', 'Adriano Dasent', 'Cinnamon Arnli', 'Veal - Leg, Provimi - 50 Lb Max', 44198, 8251, 398),
(100, 'Devpoint', '1778159966', '1/14/2019', 'Darshana r', 'Kimbell Blaskett', 'Carmelina Arrandale', 'Soup Campbells Turkey Veg.', 40919, 5964, 487),
(101, 'Bubbletube', '3848020068', '11/11/2018', 'Changraban', 'Cynthea Tunnoch', 'Evonne Matushenko', 'Monkfish - Fresh', 47130, 3821, 719),
(102, 'Edgewire', '1963190327', '9/15/2018', 'Dawki', 'Salvidor Reina', 'Brandy Summerbell', 'Soup - Beef, Base Mix', 12917, 1735, 237),
(103, 'Voolia', '5059642925', '6/22/2019', 'Banglaband', 'Sancho Fowlds', 'Elvin Dunbobin', 'Seedlings - Mix, Organic', 10843, 2674, 945),
(104, 'Eazzy', '8217864047', '4/14/2019', 'Darshana r', 'Hastie Pettingill', 'Louie MacRorie', 'Cheese - Mozzarella', 32438, 2223, 338),
(105, 'Avavee', '1887113797', '11/23/2018', 'Akhaura Up', 'Maxy Sanday', 'Agatha Frean', 'Muffin Mix - Oatmeal', 30845, 4167, 990),
(106, 'Voomm', '1875366415', '8/3/2018', 'Barsoi–Rad', 'Cymbre Minty', 'Arri Glaum', 'Magnotta Bel Paese Red', 37275, 8453, 278),
(107, 'Nlounge', '2252221496', '3/22/2019', 'Darshana r', 'Clemmie Poat', 'Linet MacVay', 'Soup - Campbells', 15464, 4242, 243),
(108, 'Feedfish', '4513090677', '3/26/2019', 'Darshana r', 'Morty Lambert-Ciorwyn', 'Royce Ganiclef', 'Lid - 16 Oz And 32 Oz', 47088, 4165, 191),
(109, 'Dynava', '9552926602', '8/17/2018', 'Akhaura Up', 'Julius Drakeford', 'Bourke Berrecloth', 'Mayonnaise - Individual Pkg', 41502, 9681, 765),
(110, 'Jaxworks', '7041817008', '3/5/2019', 'Burimari r', 'Gaston Meredyth', 'Tansy Yushkov', 'Wine - Toasted Head', 20368, 9908, 982),
(111, 'Dablist', '6756543350', '9/25/2018', 'Benapole', 'Alick Shropsheir', 'Dell Guild', 'Pasta - Ravioli', 37588, 3012, 252),
(112, 'Divanoodle', '3875723686', '11/26/2018', 'Darshana r', 'Holly Nacey', 'Rosalynd Andriveaux', 'Water - Aquafina Vitamin', 13904, 7490, 545),
(113, 'Eidel', '4632631213', '11/25/2018', 'Dawki', 'Jeremie Gilderoy', 'Penny Spens', 'Cheese - Fontina', 26770, 9621, 281),
(114, 'Abata', '0052593622', '3/21/2019', 'Burimari r', 'Janina Dirkin', 'Bing Worrill', 'Chicken - Bones', 28402, 8805, 181),
(115, 'Skinix', '1505020417', '6/14/2019', 'Akhaura Up', 'Josi Sisey', 'Clementina Liptrot', 'Pancetta', 11017, 8301, 670),
(116, 'Twitterbeat', '1381527418', '1/16/2019', 'Darshana r', 'Sabra Eastway', 'Selma Izac', 'Olives - Morracan Dired', 25680, 3605, 402),
(117, 'Eabox', '8866344532', '2/24/2019', 'Changraban', 'Mil Heddan', 'Alexis Stowers', 'Tilapia - Fillets', 17007, 9287, 332),
(118, 'Zoozzy', '9849784261', '9/8/2018', 'Changraban', 'Hesther Haydock', 'Gradeigh Kemster', 'Wine - Sherry Dry Sack, William', 39013, 8486, 122),
(119, 'Kayveo', '2733168924', '8/17/2018', 'Changraban', 'Caresa Loble', 'Calida Farmery', 'Chestnuts - Whole,canned', 22596, 8202, 329),
(120, 'Tekfly', '1322385890', '8/3/2018', 'Benapole', 'Davin Murford', 'Noami Juan', 'Zucchini - Mini, Green', 37546, 7789, 694),
(121, 'Tagtune', '9552435706', '7/2/2019', 'Darshana r', 'Dur Devinn', 'Paten Cabera', 'Beans - French', 43129, 8151, 518),
(122, 'Livefish', '8208235180', '3/3/2019', 'Akhaura Up', 'Freedman Weeds', 'Marie-jeanne Woolley', 'Star Anise, Whole', 23924, 4051, 854),
(123, 'Pixoboo', '4162122644', '8/3/2018', 'Banglaband', 'Bengt Murcott', 'Kahaleel Wathell', 'Beer - Sleemans Honey Brown', 16158, 3234, 874),
(124, 'Buzzshare', '2040045147', '1/2/2019', 'Burimari r', 'Gilemette Ivanishchev', 'Marci Shillum', 'Ginger - Ground', 23400, 1293, 293),
(125, 'Linklinks', '5265883096', '6/12/2019', 'Changraban', 'Kaia Coughtrey', 'Frankie Hiorn', 'Bread - Dark Rye', 39286, 7409, 684),
(126, 'Voonyx', '1091335583', '6/21/2019', 'Burimari r', 'Sylvia Clute', 'Beryl Finder', 'Mustard - Pommery', 13945, 8308, 687),
(127, 'Vimbo', '9261602169', '4/24/2019', 'Changraban', 'Janet Furnival', 'Joshua Krebs', 'Juice - Apple, 1.36l', 17915, 8083, 211),
(128, 'Fanoodle', '4311480016', '6/22/2019', 'Dawki', 'Jackie Dangerfield', 'Yetty Fullegar', 'Strawberries', 25262, 9882, 144),
(129, 'Voonix', '7994932363', '12/4/2018', 'Darshana r', 'Mano O\'Dowd', 'Isabel Mayer', 'Broom And Brush Rack Black', 36169, 9637, 679),
(130, 'Topicblab', '6875968320', '3/1/2019', 'Benapole', 'Ritchie Trimmill', 'Lauraine Thorsby', 'Soup - Campbells', 48995, 7403, 335),
(131, 'Gabspot', '7825741072', '1/3/2019', 'Darshana r', 'Vaclav De Cruz', 'Gussi Jaukovic', 'Cornstarch', 49969, 9933, 721),
(132, 'Oozz', '6013419949', '10/6/2018', 'Akhaura Up', 'Les MacKeig', 'Darci McMylor', 'Sour Cream', 31196, 5023, 237),
(133, 'Meezzy', '3930807254', '8/25/2018', 'Benapole', 'Alix Brettor', 'Dieter De Bruyn', 'Cinnamon - Ground', 27858, 7969, 311),
(134, 'Skinder', '9966546901', '2/13/2019', 'Dawki', 'Frankie Valens-Smith', 'Shalne Morrall', 'Mushroom - Chantrelle, Fresh', 40560, 8960, 809),
(135, 'Realmix', '1079717943', '8/15/2018', 'Darshana r', 'Tatum Mottini', 'Holmes Bever', 'Beer - Upper Canada Light', 35777, 1138, 110),
(136, 'Gigaclub', '1211959198', '2/23/2019', 'Burimari r', 'Opal Craigg', 'Blakeley Freckelton', 'Chicken - Livers', 28371, 6690, 319),
(137, 'Nlounge', '8545869479', '8/26/2018', 'Barsoi–Rad', 'Alyss Benbow', 'Mariam Mathiasen', 'Beans - Soya Bean', 44097, 8579, 900),
(138, 'Jaloo', '8633863308', '9/12/2018', 'Banglaband', 'Masha Bebbell', 'Bat Clinton', 'Wine - Chateauneuf Du Pape', 17830, 8419, 794),
(139, 'Wikizz', '0984155007', '5/5/2019', 'Darshana r', 'Janice Klageman', 'Jerrie Bewlie', 'Brandy Cherry - Mcguinness', 26820, 6511, 444),
(140, 'Skalith', '8007853480', '8/11/2018', 'Burimari r', 'Mikey Esmonde', 'Kat Shedd', 'Dried Figs', 20086, 4880, 311),
(141, 'Photofeed', '0096521465', '7/30/2018', 'Dawki', 'Wash Quilleash', 'Mariska Vasyaev', 'Onions - Dried, Chopped', 17335, 4407, 470),
(142, 'Wordware', '6589094772', '4/5/2019', 'Dawki', 'Gweneth Hambridge', 'Giulietta Dakers', 'Soup - Beef Conomme, Dry', 23674, 3481, 473),
(143, 'Topicshots', '2500144550', '11/8/2018', 'Burimari r', 'Dallas Walczak', 'Tricia Baugh', 'Cookies - Englishbay Oatmeal', 17915, 8462, 360),
(144, 'Edgeclub', '7556415848', '6/4/2019', 'Changraban', 'Allistir Yearn', 'Frazer Kleinmann', 'Bread - Pain Au Liat X12', 37944, 4133, 630),
(145, 'Oba', '9159988355', '6/23/2019', 'Benapole', 'Rosalinda Stell', 'Hobey Gonet', 'Nantucket - Kiwi Berry Cktl.', 16851, 5089, 719),
(146, 'Wordtune', '5413715293', '3/5/2019', 'Akhaura Up', 'Rochette Commucci', 'Melessa Gronw', 'Shrimp - Black Tiger 16/20', 47670, 6617, 595),
(147, 'Livepath', '2928306552', '11/17/2018', 'Changraban', 'Olly Sherrard', 'Margret Extance', 'Whmis - Spray Bottle Trigger', 10965, 8610, 487),
(148, 'Vinte', '9540681049', '7/22/2018', 'Barsoi–Rad', 'Mickie Vinnick', 'Sebastien Waplington', 'Towel - Roll White', 42912, 4078, 899),
(149, 'Rhyzio', '0879553162', '7/21/2018', 'Akhaura Up', 'Deck Massei', 'Fayette Baile', 'Whmis Spray Bottle Graduated', 43092, 2649, 268),
(150, 'Twitternation', '7868150319', '10/20/2018', 'Akhaura Up', 'Cherida Tytler', 'Yvon Pelchat', 'Mushroom - Enoki, Dry', 20332, 8399, 249),
(151, 'Kare', '3604480426', '5/10/2019', 'Akhaura Up', 'Samuele Emblin', 'Karina Carryer', 'Longos - Lasagna Beef', 45603, 8631, 384),
(152, 'Riffpath', '2769697803', '9/24/2018', 'Dawki', 'Doug Geistbeck', 'Elfie Matts', 'Beer - Fruli', 13141, 2989, 426),
(153, 'Zoomzone', '9398167743', '6/6/2019', 'Burimari r', 'Colby Castard', 'Cloris Eixenberger', 'Bread - Triangle White', 43950, 1925, 895),
(154, 'Topicstorm', '7740190330', '9/3/2018', 'Burimari r', 'Teddie Bowlesworth', 'Dulce Willan', 'Island Oasis - Ice Cream Mix', 49942, 1646, 768),
(155, 'Devify', '4784454802', '7/1/2019', 'Darshana r', 'Erich Rayman', 'Austine Duferie', 'Fork - Plastic', 10959, 8371, 916),
(156, 'Demivee', '6293235495', '11/13/2018', 'Dawki', 'Lilyan Jancso', 'Neda Gronw', 'Honey - Comb', 26749, 1677, 934),
(157, 'Jaxspan', '1529490243', '11/12/2018', 'Akhaura Up', 'Geralda Janz', 'Rosalyn Worsnop', 'Pastry - Lemon Danish - Mini', 29164, 1796, 276),
(158, 'Flashspan', '0052009734', '7/23/2018', 'Darshana r', 'Willy Ferrulli', 'Bernardo Cessford', 'Pectin', 39493, 3026, 339),
(159, 'Cogidoo', '0702921386', '10/13/2018', 'Akhaura Up', 'Carolus Chable', 'Renata Licquorish', 'Parsley - Fresh', 35852, 6683, 637),
(160, 'Tagfeed', '6537280230', '2/9/2019', 'Akhaura Up', 'Wynn Whipp', 'Roxanne Comrie', 'Wine - Alicanca Vinho Verde', 49284, 5139, 952),
(161, 'Youspan', '1460422651', '4/28/2019', 'Burimari r', 'Constantino Scawn', 'Loralee Greenhough', 'Pie Shell - 5', 14780, 1174, 738),
(162, 'Twitterwire', '9628145010', '9/9/2018', 'Darshana r', 'Wilton Awde', 'Minnaminnie Hairsine', 'Pepper - Cubanelle', 29397, 7912, 489),
(163, 'Yodel', '7608292644', '2/1/2019', 'Benapole', 'Drusie McSaul', 'Lindsey Polsin', 'Coffee Decaf Colombian', 30965, 4351, 218),
(164, 'Rooxo', '7317999873', '1/24/2019', 'Changraban', 'Chancey Colvill', 'Aubree Wiltshire', 'Cheese - Stilton', 29673, 4800, 612),
(165, 'Quamba', '3920965485', '8/12/2018', 'Burimari r', 'Bail Sherbrook', 'Olag Orford', 'Guava', 32916, 8244, 271),
(166, 'Browsecat', '2812955619', '4/5/2019', 'Banglaband', 'Philip Sonschein', 'Kennith Every', 'Cheese - St. Andre', 19223, 8236, 317),
(167, 'Tagopia', '9907432903', '6/14/2019', 'Banglaband', 'Killie Inworth', 'Inna Reiling', 'Pastry - Choclate Baked', 19466, 8835, 481),
(168, 'Mynte', '4892739510', '10/25/2018', 'Changraban', 'Rosmunda Hagger', 'Marti Tempest', 'Bread - Dark Rye', 31170, 8962, 354),
(169, 'Wikivu', '0672743736', '5/9/2019', 'Burimari r', 'Iormina Mantrup', 'Wendell Suttell', 'Chervil - Fresh', 26796, 9798, 425),
(170, 'Ntags', '5366739691', '6/2/2019', 'Dawki', 'Mattheus McDunlevy', 'Seka Huertas', 'Turkey - Breast, Bone - In', 41467, 6173, 557),
(171, 'Cogilith', '7834526073', '6/27/2019', 'Akhaura Up', 'Granger Papworth', 'Celina Bennison', 'Nacho Chips', 46710, 7725, 163),
(172, 'Eabox', '7904400642', '9/25/2018', 'Darshana r', 'Pearline Shoulder', 'Veronike Cregin', 'Pears - Bartlett', 21459, 1715, 757),
(173, 'Fiveclub', '0651612594', '3/17/2019', 'Burimari r', 'Amabel Aguirrezabal', 'Kelbee Iredale', 'Jerusalem Artichoke', 15546, 3648, 748),
(174, 'Tagfeed', '7116984976', '8/18/2018', 'Barsoi–Rad', 'Rabi Jellings', 'Glenine Grimes', 'Ice Cream - Strawberry', 39670, 5617, 794),
(175, 'Vinte', '8245043001', '7/28/2018', 'Darshana r', 'Fabiano Kirman', 'Bobette Jerdein', 'Cheese - La Sauvagine', 12782, 6563, 446),
(176, 'Demivee', '1988126711', '2/4/2019', 'Dawki', 'Priscella Marlor', 'Melonie Bresnahan', 'Mayonnaise', 16124, 1724, 444),
(177, 'Bubbletube', '2809963649', '2/17/2019', 'Barsoi–Rad', 'Sigismundo Robun', 'Ritchie Pena', 'Long Island Ice Tea', 36201, 8959, 291),
(178, 'LiveZ', '1245583573', '1/20/2019', 'Barsoi–Rad', 'Bendicty McKernon', 'Cilka Piscopello', 'Papayas', 36970, 5974, 724),
(179, 'Yozio', '4735660453', '1/25/2019', 'Dawki', 'Sonnnie Murford', 'Kary Gyenes', 'Maple Syrup', 44534, 2012, 678),
(180, 'Realcube', '5660873235', '3/10/2019', 'Akhaura Up', 'Lauren Fenner', 'Boote Causton', 'Juice - Cranberry 284ml', 36771, 8071, 549),
(181, 'Jayo', '8328280248', '5/27/2019', 'Dawki', 'Nathalie Van Dijk', 'Bethena Tromans', 'Glycerine', 33154, 6385, 430),
(182, 'Fliptune', '0449772144', '12/4/2018', 'Changraban', 'Issiah Fasse', 'Albertina Saxelby', 'Celery', 26772, 9372, 153),
(183, 'Topiczoom', '2676122665', '6/6/2019', 'Akhaura Up', 'Stanwood Digges', 'Bern Spatarul', 'Egg Patty Fried', 37645, 5173, 372),
(184, 'Gabtype', '9727196675', '3/22/2019', 'Darshana r', 'Letti Cuell', 'Tiffi Cartman', 'Muffin - Mix - Creme Brule 15l', 47926, 3563, 612),
(185, 'Zoombeat', '1160097666', '12/26/2018', 'Darshana r', 'Diarmid Skim', 'Lorine Wilsey', 'Lid Coffee Cup 8oz Blk', 16672, 6153, 703),
(186, 'Bubblebox', '2492381145', '4/19/2019', 'Banglaband', 'Aloysius Lintall', 'Emma Heggison', 'Lamb - Whole Head Off', 32227, 6952, 779),
(187, 'Skyble', '7099628941', '2/9/2019', 'Barsoi–Rad', 'Templeton Abrahmovici', 'Shellie Pettiford', 'Beans - Butter Lrg Lima', 27144, 2935, 555),
(188, 'Wikizz', '1866287443', '4/27/2019', 'Changraban', 'Milissent Cammiemile', 'Kiel Langtree', 'Juice - Mango', 43747, 9534, 628),
(189, 'Centimia', '6592899352', '5/31/2019', 'Changraban', 'Marnia McNee', 'Enoch Vogl', 'Puree - Strawberry', 16756, 6460, 241),
(190, 'Topiczoom', '3718974762', '10/6/2018', 'Benapole', 'Starlin Sailer', 'Lennard Lawland', 'Seabream Whole Farmed', 11604, 4928, 531),
(191, 'Jabbersphere', '4301933743', '2/7/2019', 'Akhaura Up', 'Delphine Mingaye', 'Herve Pawel', 'Red Snapper - Fresh, Whole', 27975, 4669, 913),
(192, 'Chatterpoint', '1008528366', '6/23/2019', 'Benapole', 'Marketa Mandrey', 'Marjy Brunelleschi', 'Garbage Bags - Black', 11028, 1536, 206),
(193, 'Photobug', '9537058808', '3/6/2019', 'Benapole', 'Kary Andover', 'Tamara Alelsandrovich', 'Cilantro / Coriander - Fresh', 45811, 3193, 337),
(194, 'Voolith', '9814507083', '6/26/2019', 'Barsoi–Rad', 'Lenora Janatka', 'Ernaline Rosenvasser', 'Capers - Ox Eye Daisy', 39634, 2661, 441),
(195, 'Linkbuzz', '3462109073', '11/21/2018', 'Darshana r', 'Hinda McTear', 'Alexi Rozzell', 'Sauce - Alfredo', 15193, 8686, 703),
(196, 'Fatz', '7708006848', '6/20/2019', 'Darshana r', 'Kimbell Vicioso', 'Giffard Christian', 'Curry Powder Madras', 41572, 3074, 171),
(197, 'Kwideo', '3547286867', '5/13/2019', 'Akhaura Up', 'Barde Nial', 'Sherline Van Arsdall', 'Juice - Orange', 21079, 8840, 201),
(198, 'Gabtune', '8443417528', '4/14/2019', 'Benapole', 'Alexis Oldknow', 'Wynn Woollett', 'Beef - Rib Roast, Cap On', 28856, 6281, 169),
(199, 'Rhybox', '6636846453', '1/11/2019', 'Banglaband', 'Randa Bungey', 'Wolfie Rangall', 'Chocolate - Compound Coating', 27478, 3884, 118),
(200, 'Feedspan', '6923742536', '12/12/2018', 'Akhaura Up', 'Sander Jude', 'Agnola Petican', 'Veal - Ground', 42765, 1410, 952),
(201, 'Riffpath', '5199329936', '3/19/2019', 'Dawki', 'Bambie Yashanov', 'Moise Cloney', 'Ecolab - Medallion', 20377, 9597, 148),
(202, 'Twinder', '0297030426', '7/3/2019', 'Burimari r', 'Josie Cardall', 'Gizela Ruston', 'Pie Filling - Apple', 34972, 6161, 179),
(203, 'Trilia', '4464982557', '5/21/2019', 'Banglaband', 'Nancie Terese', 'Halley Halladay', 'Aspic - Amber', 40528, 6098, 934),
(204, 'Jaxbean', '2953336737', '11/6/2018', 'Akhaura Up', 'Laurens Kenn', 'Taite Southwood', 'Coffee Decaf Colombian', 29457, 3346, 637),
(205, 'Fanoodle', '7899305357', '9/5/2018', 'Barsoi–Rad', 'Burlie Burgan', 'Bertrando Hairsine', 'Red Pepper Paste', 47371, 8436, 623),
(206, 'Tagchat', '8438000703', '7/18/2019', 'Benapole', 'Kristina Baldi', 'Adelaide Le Barre', 'Water - Green Tea Refresher', 30957, 7415, 221),
(207, 'Avavee', '1962440591', '11/17/2018', 'Barsoi–Rad', 'Paulette Monkleigh', 'Hamid Freschi', 'Langers - Ruby Red Grapfruit', 10306, 2345, 462),
(208, 'Jabbercube', '0605300968', '2/20/2019', 'Dawki', 'Samantha Marrable', 'Jedidiah Grigorini', 'Walkers Special Old Whiskey', 12955, 2223, 445),
(209, 'Zoomlounge', '0012421472', '12/2/2018', 'Barsoi–Rad', 'Derick Caile', 'Sutton Woolstenholmes', 'Cherries - Maraschino,jar', 37007, 2681, 169),
(210, 'Oyoyo', '4051114341', '1/1/2019', 'Barsoi–Rad', 'Pace Foxten', 'Colan Battison', 'Beans - Turtle, Black, Dry', 22994, 6583, 436),
(211, 'Browsetype', '3444540167', '5/29/2019', 'Darshana r', 'Mitch Brandel', 'Sybilla Waterworth', 'Beef - Bones, Marrow', 13518, 9831, 526),
(212, 'Brightbean', '9739260233', '11/24/2018', 'Burimari r', 'Rowena Marshall', 'Clive McGarry', 'Potatoes - Pei 10 Oz', 29020, 8825, 836),
(213, 'Bubblemix', '7563662502', '2/19/2019', 'Changraban', 'Elijah Barlee', 'Durward Glavin', 'Pepper - Black, Whole', 33224, 3177, 389),
(214, 'Skidoo', '9001680321', '2/26/2019', 'Changraban', 'Sibbie Prettjohn', 'Dudley Kelling', 'Spring Roll Wrappers', 13411, 3630, 451),
(215, 'Twinder', '5438026653', '6/10/2019', 'Dawki', 'Ellwood Garn', 'Marvin Dyne', 'Pasta - Penne, Lisce, Dry', 17870, 6395, 480),
(216, 'Jaxspan', '0302189319', '5/14/2019', 'Barsoi–Rad', 'Candis Kilday', 'Lanae McGuiness', 'Towel - Roll White', 32093, 1227, 879),
(217, 'Jaxnation', '5791316119', '11/21/2018', 'Darshana r', 'Shaine Chopin', 'Arlene Abson', 'Rosemary - Dry', 18797, 3328, 666),
(218, 'Oozz', '4573392572', '1/24/2019', 'Changraban', 'Roscoe Killough', 'Germayne Winham', 'Vanilla Beans', 45506, 6593, 430),
(219, 'Tagchat', '5921708941', '11/21/2018', 'Benapole', 'Cherri MacCallister', 'Clemente Godball', 'Wine - Placido Pinot Grigo', 15817, 4654, 661),
(220, 'Kayveo', '6035811566', '6/12/2019', 'Darshana r', 'Templeton Winckle', 'Kamillah Yakovitch', 'Tea - Grapefruit Green Tea', 48430, 9752, 464),
(221, 'Jabbertype', '7327775498', '3/24/2019', 'Burimari r', 'Ibrahim Fellibrand', 'Hillie Beatens', 'Chicken Thigh - Bone Out', 24998, 5027, 611),
(222, 'Yozio', '4142134175', '12/16/2018', 'Benapole', 'Justinn di Rocca', 'Bobby Vonderdell', 'Chocolate - Milk, Callets', 42480, 5796, 826),
(223, 'Yodel', '0405804415', '6/10/2019', 'Darshana r', 'Christalle Falcus', 'Staffard Theunissen', 'Soup - Beef, Base Mix', 14798, 6839, 738),
(224, 'Youfeed', '4247017179', '11/26/2018', 'Banglaband', 'Kerianne Bonsale', 'Kienan Yielding', 'Chips - Assorted', 17444, 3580, 654),
(225, 'Latz', '6056332020', '11/27/2018', 'Akhaura Up', 'Taffy Roches', 'Burke Kopman', 'Relish', 17644, 3536, 835),
(226, 'Yamia', '1059206676', '10/14/2018', 'Darshana r', 'Helenka Gautrey', 'Weston Letterick', 'Beer - Sleemans Honey Brown', 31955, 5229, 443),
(227, 'Oyoloo', '3376351503', '1/16/2019', 'Akhaura Up', 'Matteo Hardwidge', 'Meyer Lidgard', 'Steampan - Half Size Shallow', 48665, 8950, 349),
(228, 'Yabox', '9599474252', '7/11/2019', 'Akhaura Up', 'Danielle Hearl', 'Madelin Spurett', 'Spaghetti Squash', 25658, 5344, 162),
(229, 'Roodel', '9798200217', '2/6/2019', 'Dawki', 'Horst Hemerijk', 'Elly Grishenkov', 'Pears - Anjou', 37208, 6336, 384),
(230, 'Devshare', '7249878050', '11/14/2018', 'Darshana r', 'Zerk MacMeeking', 'Kristopher Chitty', 'Dill - Primerba, Paste', 18470, 9265, 130),
(231, 'Riffwire', '8606014214', '12/24/2018', 'Banglaband', 'Dougie Klimowski', 'Crissie Winckworth', 'Veal - Insides Provini', 17775, 4546, 407),
(232, 'Jabberstorm', '8022110310', '3/7/2019', 'Barsoi–Rad', 'Avril Kubasiewicz', 'Gretchen Blasgen', 'Fish - Bones', 38827, 6316, 203),
(233, 'Tagpad', '8617905247', '7/15/2019', 'Burimari r', 'Bevan Giggs', 'Corby Hickford', 'Apple - Fuji', 39100, 1001, 618),
(234, 'Ooba', '8941440327', '12/13/2018', 'Akhaura Up', 'Frederich Farncombe', 'Chris Stoves', 'Pail - 15l White, With Handle', 14727, 6463, 514),
(235, 'Shuffledrive', '8908545506', '8/27/2018', 'Barsoi–Rad', 'Franklin Gofton', 'Theo Garrat', 'Jam - Apricot', 48779, 1503, 124),
(236, 'Zazio', '8569750358', '10/5/2018', 'Dawki', 'Kristen Sidey', 'Mariska Sherrington', 'Coconut - Shredded, Unsweet', 26099, 1741, 345),
(237, 'Innotype', '1340848104', '4/15/2019', 'Darshana r', 'Nonie Tiernan', 'Clemence Sleightholm', 'Cleaner - Pine Sol', 43726, 10000, 986),
(238, 'Latz', '1787573753', '10/31/2018', 'Benapole', 'Lynne Dallimore', 'Rivkah Sherwell', 'Wine - Semi Dry Riesling Vineland', 18993, 4392, 594),
(239, 'Rhynoodle', '4093208506', '9/11/2018', 'Akhaura Up', 'Goran Sproson', 'Nels Sexti', 'Madeira', 44083, 8350, 638),
(240, 'Jabbersphere', '9828217082', '10/5/2018', 'Benapole', 'Nata Pomfrey', 'Bellanca Knifton', 'Pork - Loin, Center Cut', 20262, 1624, 362),
(241, 'Demivee', '7389535598', '3/30/2019', 'Changraban', 'Sigismond Hallam', 'Abagael O\'Looney', 'Cookie Double Choco', 45621, 7433, 515),
(242, 'Thoughtworks', '4791516966', '7/14/2019', 'Benapole', 'Nomi Kitcatt', 'Cleavland Tredgold', 'Wine - Two Oceans Cabernet', 20924, 8190, 214),
(243, 'Jaxspan', '5001392497', '1/31/2019', 'Changraban', 'Maurise Furmonger', 'Deeyn Lynagh', 'Wine - Coteaux Du Tricastin Ac', 49509, 1835, 892),
(244, 'Mita', '4712737964', '8/9/2018', 'Changraban', 'Barry Doelle', 'Sibylla Meachan', 'Wine - Alsace Gewurztraminer', 10927, 1230, 822),
(245, 'Devcast', '0072726431', '3/31/2019', 'Changraban', 'Kristy Harte', 'Pam Carless', 'Celery Root', 13369, 6721, 961),
(246, 'Chatterbridge', '5551695905', '1/31/2019', 'Burimari r', 'Anthia Hukin', 'Mortie Ackhurst', 'Kohlrabi', 18170, 4098, 365),
(247, 'Topdrive', '6901534280', '4/25/2019', 'Dawki', 'Gusella Jirick', 'Peggie Rolingson', 'Bread Roll Foccacia', 39192, 3847, 156),
(248, 'Kwideo', '9859627231', '5/22/2019', 'Akhaura Up', 'Arch Sowersby', 'Humphrey Allday', 'Truffle Cups - White Paper', 16221, 9793, 965),
(249, 'Ntags', '6153041205', '4/15/2019', 'Benapole', 'Dorelle Ricciardi', 'Zsa zsa Llorens', 'Carbonated Water - Lemon Lime', 29561, 1541, 474),
(250, 'Rhycero', '7941750996', '4/9/2019', 'Darshana r', 'Andra Burgyn', 'Eddie Langhorn', 'Raisin - Golden', 22329, 7448, 968),
(251, 'Digitube', '9151874539', '5/6/2019', 'Burimari r', 'Sheffie McDool', 'Donny Barnaclough', 'Water - Tonic', 35398, 5480, 280),
(252, 'Trunyx', '1649677383', '2/27/2019', 'Barsoi–Rad', 'Lanae Cosgrove', 'Kaspar Abramowitz', 'Glaze - Clear', 10963, 2683, 128),
(253, 'Gabspot', '7148910676', '7/8/2019', 'Dawki', 'Alika Yewman', 'Annmaria Glyn', 'Tofu - Firm', 40629, 1375, 485),
(254, 'Avamm', '5562049848', '5/15/2019', 'Benapole', 'Gerek Daniell', 'Arni Pappi', 'Rum - Coconut, Malibu', 31060, 5772, 848),
(255, 'Yacero', '6271609465', '3/8/2019', 'Darshana r', 'Judd Androsik', 'Gretchen Robertis', 'Oil - Macadamia', 36436, 8694, 977),
(256, 'Chatterbridge', '9445654153', '6/18/2019', 'Darshana r', 'Tansy Weavill', 'Cecilia D\'Alessandro', 'Muffin Mix - Carrot', 28618, 7775, 788),
(257, 'Kimia', '7841708513', '2/27/2019', 'Burimari r', 'Rubia Hoopper', 'Boonie Wolfendale', 'Huck Towels White', 19226, 4743, 626),
(258, 'Quatz', '2254550020', '3/6/2019', 'Akhaura Up', 'Christalle Bandt', 'Cher Proud', 'Guava', 13953, 1894, 414),
(259, 'Kazu', '0211322911', '9/19/2018', 'Banglaband', 'Berton Schober', 'Dora Lukovic', 'C - Plus, Orange', 26593, 8240, 192),
(260, 'Skalith', '0331951096', '9/12/2018', 'Benapole', 'Allx Beer', 'Hillary Cobden', 'Beans - Navy, Dry', 46975, 1357, 873),
(261, 'Zoonder', '0082912238', '5/24/2019', 'Banglaband', 'Gunar Terrington', 'Anestassia Burgher', 'Lemon Grass', 49784, 7385, 472),
(262, 'Vitz', '8169810124', '9/14/2018', 'Benapole', 'Lamar Everley', 'Vaughn Ville', 'Nantucket Pine Orangebanana', 35679, 7748, 209),
(263, 'Twitternation', '6926850011', '12/2/2018', 'Changraban', 'Karole Dilnot', 'Cybill Pendrich', 'Durian Fruit', 17484, 7610, 391),
(264, 'Skynoodle', '8166560518', '11/15/2018', 'Banglaband', 'Ray Poletto', 'Caryl Giovanazzi', 'Beer - Rickards Red', 41608, 3276, 372),
(265, 'Buzzbean', '5470246264', '4/24/2019', 'Akhaura Up', 'Izabel Kamienski', 'Virginia Gergler', 'Macaroons - Two Bite Choc', 36926, 1297, 599),
(266, 'Meevee', '7822212001', '2/26/2019', 'Barsoi–Rad', 'Gerta Brannan', 'Torrin Sell', 'Tea Leaves - Oolong', 25969, 9236, 552),
(267, 'Blogpad', '0051863561', '6/11/2019', 'Burimari r', 'Dodi Crosdill', 'Hilliard Lynn', 'Juice - Grape, White', 48427, 5770, 659),
(268, 'Trupe', '6538223699', '7/4/2019', 'Barsoi–Rad', 'Sebastian De Angelo', 'Cesar Harbin', 'Tofu - Firm', 24276, 6779, 662),
(269, 'Gabtune', '5353834402', '11/14/2018', 'Benapole', 'Ariadne Holtaway', 'Devinne Gibben', 'Truffle Cups Green', 27536, 6661, 724),
(270, 'Ntags', '4917224624', '10/1/2018', 'Barsoi–Rad', 'Moria Alvarez', 'Shanan Rodbourne', 'Soup - Campbells, Minestrone', 38443, 5792, 486),
(271, 'Buzzster', '4194648285', '12/22/2018', 'Changraban', 'Kippie Langlands', 'Myrtia Dewberry', 'Squash - Pepper', 41343, 3713, 934),
(272, 'Rhynoodle', '8328877201', '4/27/2019', 'Akhaura Up', 'Noelyn Flinn', 'Dell Warrender', 'Potatoes - Mini Red', 43544, 7131, 460),
(273, 'Roomm', '4494805661', '1/19/2019', 'Dawki', 'Carline Firebrace', 'Valma Polfer', 'Yogurt - Peach, 175 Gr', 19799, 8378, 695),
(274, 'Vinder', '8812137148', '2/3/2019', 'Benapole', 'Rosene Chandlar', 'Cornall Everitt', 'Flounder - Fresh', 40828, 6953, 848),
(275, 'Skaboo', '5663100342', '5/21/2019', 'Barsoi–Rad', 'Georgena Maddrah', 'Shelby Wonfar', 'Soup - Campbells Pasta Fagioli', 28818, 2218, 255),
(276, 'Fivechat', '1879603462', '11/4/2018', 'Burimari r', 'Truman Naden', 'Trina Bodman', 'Beans - Wax', 32707, 1526, 245),
(277, 'Youspan', '9941977046', '4/14/2019', 'Dawki', 'Berta Girvin', 'Rhodie Hallihane', 'Soup - Knorr, Classic Can. Chili', 39348, 5909, 422),
(278, 'Jaxnation', '6370145157', '10/31/2018', 'Burimari r', 'Luther Netley', 'Suzann Dilliston', 'Pasta - Spaghetti, Dry', 42954, 8335, 711),
(279, 'Fiveclub', '9042224622', '1/28/2019', 'Darshana r', 'Tracey Di Baudi', 'Gracia Glover', 'Sprouts - Peppercress', 13096, 2458, 673);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_expence`
--

CREATE TABLE `monthly_expence` (
  `id` int(11) NOT NULL,
  `exp_date` varchar(20) NOT NULL DEFAULT current_timestamp(),
  `exp_type` varchar(100) DEFAULT NULL,
  `exp_ammount` int(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_info`
--

CREATE TABLE `sale_info` (
  `id` int(11) NOT NULL,
  `sale_product` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `truck_info`
--

CREATE TABLE `truck_info` (
  `id` int(11) NOT NULL,
  `truck_numbre` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arot_info`
--
ALTER TABLE `arot_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_info`
--
ALTER TABLE `lc_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_expence`
--
ALTER TABLE `monthly_expence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_info`
--
ALTER TABLE `sale_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truck_info`
--
ALTER TABLE `truck_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arot_info`
--
ALTER TABLE `arot_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `lc_info`
--
ALTER TABLE `lc_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `monthly_expence`
--
ALTER TABLE `monthly_expence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_info`
--
ALTER TABLE `sale_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `truck_info`
--
ALTER TABLE `truck_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
