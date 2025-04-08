-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2020 at 07:34 AM
-- Server version: 5.7.20
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `farmer_assistance_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL,
  `cart_user_id` varchar(255) NOT NULL,
  `cart_product_id` varchar(255) NOT NULL,
  `cart_price_per_unit` varchar(255) NOT NULL,
  `cart_quantity` varchar(255) NOT NULL,
  `cart_total` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(10) unsigned NOT NULL,
  `city_name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Mumbai'),
(2, 'Delhi'),
(3, 'Chenai'),
(4, 'Banglore'),
(5, 'Varanasi'),
(6, 'Kolkatta');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_notification_id` varchar(255) NOT NULL,
  `comment_description` text NOT NULL,
  `comment_name` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_notification_id`, `comment_description`, `comment_name`, `comment_email`) VALUES
(1, '10', 'Stating that he stood by his statements in his controversial interview made in Delhi during a journalism awards ceremony, an unfazed Khan said: ?To all those people who are calling me anti-national, I would like to say that I am proud to be Indian, and I do not need anyone?s permission nor endorsement for that.?\n', 'Kaushal Kishore', 'kaushal@osscube.com'),
(2, '10', 'Unperturbed by the stinging criticism from the BJP, and other Hindu groups over his remarks on the raging intolerance debate, actor Aamir Khan on Wednesday said he or his wife Kiran Rao had no intention of leaving India and his love for the country required no endorsements from anyone. \n', 'Amit Kumar', 'amit@osscube.com'),
(3, '10', 'Anyone implying the opposite has either not seen my interview, or is deliberately trying to distort what I have said. India is my country, I love it, I feel fortunate for being born here, and this is where I am staying,? said Mr. Khan in a statement that cited Rabindranath Tagore?s famous poem ?Where the mind is without fear', 'Sushma Singh', 'sushma@osscube.com'),
(4, '10', 'I love it, I feel fortunate for being born here, and this is where I am staying,? said Mr. Khan in a statement that cited Rabindranath Tagore?s', 'Sumit Sinha', 'sumit@gmail.com'),
(5, '10', 'Aamir Khan on Wednesday said he or his wife Kiran Rao had no intention of leaving India and his love for the country required no endorsements from anyone.', 'Suman Srivastava', 'suman@gmail.com'),
(6, '1', 'How did Gandhi discover his own funny bone? He quips, ?I would watch a lot of Jandhyala?s films, I would see the same film many times and would connect with it. I was in a serious zone once but after Karmara Devuda, I realised I was good at fun films. Express Raja is a situational comedy. I wrote it with an intention of eliciting laughter and fun. ', 'Rahul Kumar', 'rahul@gmail.com'),
(7, '5', 'adsf', 'Kaushak', 'asfdg');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`) VALUES
(1, 'Agricutural'),
(2, 'Lettuce'),
(3, 'Tata Flower'),
(4, 'Organic');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_mobile` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_city` varchar(255) NOT NULL,
  `customer_state` varchar(255) NOT NULL,
  `customer_pincode` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_mobile`, `customer_email`, `customer_password`, `customer_address`, `customer_city`, `customer_state`, `customer_pincode`) VALUES
(1, 'Amit Kumar', '9876543212', 'amit@gmail.com', 'test', 'Allahabad', 'Mumbai', '4', '201301'),
(2, 'Kaushal Kishore', '9183769868', 'kaushal.rahuljaiswal@gmail.com', 'test', 'A : 42/6 Sector 62', 'Noida', '2', '26101'),
(3, 'Amit', '9876543212', 'rahul@gmail.com', 'test', 'Test', 'Test', '3', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'Query Solvers'),
(2, 'Farming Assistance '),
(3, 'Customer Support'),
(4, 'Farming Experts');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_role` varchar(255) NOT NULL,
  `employee_sal` varchar(100) NOT NULL,
  `employee_first_name` varchar(100) NOT NULL,
  `employee_middle_name` varchar(100) NOT NULL,
  `employee_last_name` varchar(100) NOT NULL,
  `employee_gender` varchar(100) NOT NULL,
  `employee_address` varchar(100) NOT NULL,
  `employee_village` varchar(100) NOT NULL,
  `employee_state` varchar(100) NOT NULL,
  `employee_country` varchar(100) NOT NULL,
  `employee_landline` varchar(100) NOT NULL,
  `employee_mobile` varchar(100) NOT NULL,
  `employee_email` varchar(100) NOT NULL,
  `employee_status` varchar(255) NOT NULL,
  `employee_deparment` varchar(255) NOT NULL,
  `employee_dob` varchar(255) NOT NULL,
  `employee_nationalty` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1017 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_role`, `employee_sal`, `employee_first_name`, `employee_middle_name`, `employee_last_name`, `employee_gender`, `employee_address`, `employee_village`, `employee_state`, `employee_country`, `employee_landline`, `employee_mobile`, `employee_email`, `employee_status`, `employee_deparment`, `employee_dob`, `employee_nationalty`) VALUES
(1001, '1', '1', 'Amit', 'Kumar', 'Singh', 'Male', 'A : 42/6', 'Ghaziabad', '4', '1', 'Uttar Pradesh', '09876543212', 'kaushal@gmail.com', '1', '1', '12 January, 2014', 'Indian'),
(1002, '2', '2', 'Kaushal', 'Kishore', 'Jaiswal', 'Male', 'A : 42/6', 'Ghaziabad', '1', '1', 'Uttar Pradesh', '09876543212', 'kaushal.rahuljaiswal@gmail.com', '1', '3', '7 July,1988', 'Indian'),
(1003, '3', '1', 'Sumit', 'Kumar', 'Aggarwal', 'Male', 'A : 42/6', 'Ghaziabad', '1', '1', 'Uttar Pradesh', '09876543212', 'kishore@gmail.com', '1', '1', '12 January, 1988', 'Indian'),
(1014, '2', '1', 'Anuj', 'Kumar', 'Dubej', 'Male', 'A : 42/6 Sector 62', 'Bhabua (Kaimur)', '1', '1', '9876543212', '9876543212', 'anuj@gmail.com', '1', '1', '12 January 1985', 'Indian'),
(1015, '3', '1', 'Amit', 'Kumar', 'Rastogi', 'Male', 'A : 42/6', 'Ghaziabad', '1', '1', '987654312', '8765432123', 'amit@gmail.com', '1', '3', '12 January, 1988', 'Indian'),
(1016, '3', '1', 'Neeraj', 'Kumar', 'Singh', 'Male', 'Allahabad', 'Allahabad', '4', '1', '120345613421', '9876543212', 'neeraj@gmail.com', '1', '2', '1 July,1988', 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `login_id` int(11) NOT NULL,
  `login_emp_id` int(11) NOT NULL,
  `login_user` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `login_level` int(11) NOT NULL DEFAULT '3',
  `login_email` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_emp_id`, `login_user`, `login_password`, `login_level`, `login_email`) VALUES
(1, 1001, 'admin', 'test', 1, 'admin@gmail.com'),
(2, 1002, 'expert', 'test', 2, 'reporter@gmail.com'),
(3, 1003, 'farmer', 'test', 3, 'employee@gmail.com'),
(21, 1014, 'anuj', 'test', 3, 'anuj@gmail.com'),
(22, 1015, 'kasuhal', '123456', 4, 'amit@gmail.com'),
(23, 1016, 'neeraj', 'test', 3, 'neeraj@gmail.com'),
(24, 0, '11', '12', 2, '6'),
(25, 0, '11', '12', 2, '6'),
(26, 0, '11', '12', 2, '6'),
(27, 1017, '11', '12', 2, '6'),
(28, 1018, '11', '12', 2, '6'),
(29, 1019, '11', '12', 2, '6'),
(30, 1020, 'rrr', 'rrr', 3, '2345');

-- --------------------------------------------------------

--
-- Table structure for table `mode`
--

CREATE TABLE IF NOT EXISTS `mode` (
  `mode_id` int(11) NOT NULL,
  `mode_title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mode`
--

INSERT INTO `mode` (`mode_id`, `mode_title`) VALUES
(1, 'Train'),
(2, 'Bus'),
(3, 'Car'),
(4, 'Flight');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE IF NOT EXISTS `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) NOT NULL,
  `notification_title` varchar(255) NOT NULL,
  `notification_image` varchar(255) NOT NULL,
  `notification_description` text NOT NULL,
  `notification_date` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `notification_title`, `notification_image`, `notification_description`, `notification_date`) VALUES
(1, 'Govt to give 50% subsidy for fruit', 'n1.jpeg', 'The government has issued guidelines to give 50% subsidy in a fixed timeframe for storing and transporting fruit and vegetables to prevent post-harvest losses and distress sale by farmers when prices fall.\n\nSubsidy will be disbursed if the price in notified production clusters falls below the average of the preceding three years or if it falls more than 15% from last year’s price at the time of harvest. It will also be given if the price falls below the benchmark price for procurement, fo ..\n\nHe chats with us during the post production and reflects on the people who influenced him. ?My dad Merlapaka Murali is a writer, he had written 24 novels and is a contemporary of Yandamuri Veerendranath. He would lure me with Rs. 25 for reading a book and gradually I came to a stage where I would ask him for the same money to buy a book. I was a voracious reader and got a grip over the language soon. Along with my dad?s writings, I was also influenced by works of Chalam, Sri Sri and Butcchi Babu.?\n\nAbout films, he says, ?I always wanted to direct film and I studied in LV Prasad institute after my graduation to study cinema.?\n\nAt the institute, in between the studies Gandhi made a short film Karmara Devuda and uploaded it on the net, after which he got plenty of offers to direct a film. ?That built my confidence and I immediately got to making Venkatadri Express. It was a link-based film that was very thrilling. It took time to move on to Express Raja as I got hitched and took time to settle down,? he says.\n\nSharwanand is known to be a serious and brooding actor, how did Gandhi get convinced to cast him in this comedy thriller? Gandhi cites Run Raja Run as ample proof that Sharwanand can pull off this story too with ease.\n\nHow did Gandhi discover his own funny bone? He quips, ?I would watch a lot of Jandhyala?s films, I would see the same film many times and would connect with it. I was in a serious zone once but after Karmara Devuda, I realised I was good at fun films. Express Raja is a situational comedy. I wrote it with an intention of eliciting laughter and fun. The characters in the story have been inspired by the people I bumped into or have observed at some point of time in my life. For instance Sapatagiri in Venkatadri Express, he reminded me of a friend who would never answer the phone because he loved listening to the caller tune! There is another special character you will like in this film. It is a partial road movie and actors like Uvasi, Saptagiri and Brahmaji will give you a good time. It is releasing on January 14.?', '16 June,2020'),
(4, 'Crop Insurance Scheme', 'n2.jpeg', 'Satya Sriram is one of our promising Carnatic vocalists well trained by Akella Mallikarjuna Sarma. Sriram?s father Eswara Prasad is a well-known bhagavatar in Bhajana sampradayam and his mother too is a musician. With such influence all around, no wonder Sriram too shaped himself as a vocalist of high calibre. The concert she gave for the music sabha ?Sampradaya? functioning from A.S. Rao Nagar?s welfare Association grounds turned out to be a classic one.\r\n\r\nSatya Sriram is blessed with rich vocal culture and his rendition style is generally animated carrying the mood of the sahitya, being a singer for his father?s bhajan shows. On this occasion he was accompanied by Oruganti Rajasekhar on violin and Ch. Ramakrishna on mridangam, both seasoned artistes. Sriram gave a traditional opening to his concert with Vasantha varnam Ninnukori, he presented in two speeds with brief swarakalpana in second speed. Parameshwara in Naata of Muthuswamy Dikshithar that followed gained significance for his impressive presentation of Swarakalpana taking pallavi line. Narasimha Mamava in Aarabhi of Swati Tirunal was a simple kirtana presentation before he went for his sub-main number Sri Valli Devasena Pathe in Natabhairavi of Papanasan Sivan. He presented ragalapana and swarakalpana too in this number.\r\n\r\nIn the second part of the concert, Sriram rendered Anandamrutakarshini in Amritavarshini of Dikshithar and Manasaa Etulortune of Thyagaraja in Malayamarutam as if preparing ground for the rendition of his main number Nidhichala Sukhama in Kalyani of Thyagaraja. Neraval and Swarakalpana too were gone through displaying good command. The accompanists lent excellent support all through the concert.\r\n\r\nThe concert was ended with a tillana in Behag of Mangalampalli Balamuralikrishna and also Jaya Jaya Bala Gopala ? a tarangam of Narayana Teertha in Abheri.', '16 June,2020'),
(5, 'Exports of Crops', 'n3.jpeg', 'Bihar will go dry from April 1, 2016, Chief Minister Nitish Kumar announced on Thursday.\r\n\r\nThe Chief Minister made the announcement ? a part of his election pledge ? at an official function to mark Prohibition Day here.\r\n\r\nHe said the poorest of the poor had been consuming liquor, badly hitting their families and their children?s education.\r\n\r\nIncreasing liquor consumption was also a major cause for domestic violence, particularly against women, and had contributed to a rise in crimes.\r\n\r\n?Women are suffering more than anyone else due to increasing liquor consumption,? he said.\r\n\r\nAn official at the Chief Minister?s office said Mr. Kumar took the decision after a high-level meeting with officials here.\r\n\r\nIn July, Mr. Kumar had declared that prohibition would be imposed if he retained power in the assembly elections.\r\n\r\nBihar Excise and Prohibition Minister Abdul Jalil Mastan had earlier said that the state government would soon take steps to impose a liquor ban.\r\n\r\nBharatiya Janata Party leader Sushil Kumar Modi on Wednesday vowed to support a liquor ban.\r\n\r\nThe decision is expected to derail the government?s financial health.\r\n\r\nThe excise department went into an overdrive in 2007 following a new policy and started issuing licences for marketing liquor across the state.\r\n\r\nThe revenue collection of excise department registered a more than 10-fold jump, from Rs.319 crore in 2005-06 to Rs.3,650 crore in 2014-15.', '16 June,2020');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL,
  `order_user_id` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_total` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `order_user_id`, `order_date`, `order_status`, `order_total`) VALUES
(3, '1', 'Thu Aug 13 19:35:46 IST 2015', '4', '10000'),
(4, '3', 'Thu Aug 13 19:38:52 IST 2015', '4', '10000'),
(5, '3', 'Fri Aug 14 10:50:03 IST 2015', '3', '10000'),
(6, '3', 'Fri Aug 14 17:30:52 IST 2015', '2', '10000'),
(7, '3', 'Fri Aug 14 17:35:54 IST 2015', '3', '10000'),
(8, '3', 'Fri Aug 14 17:41:55 IST 2015', '2', '10000'),
(9, '3', 'Fri Aug 14 17:44:02 IST 2015', '2', '10000'),
(10, '3', 'Fri Aug 14 17:44:12 IST 2015', '2', '10000'),
(11, '3', 'Fri Aug 14 21:21:38 IST 2015', '4', '10000'),
(12, '3', 'Fri Aug 14 21:36:10 IST 2015', '2', '1170'),
(13, '3', 'Sat Aug 15 21:52:59 IST 2015', '2', '3600'),
(14, '3', 'Sat Aug 15 22:45:05 IST 2015', '2', '1170'),
(15, '3', 'Sat Aug 15 23:34:03 IST 2015', '2', '5800'),
(16, '1', 'Sun Apr 30 11:43:08 IST 2017', '1', '1200'),
(17, '1', 'Sun Apr 30 12:16:04 IST 2017', '2', '960'),
(18, '1', 'Sun Jun 14 12:24:39 IST 2020', '2', '2920');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE IF NOT EXISTS `order_item` (
  `oi_id` int(11) NOT NULL,
  `oi_order_id` varchar(255) NOT NULL,
  `oi_product_id` varchar(255) NOT NULL,
  `oi_price_per_unit` varchar(255) NOT NULL,
  `oi_cart_quantity` varchar(255) NOT NULL,
  `oi_total` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`oi_id`, `oi_order_id`, `oi_product_id`, `oi_price_per_unit`, `oi_cart_quantity`, `oi_total`) VALUES
(1, '1', '2', '1100', '1', '1100'),
(2, '1', '1', '1200', '1', '1200'),
(3, '1', '4', '1170', '4', '4680'),
(4, '2', '2', '1100', '1', '1100'),
(5, '2', '1', '1200', '1', '1200'),
(6, '2', '4', '1170', '4', '4680'),
(7, '4', '1', '1200', '1', '1200'),
(8, '4', '4', '1170', '2', '2340'),
(9, '5', '1', '1200', '6', '7200'),
(10, '5', '4', '1170', '5', '5850'),
(11, '5', '2', '1100', '2', '2200'),
(12, '6', '2', '1100', '1', '1100'),
(13, '6', '1', '1200', '1', '1200'),
(14, '8', '5', '1170', '1', '1170'),
(15, '9', '5', '1170', '1', '1170'),
(16, '11', '6', '1170', '3', '3510'),
(17, '11', '4', '1170', '5', '5850'),
(18, '12', '5', '1170', '1', '1170'),
(19, '13', '1', '1200', '3', '3600'),
(20, '14', '5', '1170', '1', '1170'),
(21, '15', '2', '1100', '2', '2200'),
(22, '15', '1', '1200', '1', '1200'),
(23, '15', '7', '1200', '2', '2400'),
(24, '16', '4', '340', '1', '340'),
(25, '16', '7', '320', '1', '320'),
(26, '16', '1', '320', '1', '320'),
(27, '16', '5', '220', '1', '220'),
(28, '17', '1', '320', '1', '320'),
(29, '17', '7', '320', '2', '640'),
(30, '18', '7', '320', '1', '320'),
(31, '18', '9', '100', '1', '100'),
(32, '18', '2', '500', '1', '500'),
(33, '18', '1', '2000', '1', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE IF NOT EXISTS `order_status` (
  `os_id` int(11) NOT NULL,
  `os_title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`os_id`, `os_title`) VALUES
(1, 'Confirmed'),
(2, 'Processing'),
(3, 'Packed'),
(4, 'Dispatched');

-- --------------------------------------------------------

--
-- Table structure for table `pcomments`
--

CREATE TABLE IF NOT EXISTS `pcomments` (
  `pcomment_id` int(11) NOT NULL,
  `pcomment_product_id` varchar(255) NOT NULL,
  `pcomment_description` text NOT NULL,
  `pcomment_name` varchar(255) NOT NULL,
  `pcomment_email` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pcomments`
--

INSERT INTO `pcomments` (`pcomment_id`, `pcomment_product_id`, `pcomment_description`, `pcomment_name`, `pcomment_email`) VALUES
(7, '2', 'adfd', 'asdfasdf', 'adsf'),
(8, '2', 'adfd', 'asdfasdf', 'adsf'),
(9, '2', 'This is my comment 1.\r\nThis is my comment 2.\r\nThis is my comment 3.', 'Kaushal Kishroe', 'kaushal@gmal.com'),
(10, '3', 'asdf\r\n\r\nads\r\nf\r\nasdf', 'sadfasf', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL,
  `product_vendor_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type_id` varchar(255) NOT NULL,
  `product_company_id` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_stock` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_vendor_id`, `product_name`, `product_type_id`, `product_company_id`, `product_price`, `product_image`, `product_description`, `product_stock`) VALUES
(1, '1003', 'Kobyashi', '2', '1', '2000', 'kobyashi seeds.jpeg', 'A supermarket is a self-service shop offering a wide variety of food, beverages and household products, organized into sections and shelves. It is larger and has a wider select', '9'),
(2, '1003', 'Home Farming', '1', '1', '500', 'home farming Seeds.jpeg', 'A supermarket is a self-service shop offering a wide variety of food, beverages and household products, organized into sections and shelves. It is larger and has a wider select', '92'),
(3, '1003', 'Gralic Seeds', '4', '2', '800', 'garlic seeds.jpeg', 'A supermarket is a self-service shop offering a wide variety of food, beverages and household products, organized into sections and shelves. It is larger and has a wider select', '200'),
(4, '1003', 'Seeds Medicine', '4', '1', '1500', 'Insecticides Medicine.jpeg', 'A supermarket is a self-service shop offering a wide variety of food, beverages and household products, organized into sections and shelves. It is larger and has a wider select', '90'),
(5, '1003', 'Hybrid', '1', '3', '400', 'hybrid seeds.jpeg', 'A supermarket is a self-service shop offering a wide variety of food, beverages and household products, organized into sections and shelves. It is larger and has a wider select', '15'),
(6, '1003', 'Vegetables', '2', '1', '1200', 'vegetable seed.jpeg', 'A supermarket is a self-service shop offering a wide variety of food, beverages and household products, organized into sections and shelves. It is larger and has a wider select', '15'),
(7, '1003', 'Vitamin Seeds', '2', '3', '400', 'Vitamin Seeds.jpeg', 'A supermarket is a self-service shop offering a wide variety of food, beverages and household products, organized into sections and shelves. It is larger and has a wider select', '97'),
(8, '1003', 'Jute Orgainc', '1', '2', '2500', 'jute organic.jpeg', 'A supermarket is a self-service shop offering a wide variety of food, beverages and household products, organized into sections and shelves. It is larger and has a wider select', '97'),
(9, '1003', 'Grain Seeds', '3', '2', '1800', 'grain.jpeg', 'A supermarket is a self-service shop offering a wide variety of food, beverages and household products, organized into sections and shelves. It is larger and has a wider select', '99'),
(10, '1003', 'Zukur Seeds', '3', '3', '1500', 'zukur seeds.jpeg', 'A supermarket is a self-service shop offering a wide variety of food, beverages and household products, organized into sections and shelves. It is larger and has a wider select', '12'),
(11, '1003', 'Grainss', '1', '2', '100', 'home farming Seeds.jpeg', 'Namkeen', '12'),
(12, '1003', 'Lettuce Seeds', '2', '3', '1300', 'Lettuce.jpeg', 'Lettuce', '12');

-- --------------------------------------------------------

--
-- Table structure for table `qcomments`
--

CREATE TABLE IF NOT EXISTS `qcomments` (
  `qcomment_id` int(11) NOT NULL,
  `qcomment_question_id` varchar(255) NOT NULL,
  `qcomment_description` text NOT NULL,
  `qcomment_name` varchar(255) NOT NULL,
  `qcomment_email` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qcomments`
--

INSERT INTO `qcomments` (`qcomment_id`, `qcomment_question_id`, `qcomment_description`, `qcomment_name`, `qcomment_email`) VALUES
(7, '1', 'Explain more about the anassers', 'Kaushal Kishore', 'kaushal@gmail.com'),
(8, '1', 'Good Questions and answers', 'Rahul Kumar', 'rahul@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(11) NOT NULL,
  `question_user_id` varchar(255) NOT NULL,
  `question_title` varchar(255) NOT NULL,
  `question_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `question_user_id`, `question_title`, `question_description`) VALUES
(1, '1003', 'What sprays/pesticides/herbicides do you use?', 'Some farmers markets have certain rules and restrictions about the types farming practices they expect from their vendors. But not all do. Ask what kinds of synthetic sprays, pesticides and herbicides farmers use to grow and tend to their produce.\n\nA recent meta-analysis of 343 studies concluded that organic produce is higher in antioxidants, lower in pesticide residues and lower in heavy metals than conventional. Reducing our exposure by purchasing pesticide-free fruits and veggies is a fundamental place to start.'),
(2, '1003', ' What kind of pest control measures do you use', 'Some farmers may not use pesticides on a regular basis, but only in special circumstances when there is an infestation or maybe at the beginning of the growing season. Inquire about this, as well as the farmer''s approach to dealing with pests. Pest control is a part of farming no matter what - but methods to deal with it differ.\n\nDo they choose certain varieties of plants that are more resistant to pests? Do they create an environment that attracts beneficial insects that eat the pests? Do they rotate crops and have other animals on the farm that deal with pests? (What''s a pest to us is dinner to another!)'),
(3, '1003', 'What kind of soil do you use?', 'Fruits and vegetables get their nutrients from the soil - and that means a fruit or veggie is only as nourishing as the soil in which it was grown.\r\n\r\nGreat, fertile soil is its own ecosystem, with microorganisms and organisms that work together to break down and create nutrient-rich matter. Soil also works within the larger ecosystem of the farm, including the animals that fertilize or graze, the birds in the area, the water used, the sunshine, and more. A good farmer will understand this symbiotic environment and work to create soil that is nourishing.'),
(4, '1003', ' Do you have any certifications?', 'Ask your farmer if he or she has any certifications, such as certified organic or any animal welfare certifications if the farm raises animals. These certifications will vary from country to country.\r\n\r\nNow, normally I say that labels are for tin cans and certifications aren''t the whole story of a farm. But it''s good to know if your farmer has pursued any relevant certifications.\r\n\r\nIt''s definitely possible that a farm practices organic and biodynamic growing techniques, but can''t afford the expensive certification practice. That''s why it''s equally important to ask about how they grow their food.'),
(5, '1003', 'What variety of crops do you grow?', 'Ask your farmer about the kinds of produce they grow throughout the year and their crop rotation methods. This gives you an indication of whether they are trying to support soil fertility, as different plants take certain nutrients from the soil. Crop rotation allows the soil to rest and replenish.\r\n\r\nAlso, asking about what crops they grow tells you what you have to look forward to and if that farmer grows the types of produce you like. There are a cornucopia of fruits and veggies in the world, and maybe that farmer focuses on foods that aren''t your faves.'),
(6, '1003', ' Do you use GMO seeds?', 'Just as the soil is important, so are the types of seeds that are planted in that soil. You know that I am not a proponent of genetically modified foods - you can learn why and how to have a conversation about them if you''re interested.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` int(11) NOT NULL,
  `role_title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_title`) VALUES
(2, 'Expert'),
(3, 'Farmer');

-- --------------------------------------------------------

--
-- Table structure for table `salutions`
--

CREATE TABLE IF NOT EXISTS `salutions` (
  `sl_id` int(11) NOT NULL,
  `sl_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salutions`
--

INSERT INTO `salutions` (`sl_id`, `sl_name`) VALUES
(1, 'Mr.'),
(2, 'Mrs.');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
  `skill_id` int(11) NOT NULL,
  `skill_emp_id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Maharastra'),
(2, 'Gujrat'),
(3, 'Bihar'),
(4, 'Uttar Pradesh'),
(5, 'Delhi'),
(6, 'Haryana');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Active'),
(2, 'Blocked');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stock_id` int(11) NOT NULL,
  `stock_product_id` varchar(255) NOT NULL,
  `stock_number` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `stock_product_id`, `stock_number`) VALUES
(1, '2', '100'),
(2, '3', '100');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `type_description`) VALUES
(1, 'Crops', 'Crops'),
(2, 'Animals', 'Animals'),
(3, 'Vegetables', 'Vegetables'),
(4, 'Fruits', 'Fruits'),
(5, 'Agriculture Equipments', 'Agriculture Equipments'),
(6, 'Fertilisers', 'Fertilisers'),
(7, 'Seeds', 'Seeds'),
(8, 'Pesticides', 'Pesticides');

-- --------------------------------------------------------

--
-- Table structure for table `warning`
--

CREATE TABLE IF NOT EXISTS `warning` (
  `warning_id` int(11) NOT NULL,
  `warning_user_id` varchar(255) NOT NULL,
  `warning_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warning`
--

INSERT INTO `warning` (`warning_id`, `warning_user_id`, `warning_description`) VALUES
(1, '1002', 'Dont enter fake comments on products, else your account will be blocker'),
(2, '1003', 'Dont enter fake comments on products, else your account will be blocker'),
(3, '1003', 'Mutliple wrong comments will be blocked'),
(4, '1003', 'Dont post fake products '),
(5, '1002', 'This is the last warning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `mode`
--
ALTER TABLE `mode`
  ADD PRIMARY KEY (`mode_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`oi_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`os_id`);

--
-- Indexes for table `pcomments`
--
ALTER TABLE `pcomments`
  ADD PRIMARY KEY (`pcomment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `qcomments`
--
ALTER TABLE `qcomments`
  ADD PRIMARY KEY (`qcomment_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `salutions`
--
ALTER TABLE `salutions`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `warning`
--
ALTER TABLE `warning`
  ADD PRIMARY KEY (`warning_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1017;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `mode`
--
ALTER TABLE `mode`
  MODIFY `mode_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `oi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `os_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pcomments`
--
ALTER TABLE `pcomments`
  MODIFY `pcomment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `qcomments`
--
ALTER TABLE `qcomments`
  MODIFY `qcomment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `salutions`
--
ALTER TABLE `salutions`
  MODIFY `sl_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `warning`
--
ALTER TABLE `warning`
  MODIFY `warning_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
