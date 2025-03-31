-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 01:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hikila inne`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrativesupport`
--

CREATE TABLE `administrativesupport` (
  `Eid` int(11) NOT NULL,
  `AStype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrativesupport`
--

INSERT INTO `administrativesupport` (`Eid`, `AStype`) VALUES
(1, 'Finance'),
(2, 'HR'),
(3, 'Operations'),
(4, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `airlinerelation`
--

CREATE TABLE `airlinerelation` (
  `AirlineID` varchar(100) NOT NULL,
  `AName` varchar(100) DEFAULT NULL,
  `Code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airlinerelation`
--

INSERT INTO `airlinerelation` (`AirlineID`, `AName`, `Code`) VALUES
('A1', 'SriLankan Airlines', 'UL'),
('A2', 'Emirates', 'EK'),
('A3', 'Qatar Airways', 'QR'),
('A4', 'Singapore Airlines', 'SQ');

-- --------------------------------------------------------

--
-- Table structure for table `airportairline`
--

CREATE TABLE `airportairline` (
  `APname` varchar(100) NOT NULL,
  `AirlineID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airportairline`
--

INSERT INTO `airportairline` (`APname`, `AirlineID`) VALUES
('Bandaranaike International', 'A1'),
('Colombo Ratmalana', 'A3'),
('Jaffna International', 'A4'),
('Mattala Rajapaksa International', 'A2');

-- --------------------------------------------------------

--
-- Table structure for table `airportauthority`
--

CREATE TABLE `airportauthority` (
  `Eid` int(11) NOT NULL,
  `Position` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airportauthority`
--

INSERT INTO `airportauthority` (`Eid`, `Position`) VALUES
(1, 'Manager'),
(2, 'Supervisor'),
(3, 'Coordinator'),
(4, 'Assistant');

-- --------------------------------------------------------

--
-- Table structure for table `airportcountry`
--

CREATE TABLE `airportcountry` (
  `APname` varchar(100) NOT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Cname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airportcountry`
--

INSERT INTO `airportcountry` (`APname`, `Country`, `Cname`) VALUES
('Bandaranaike International', 'Sri Lanka', 'Colombo'),
('Colombo Ratmalana', 'Sri Lanka', 'Colombo'),
('Jaffna International', 'Sri Lanka', 'Jaffna'),
('Mattala Rajapaksa International', 'Sri Lanka', 'Galle');

-- --------------------------------------------------------

--
-- Table structure for table `airportrelation`
--

CREATE TABLE `airportrelation` (
  `APname` varchar(100) NOT NULL,
  `State` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airportrelation`
--

INSERT INTO `airportrelation` (`APname`, `State`) VALUES
('Bandaranaike International', 'Western'),
('Colombo Ratmalana', 'Western'),
('Jaffna International', 'Northern'),
('Mattala Rajapaksa International', 'Southern');

-- --------------------------------------------------------

--
-- Table structure for table `citycountry`
--

CREATE TABLE `citycountry` (
  `Cname` varchar(100) NOT NULL,
  `Country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citycountry`
--

INSERT INTO `citycountry` (`Cname`, `Country`) VALUES
('Colombo', 'Sri Lanka'),
('Galle', 'Sri Lanka'),
('Jaffna', 'Sri Lanka'),
('Kandy', 'Sri Lanka');

-- --------------------------------------------------------

--
-- Table structure for table `citystate`
--

CREATE TABLE `citystate` (
  `Cname` varchar(100) NOT NULL,
  `State` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citystate`
--

INSERT INTO `citystate` (`Cname`, `State`) VALUES
('Colombo', 'Western'),
('Galle', 'Southern'),
('Jaffna', 'Northern'),
('Kandy', 'Central');

-- --------------------------------------------------------

--
-- Table structure for table `employeepno`
--

CREATE TABLE `employeepno` (
  `Eid` int(11) NOT NULL,
  `Pn1` varchar(15) DEFAULT NULL,
  `Pn2` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeepno`
--

INSERT INTO `employeepno` (`Eid`, `Pn1`, `Pn2`) VALUES
(1, '0771234567', '0712345678'),
(2, '0781234567', '0723456789'),
(3, '0791234567', '0734567890'),
(4, '0701234567', '0745678901');

-- --------------------------------------------------------

--
-- Table structure for table `employeerelation`
--

CREATE TABLE `employeerelation` (
  `Eid` int(11) NOT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL,
  `APname` varchar(100) DEFAULT NULL,
  `Said` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeerelation`
--

INSERT INTO `employeerelation` (`Eid`, `Sex`, `Age`, `Address`, `Fname`, `Lname`, `APname`, `Said`) VALUES
(1, 'M', 30, 'Colombo', 'John', 'Doe', 'Bandaranaike International', 1),
(2, 'F', 25, 'Kandy', 'Jane', 'Smith', 'Mattala Rajapaksa International', 2),
(3, 'M', 35, 'Galle', 'Michael', 'Johnson', 'Colombo Ratmalana', 3),
(4, 'F', 28, 'Jaffna', 'Emily', 'Williams', 'Jaffna International', 4);

-- --------------------------------------------------------

--
-- Table structure for table `employerpassenger`
--

CREATE TABLE `employerpassenger` (
  `Eid` int(11) NOT NULL,
  `PID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employerpassenger`
--

INSERT INTO `employerpassenger` (`Eid`, `PID`) VALUES
(4, 1),
(4, 2),
(4, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `engineer`
--

CREATE TABLE `engineer` (
  `Eid` int(11) NOT NULL,
  `Etype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `engineer`
--

INSERT INTO `engineer` (`Eid`, `Etype`) VALUES
(1, 'Mechanical'),
(2, 'Electrical'),
(3, 'Civil'),
(4, 'Software');

-- --------------------------------------------------------

--
-- Table structure for table `flightconnecting`
--

CREATE TABLE `flightconnecting` (
  `PID` int(11) NOT NULL,
  `LayoverTime` time DEFAULT NULL,
  `NoOfStops` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flightconnecting`
--

INSERT INTO `flightconnecting` (`PID`, `LayoverTime`, `NoOfStops`) VALUES
(1, '00:30:00', 1),
(2, '01:00:00', 2),
(3, '00:45:00', 1),
(4, '00:40:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `flightrelation`
--

CREATE TABLE `flightrelation` (
  `FlightCode` varchar(10) NOT NULL,
  `Arrival` varchar(100) DEFAULT NULL,
  `Destination` varchar(100) DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Duration` time DEFAULT NULL,
  `FlightType` varchar(50) DEFAULT NULL,
  `AirlineID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flightrelation`
--

INSERT INTO `flightrelation` (`FlightCode`, `Arrival`, `Destination`, `Source`, `Status`, `Duration`, `FlightType`, `AirlineID`) VALUES
('FL001', 'Colombo', 'Kandy', 'Colombo', 'On Time', '00:30:00', 'Domestic', 'A1'),
('FL002', 'Colombo', 'Galle', 'Colombo', 'Delayed', '01:00:00', 'Domestic', 'A2'),
('FL003', 'Colombo', 'Jaffna', 'Colombo', 'On Time', '00:45:00', 'Domestic', 'A3'),
('FL004', 'Colombo', 'Kandy', 'Colombo', 'Cancelled', '00:40:00', 'Domestic', 'A4');

-- --------------------------------------------------------

--
-- Table structure for table `passengerclass`
--

CREATE TABLE `passengerclass` (
  `PCID` int(11) NOT NULL,
  `Destination` varchar(100) DEFAULT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `Surcharge` decimal(10,2) DEFAULT NULL,
  `SeatNo` varchar(10) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengerclass`
--

INSERT INTO `passengerclass` (`PCID`, `Destination`, `Class`, `Surcharge`, `SeatNo`, `Price`) VALUES
(1, 'Kandy', 'Economy', 50.00, 'A1', 150.00),
(2, 'Galle', 'Business', 100.00, 'B1', 200.00),
(3, 'Jaffna', 'First Class', 150.00, 'C1', 300.00),
(4, 'Kandy', 'Economy', 50.00, 'A2', 150.00);

-- --------------------------------------------------------

--
-- Table structure for table `passengerpassport`
--

CREATE TABLE `passengerpassport` (
  `PID` int(11) NOT NULL,
  `PassportNo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengerpassport`
--

INSERT INTO `passengerpassport` (`PID`, `PassportNo`) VALUES
(1, 'P12345678'),
(2, 'P23456789'),
(3, 'P34567890'),
(4, 'P45678901');

-- --------------------------------------------------------

--
-- Table structure for table `passengerpno`
--

CREATE TABLE `passengerpno` (
  `PID` int(11) NOT NULL,
  `Pn1` varchar(15) DEFAULT NULL,
  `Pn2` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengerpno`
--

INSERT INTO `passengerpno` (`PID`, `Pn1`, `Pn2`) VALUES
(1, '0771234567', '0712345678'),
(2, '0781234567', '0723456789'),
(3, '0791234567', '0734567890'),
(4, '0701234567', '0745678901');

-- --------------------------------------------------------

--
-- Table structure for table `passengerrelation`
--

CREATE TABLE `passengerrelation` (
  `PID` int(11) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL,
  `FlightCode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengerrelation`
--

INSERT INTO `passengerrelation` (`PID`, `Age`, `Sex`, `Address`, `Fname`, `Lname`, `FlightCode`) VALUES
(1, 30, 'M', 'Colombo', 'John', 'Doe', 'FL001'),
(2, 25, 'F', 'Kandy', 'Jane', 'Smith', 'FL002'),
(3, 35, 'M', 'Galle', 'Michael', 'Johnson', 'FL003'),
(4, 28, 'F', 'Jaffna', 'Emily', 'Williams', 'FL004');

-- --------------------------------------------------------

--
-- Table structure for table `salaryjob`
--

CREATE TABLE `salaryjob` (
  `Said` int(11) NOT NULL,
  `Jobtype` varchar(100) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salaryjob`
--

INSERT INTO `salaryjob` (`Said`, `Jobtype`, `Salary`) VALUES
(1, 'Engineer', 5000.00),
(2, 'Manager', 7000.00),
(3, 'Clerk', 3000.00),
(4, 'Technician', 4000.00);

-- --------------------------------------------------------

--
-- Table structure for table `ticketrelation`
--

CREATE TABLE `ticketrelation` (
  `Tno` int(11) NOT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `DateOfTravel` date DEFAULT NULL,
  `DateOfBooking` date DEFAULT NULL,
  `DateOfCancellation` date DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `PassportNo` varchar(20) DEFAULT NULL,
  `PCID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticketrelation`
--

INSERT INTO `ticketrelation` (`Tno`, `Source`, `DateOfTravel`, `DateOfBooking`, `DateOfCancellation`, `PID`, `PassportNo`, `PCID`) VALUES
(1, 'Colombo', '2024-12-01', '2024-11-20', NULL, 1, 'P12345678', 1),
(2, 'Colombo', '2024-12-05', '2024-11-25', NULL, 2, 'P23456789', 2),
(3, 'Colombo', '2024-12-10', '2024-11-30', NULL, 3, 'P34567890', 3),
(4, 'Colombo', '2024-12-15', '2024-12-01', NULL, 4, 'P45678901', 4);

-- --------------------------------------------------------

--
-- Table structure for table `trafficmonitor`
--

CREATE TABLE `trafficmonitor` (
  `Eid` int(11) NOT NULL,
  `Shift` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trafficmonitor`
--

INSERT INTO `trafficmonitor` (`Eid`, `Shift`) VALUES
(1, 'Morning'),
(2, 'Afternoon'),
(3, 'Evening'),
(4, 'Night');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrativesupport`
--
ALTER TABLE `administrativesupport`
  ADD PRIMARY KEY (`Eid`);

--
-- Indexes for table `airlinerelation`
--
ALTER TABLE `airlinerelation`
  ADD PRIMARY KEY (`AirlineID`);

--
-- Indexes for table `airportairline`
--
ALTER TABLE `airportairline`
  ADD PRIMARY KEY (`APname`,`AirlineID`),
  ADD KEY `AirlineID` (`AirlineID`);

--
-- Indexes for table `airportauthority`
--
ALTER TABLE `airportauthority`
  ADD PRIMARY KEY (`Eid`);

--
-- Indexes for table `airportcountry`
--
ALTER TABLE `airportcountry`
  ADD PRIMARY KEY (`APname`),
  ADD KEY `Cname` (`Cname`);

--
-- Indexes for table `airportrelation`
--
ALTER TABLE `airportrelation`
  ADD PRIMARY KEY (`APname`);

--
-- Indexes for table `citycountry`
--
ALTER TABLE `citycountry`
  ADD PRIMARY KEY (`Cname`);

--
-- Indexes for table `citystate`
--
ALTER TABLE `citystate`
  ADD PRIMARY KEY (`Cname`);

--
-- Indexes for table `employeepno`
--
ALTER TABLE `employeepno`
  ADD PRIMARY KEY (`Eid`);

--
-- Indexes for table `employeerelation`
--
ALTER TABLE `employeerelation`
  ADD PRIMARY KEY (`Eid`),
  ADD KEY `APname` (`APname`),
  ADD KEY `Said` (`Said`);

--
-- Indexes for table `employerpassenger`
--
ALTER TABLE `employerpassenger`
  ADD PRIMARY KEY (`Eid`,`PID`);

--
-- Indexes for table `engineer`
--
ALTER TABLE `engineer`
  ADD PRIMARY KEY (`Eid`);

--
-- Indexes for table `flightconnecting`
--
ALTER TABLE `flightconnecting`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `flightrelation`
--
ALTER TABLE `flightrelation`
  ADD PRIMARY KEY (`FlightCode`),
  ADD KEY `AirlineID` (`AirlineID`);

--
-- Indexes for table `passengerclass`
--
ALTER TABLE `passengerclass`
  ADD PRIMARY KEY (`PCID`);

--
-- Indexes for table `passengerpassport`
--
ALTER TABLE `passengerpassport`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `passengerpno`
--
ALTER TABLE `passengerpno`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `passengerrelation`
--
ALTER TABLE `passengerrelation`
  ADD PRIMARY KEY (`PID`),
  ADD KEY `FlightCode` (`FlightCode`);

--
-- Indexes for table `salaryjob`
--
ALTER TABLE `salaryjob`
  ADD PRIMARY KEY (`Said`);

--
-- Indexes for table `ticketrelation`
--
ALTER TABLE `ticketrelation`
  ADD PRIMARY KEY (`Tno`),
  ADD KEY `PID` (`PID`),
  ADD KEY `PCID` (`PCID`);

--
-- Indexes for table `trafficmonitor`
--
ALTER TABLE `trafficmonitor`
  ADD PRIMARY KEY (`Eid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administrativesupport`
--
ALTER TABLE `administrativesupport`
  ADD CONSTRAINT `administrativesupport_ibfk_1` FOREIGN KEY (`Eid`) REFERENCES `engineer` (`Eid`);

--
-- Constraints for table `airportairline`
--
ALTER TABLE `airportairline`
  ADD CONSTRAINT `airportairline_ibfk_1` FOREIGN KEY (`APname`) REFERENCES `airportrelation` (`APname`),
  ADD CONSTRAINT `airportairline_ibfk_2` FOREIGN KEY (`AirlineID`) REFERENCES `airlinerelation` (`AirlineID`);

--
-- Constraints for table `airportauthority`
--
ALTER TABLE `airportauthority`
  ADD CONSTRAINT `airportauthority_ibfk_1` FOREIGN KEY (`Eid`) REFERENCES `employeerelation` (`Eid`);

--
-- Constraints for table `airportcountry`
--
ALTER TABLE `airportcountry`
  ADD CONSTRAINT `airportcountry_ibfk_1` FOREIGN KEY (`Cname`) REFERENCES `citycountry` (`Cname`);

--
-- Constraints for table `citycountry`
--
ALTER TABLE `citycountry`
  ADD CONSTRAINT `citycountry_ibfk_1` FOREIGN KEY (`Cname`) REFERENCES `citystate` (`Cname`);

--
-- Constraints for table `employeepno`
--
ALTER TABLE `employeepno`
  ADD CONSTRAINT `employeepno_ibfk_1` FOREIGN KEY (`Eid`) REFERENCES `employeerelation` (`Eid`);

--
-- Constraints for table `employeerelation`
--
ALTER TABLE `employeerelation`
  ADD CONSTRAINT `employeerelation_ibfk_1` FOREIGN KEY (`APname`) REFERENCES `airportrelation` (`APname`),
  ADD CONSTRAINT `employeerelation_ibfk_2` FOREIGN KEY (`Said`) REFERENCES `salaryjob` (`Said`);

--
-- Constraints for table `employerpassenger`
--
ALTER TABLE `employerpassenger`
  ADD CONSTRAINT `employerpassenger_ibfk_1` FOREIGN KEY (`Eid`) REFERENCES `employeerelation` (`Eid`);

--
-- Constraints for table `engineer`
--
ALTER TABLE `engineer`
  ADD CONSTRAINT `engineer_ibfk_1` FOREIGN KEY (`Eid`) REFERENCES `trafficmonitor` (`Eid`);

--
-- Constraints for table `flightconnecting`
--
ALTER TABLE `flightconnecting`
  ADD CONSTRAINT `flightconnecting_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `passengerrelation` (`PID`);

--
-- Constraints for table `flightrelation`
--
ALTER TABLE `flightrelation`
  ADD CONSTRAINT `flightrelation_ibfk_1` FOREIGN KEY (`AirlineID`) REFERENCES `airlinerelation` (`AirlineID`);

--
-- Constraints for table `passengerpassport`
--
ALTER TABLE `passengerpassport`
  ADD CONSTRAINT `passengerpassport_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `passengerrelation` (`PID`);

--
-- Constraints for table `passengerpno`
--
ALTER TABLE `passengerpno`
  ADD CONSTRAINT `passengerpno_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `passengerrelation` (`PID`);

--
-- Constraints for table `passengerrelation`
--
ALTER TABLE `passengerrelation`
  ADD CONSTRAINT `passengerrelation_ibfk_1` FOREIGN KEY (`FlightCode`) REFERENCES `flightrelation` (`FlightCode`);

--
-- Constraints for table `ticketrelation`
--
ALTER TABLE `ticketrelation`
  ADD CONSTRAINT `ticketrelation_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `passengerrelation` (`PID`),
  ADD CONSTRAINT `ticketrelation_ibfk_2` FOREIGN KEY (`PCID`) REFERENCES `passengerclass` (`PCID`);

--
-- Constraints for table `trafficmonitor`
--
ALTER TABLE `trafficmonitor`
  ADD CONSTRAINT `trafficmonitor_ibfk_1` FOREIGN KEY (`Eid`) REFERENCES `employeerelation` (`Eid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
