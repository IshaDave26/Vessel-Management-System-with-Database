-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 08:06 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vesselinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `silverstone`
--

CREATE TABLE `silverstone` (
  `MMSI` varchar(10) NOT NULL,
  `STATUS` varchar(10) NOT NULL,
  `SPEED` varchar(10) NOT NULL,
  `LON` varchar(10) NOT NULL,
  `LAT` varchar(10) NOT NULL,
  `COURSE` varchar(10) NOT NULL,
  `HEADING` varchar(10) NOT NULL,
  `TIMESTAMP` varchar(30) NOT NULL,
  `SHIP_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `silverstone`
--

INSERT INTO `silverstone` (`MMSI`, `STATUS`, `SPEED`, `LON`, `LAT`, `COURSE`, `HEADING`, `TIMESTAMP`, `SHIP_ID`) VALUES
('636019545', '3', '0', '-96.48912', '27.80348', '149', '256', '2022-09-12T11:25:00', '6254881'),
('636019545', '0', '120', '-96.05791', '26.89968', '142', '145', '2022-09-13T04:35:00', '6254881'),
('636019545', '0', '125', '-82.10194', '19.81414', '99', '102', '2022-09-16T05:55:00', '6254881'),
('636019545', '0', '125', '-77.87353', '18.89686', '103', '102', '2022-09-17T01:24:00', '6254881'),
('636019545', '0', '122', '-62.8142', '13.9802', '104', '105', '2022-09-20T04:41:00', '6254881'),
('636019545', '0', '125', '17.41081', '-35.28376', '101', '110', '2022-10-07T12:46:00', '6254881'),
('636019545', '0', '120', '20.90501', '-36.00523', '87', '87', '2022-10-08T03:55:00', '6254881'),
('636019545', '0', '104', '24.73905', '-34.7062', '63', '64', '2022-10-09T00:45:00', '6254881'),
('636019545', '0', '128', '29.99316', '-33.47295', '60', '60', '2022-10-10T02:39:00', '6254881'),
('636019545', '0', '139', '45.59022', '-14.48296', '35', '35', '2022-10-14T18:37:00', '6254881'),
('636019545', '0', '148', '46.50406', '-13.27723', '36', '36', '2022-10-15T00:36:00', '6254881'),
('636019545', '0', '72', '71.12126', '18.18495', '37', '33', '2022-10-22T09:24:00', '6254881'),
('636019545', '1', '4', '72.39324', '18.90819', '7', '294', '2022-10-23T00:57:00', '6254881'),
('636019545', '5', '0', '72.38934', '18.90492', '100', '19', '2022-10-24T00:06:00', '6254881'),
('636019545', '0', '133', '71.75612', '18.74143', '221', '222', '2022-10-25T01:00:00', '6254881'),
('636019545', '0', '129', '72.77371', '14.03467', '158', '158', '2022-10-26T01:42:00', '6254881'),
('636019545', '0', '121', '75.6479', '8.41122', '148', '150', '2022-10-27T07:18:00', '6254881'),
('311000660', '0', '181', '-65.2055', '19.03418', '102', '102', '2022-09-13T02:31:00', '5345430'),
('311000660', '0', '98', '-63.54143', '18.03113', '270', '270', '2022-09-14T00:31:00', '5345430'),
('311000660', '0', '213', '-65.2571', '18.48', '308', '309', '2022-09-15T00:35:00', '5345430'),
('311000660', '0', '223', '-76.69281', '25.65788', '281', '281', '2022-09-16T10:58:00', '5345430'),
('311000660', '0', '152', '-78.64381', '26.09125', '290', '291', '2022-09-17T01:14:00', '5345430'),
('311000660', '0', '171', '-81.13005', '24.29835', '243', '242', '2022-09-18T04:15:00', '5345430'),
('311000660', '0', '72', '-87.65107', '18.73283', '261', '270', '2022-09-19T11:48:00', '5345430'),
('311000660', '0', '97', '-86.73247', '16.55458', '169', '167', '2022-09-20T08:12:00', '5345430'),
('311000660', '0', '175', '-87.06053', '20.44092', '25', '27', '2022-09-21T10:37:00', '5345430'),
('311000660', '0', '179', '-80.89822', '24.28482', '60', '59', '2022-09-22T20:19:00', '5345430'),
('311000660', '0', '179', '-79.95953', '25.04468', '36', '38', '2022-09-23T00:17:00', '5345430'),
('311000660', '0', '152', '-78.82667', '26.15302', '290', '294', '2022-09-24T00:57:00', '5345430'),
('311000660', '0', '174', '-78.97933', '26.2204', '103', '101', '2022-09-25T00:56:00', '5345430'),
('311000660', '0', '142', '-63.66839', '18.42928', '141', '139', '2022-09-27T07:45:00', '5345430'),
('311000660', '0', '102', '-63.58881', '18.01213', '270', '270', '2022-09-28T00:44:00', '5345430'),
('311000660', '0', '215', '-66.23952', '19.13947', '305', '306', '2022-09-29T00:39:00', '5345430'),
('311000660', '0', '186', '-78.68087', '26.10365', '289', '292', '2022-10-01T00:31:00', '5345430'),
('311000660', '0', '87', '-79.63152', '26.07683', '49', '60', '2022-10-02T00:28:00', '5345430'),
('311000660', '0', '180', '-66.24087', '19.14592', '125', '125', '2022-10-04T11:17:00', '5345430'),
('311000660', '0', '36', '-64.95332', '18.32772', '220', '219', '2022-10-05T00:18:00', '5345430'),
('311000660', '0', '190', '-63.60272', '18.34155', '323', '325', '2022-10-06T00:14:00', '5345430'),
('311000660', '0', '198', '-75.77406', '25.23218', '299', '301', '2022-10-07T17:05:00', '5345430'),
('311000660', '0', '168', '-78.97215', '26.18687', '277', '277', '2022-10-08T02:14:00', '5345430'),
('311000660', '0', '92', '-79.61592', '25.9966', '61', '66', '2022-10-09T00:13:00', '5345430'),
('311000660', '0', '205', '-79.19521', '26.19893', '266', '264', '2022-10-10T00:26:00', '5345430'),
('311000660', '0', '145', '-86.88755', '20.64068', '217', '218', '2022-10-11T09:22:00', '5345430'),
('311000660', '0', '112', '-87.09919', '20.19152', '182', '182', '2022-10-12T00:26:00', '5345430'),
('311000660', '0', '138', '-86.74374', '16.49308', '158', '155', '2022-10-13T07:53:00', '5345430'),
('311000660', '0', '212', '-86.38338', '18.11257', '10', '14', '2022-10-14T00:16:00', '5345430'),
('311000660', '0', '205', '-80.64578', '24.26943', '4', '43', '2022-10-15T00:49:00', '5345430'),
('311000660', '0', '196', '-78.8679', '26.20188', '96', '94', '2022-10-16T01:51:00', '5345430'),
('311000660', '0', '185', '-66.47183', '18.81682', '126', '126', '2022-10-17T18:10:00', '5345430'),
('311000660', '5', '0', '-66.11201', '18.46268', '87', '357', '2022-10-18T00:12:00', '5345430'),
('311000660', '0', '104', '-63.47077', '18.01293', '277', '276', '2022-10-19T00:14:00', '5345430'),
('311000660', '0', '213', '-66.02248', '18.99465', '305', '306', '2022-10-20T00:10:00', '5345430'),
('311000660', '0', '157', '-78.77768', '26.13647', '291', '295', '2022-10-22T00:49:00', '5345430'),
('311000660', '0', '184', '-79.31333', '26.13775', '64', '66', '2022-10-23T00:45:00', '5345430'),
('311000660', '0', '146', '-63.75499', '18.53458', '144', '141', '2022-10-25T07:55:00', '5345430'),
('311000660', '0', '107', '-63.54295', '18.01163', '270', '269', '2022-10-26T00:56:00', '5345430'),
('311000660', '0', '219', '-66.368', '19.22575', '305', '306', '2022-10-27T00:56:00', '5345430'),
('419738000', '0', '61', '69.72559', '22.67149', '20', '37', '2022-09-13T13:27:00', '656422'),
('419738000', '5', '0', '69.69434', '22.7382', '324', '269', '2022-09-14T02:56:00', '656422'),
('419738000', '5', '0', '70.22613', '22.98562', '221', '158', '2022-09-15T14:42:00', '656422'),
('419738000', '5', '0', '70.2261', '22.98559', '221', '158', '2022-09-16T04:24:00', '656422'),
('419738000', '0', '119', '70.09004', '20.63179', '108', '108', '2022-09-17T05:33:00', '656422'),
('419738000', '0', '115', '75.902', '9.988747', '121', '120', '2022-09-20T18:32:00', '656422'),
('419738000', '0', '89', '76.206', '9.967254', '85', '85', '2022-09-21T00:35:00', '656422'),
('419738000', '0', '113', '76.52966', '8.524794', '139', '140', '2022-09-22T02:01:00', '656422'),
('419738000', '5', '0', '78.21658', '8.750036', '257', '153', '2022-09-23T00:11:00', '656422'),
('419738000', '0', '126', '78.26797', '8.710261', '140', '142', '2022-09-24T00:16:00', '656422'),
('419738000', '0', '125', '72.77712', '13.91145', '324', '322', '2022-09-26T01:44:00', '656422'),
('419738000', '1', '2', '69.7093', '22.63588', '218', '314', '2022-09-28T10:57:00', '656422'),
('419738000', '1', '0', '69.70394', '22.63674', '333', '59', '2022-09-29T00:24:00', '656422'),
('419738000', '5', '0', '69.6991', '22.73817', '277', '270', '2022-09-30T01:53:00', '656422'),
('419738000', '1', '0', '70.06915', '22.76845', '214', '324', '2022-10-01T01:05:00', '656422'),
('419738000', '1', '0', '70.0694', '22.77054', '337', '254', '2022-10-02T00:17:00', '656422'),
('419738000', '5', '0', '70.22607', '22.98564', '177', '158', '2022-10-03T09:15:00', '656422'),
('419738000', '0', '124', '70.03571', '22.76314', '221', '220', '2022-10-04T04:36:00', '656422'),
('419738000', '0', '135', '70.84761', '20.40134', '91', '84', '2022-10-05T01:20:00', '656422'),
('419738000', '0', '120', '70.88651', '19.82185', '223', '224', '2022-10-06T00:01:00', '656422'),
('419738000', '0', '115', '76.00327', '9.953056', '130', '129', '2022-10-08T10:14:00', '656422'),
('419738000', '5', '0', '76.25053', '9.976867', '73', '65', '2022-10-09T00:43:00', '656422'),
('419738000', '0', '121', '76.63297', '8.099359', '124', '125', '2022-10-10T09:16:00', '656422'),
('419738000', '0', '83', '78.29071', '8.695025', '303', '306', '2022-10-11T00:51:00', '656422'),
('419738000', '0', '0', '78.21652', '8.750183', '256', '153', '2022-10-12T00:26:00', '656422'),
('419738000', '0', '120', '70.04115', '18.98907', '341', '343', '2022-10-15T07:10:00', '656422'),
('419738000', '0', '118', '68.79552', '22.18353', '10', '12', '2022-10-16T00:07:00', '656422'),
('419738000', '5', '0', '69.69524', '22.7382', '271', '269', '2022-10-17T03:07:00', '656422'),
('419738000', '5', '0', '70.22612', '22.98553', '264', '158', '2022-10-19T04:18:00', '656422'),
('419738000', '0', '100', '68.84998', '22.46231', '200', '201', '2022-10-20T00:08:00', '656422'),
('419738000', '0', '69', '71.5011', '20.90253', '12', '18', '2022-10-21T08:20:00', '656422'),
('419738000', '0', '115', '70.74597', '19.30126', '181', '179', '2022-10-22T04:46:00', '656422'),
('419738000', '0', '110', '73.32003', '13.22501', '141', '141', '2022-10-23T16:32:00', '656422'),
('419738000', '5', '0', '76.25034', '9.976932', '242', '65', '2022-10-25T03:39:00', '656422'),
('419738000', '0', '113', '75.92603', '8.734965', '149', '146', '2022-10-26T02:44:00', '656422'),
('419738000', '0', '112', '78.35085', '8.642937', '310', '310', '2022-10-27T00:43:00', '656422'),
('273137100', '1', '1', '33.11586', '69.06552', '100', '359', '2022-09-19T11:03:00', '901605'),
('273137100', '1', '0', '33.11541', '69.06558', '0', '330', '2022-09-20T01:05:00', '901605'),
('273137100', '1', '1', '33.11666', '69.06593', '37', '296', '2022-09-21T01:47:00', '901605'),
('273137100', '1', '0', '33.11713', '69.06699', '0', '250', '2022-09-22T02:02:00', '901605'),
('273137100', '1', '0', '33.11687', '69.06676', '0', '240', '2022-09-23T00:26:00', '901605'),
('273137100', '1', '0', '33.11644', '69.06707', '0', '215', '2022-09-24T03:13:00', '901605'),
('273137100', '0', '131', '31.48609', '70.90098', '307', '308', '2022-09-25T00:46:00', '901605'),
('273137100', '0', '131', '16.81739', '70.41852', '229', '228', '2022-09-26T00:12:00', '901605'),
('273137100', '0', '166', '4.67569', '64.13387', '196', '194', '2022-09-27T07:36:00', '901605'),
('273137100', '0', '164', '4.029747', '59.67448', '181', '178', '2022-09-28T00:29:00', '901605'),
('273137100', '0', '134', '11.61919', '57.15215', '158', '154', '2022-09-29T00:20:00', '901605'),
('273137100', '0', '136', '14.46268', '55.2795', '39', '39', '2022-09-30T00:14:00', '901605'),
('273137100', '0', '134', '21.04687', '58.53299', '34', '36', '2022-10-01T00:22:00', '901605'),
('273137100', '0', '62', '29.38281', '60.02529', '95', '92', '2022-10-02T00:13:00', '901605'),
('273137100', '5', '0', '30.22574', '59.89193', '0', '33', '2022-10-03T00:55:00', '901605'),
('273137100', '5', '0', '30.22572', '59.89191', '0', '34', '2022-10-04T00:43:00', '901605'),
('273137100', '5', '0', '30.22572', '59.89194', '0', '33', '2022-10-05T00:41:00', '901605'),
('273137100', '5', '0', '30.22573', '59.89192', '0', '33', '2022-10-06T00:17:00', '901605'),
('273137100', '5', '0', '30.22575', '59.89193', '0', '33', '2022-10-07T00:25:00', '901605'),
('273137100', '5', '2', '30.22574', '59.89199', '353', '34', '2022-10-08T02:15:00', '901605'),
('273137100', '0', '105', '29.82912', '59.95619', '292', '292', '2022-10-09T12:05:00', '901605'),
('273137100', '0', '165', '23.76818', '59.69932', '254', '253', '2022-10-10T00:01:00', '901605'),
('273137100', '0', '161', '14.96603', '55.55693', '251', '252', '2022-10-11T00:28:00', '901605'),
('273137100', '0', '165', '10.98127', '57.77722', '320', '318', '2022-10-12T00:36:00', '901605'),
('273137100', '0', '174', '4.18192', '61.72081', '3', '0', '2022-10-13T00:35:00', '901605'),
('273137100', '0', '177', '9.913335', '67.94907', '1', '359', '2022-10-14T00:43:00', '901605'),
('273137100', '0', '168', '26.32225', '72.04728', '66', '67', '2022-10-15T00:38:00', '901605');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
