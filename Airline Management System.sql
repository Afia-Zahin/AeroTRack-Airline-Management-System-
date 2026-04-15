-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2024 at 05:57 PM
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
-- Database: `airlines`
--

-- --------------------------------------------------------

--
-- Table structure for table `adult`
--

CREATE TABLE `adult` (
  `passenger_id` int(11) NOT NULL,
  `meal_preference` varchar(20) DEFAULT NULL,
  `Age` int(11) NOT NULL,
  `baggage_allowance` varchar(20) DEFAULT 'Not Allowed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `Aircraft_ID` varchar(20) NOT NULL,
  `Airline_ID` varchar(20) DEFAULT NULL,
  `Model` varchar(50) NOT NULL,
  `Manufacturer` varchar(50) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Range_KM` decimal(10,2) NOT NULL,
  `Registration_Number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`Aircraft_ID`, `Airline_ID`, `Model`, `Manufacturer`, `Capacity`, `Range_KM`, `Registration_Number`) VALUES
('1', '1', 'Boeing 737', 'Boeing', 180, 5500.00, 'N123AA'),
('2', '2', 'Airbus A320', 'Airbus', 150, 6000.00, 'G234BA'),
('3', '3', 'Boeing 777', 'Boeing', 350, 13000.00, 'F345AF'),
('4', '4', 'Airbus A350', 'Airbus', 300, 15000.00, 'S456SQ'),
('5', '5', 'Boeing 787', 'Boeing', 250, 14000.00, 'L567LH');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `Airline_ID` varchar(20) NOT NULL,
  `AirlineName` varchar(100) NOT NULL,
  `IATA_Code` char(3) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`Airline_ID`, `AirlineName`, `IATA_Code`, `Country`) VALUES
('1', 'Delta Air Lines', 'DL', 'United States'),
('10', 'Cathay Pacific', 'CX', 'Hong Kong'),
('2', 'American Airlines', 'AA', 'United States'),
('3', 'Emirates', 'EK', 'United Arab Emirates'),
('4', 'British Airways', 'BA', 'United Kingdom'),
('5', 'Lufthansa', 'LH', 'Germany'),
('6', 'Qatar Airways', 'QR', 'Qatar'),
('7', 'Singapore Airlines', 'SQ', 'Singapore'),
('8', 'Air Canada', 'AC', 'Canada'),
('9', 'Qantas Airways', 'QF', 'Australia');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airport_id` varchar(20) NOT NULL,
  `airport_name` varchar(100) NOT NULL,
  `airport_code` varchar(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_id`, `airport_name`, `airport_code`, `city`, `country`) VALUES
('1', 'Los Angeles International Airport', 'LAX', 'Los Angeles', 'USA'),
('10', 'Los Angeles International Airport', 'LAA', 'Los Angeles', 'USA'),
('2', 'John F. Kennedy International Airport', 'JFK', 'New York', 'USA'),
('3', 'Heathrow Airport', 'LHR', 'London', 'UK'),
('4', 'Dubai International Airport', 'DXB', 'Dubai', 'UAE'),
('5', 'Changi Airport', 'SIN', 'Singapore', 'Singapore'),
('6', 'Tokyo Narita Airport', 'NRT', 'Tokyo', 'Japan'),
('7', 'Sydney Kingsford Smith Airport', 'SYD', 'Sydney', 'Australia'),
('8', 'Charles de Gaulle Airport', 'CDG', 'Paris', 'France'),
('9', 'Frankfurt Airport', 'FRA', 'Frankfurt', 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_ID` varchar(20) NOT NULL,
  `Passenger_ID` int(11) DEFAULT NULL,
  `Flight_ID` varchar(20) DEFAULT NULL,
  `Booking_Date` datetime NOT NULL,
  `Seat_Number` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `passenger_id` int(11) NOT NULL,
  `meal_preferance` varchar(20) DEFAULT NULL,
  `Age` int(11) NOT NULL,
  `Guardian_details` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contain`
--

CREATE TABLE `contain` (
  `Flight_ID` varchar(20) NOT NULL,
  `Airport_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

CREATE TABLE `crew` (
  `Crew_ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Nationality` varchar(50) NOT NULL,
  `Contact_Number` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Flight_ID` varchar(20) DEFAULT NULL,
  `Assigned_Datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`Crew_ID`, `First_Name`, `Middle_Name`, `Last_Name`, `Gender`, `Date_Of_Birth`, `Nationality`, `Contact_Number`, `Email`, `Flight_ID`, `Assigned_Datetime`) VALUES
(1, 'Michael', 'James', 'Anderson', 'Male', '1985-03-15', 'USA', '555-1001', 'michael.anderson@delta.com', '1', '2024-12-01 06:30:00'),
(2, 'Sarah', NULL, 'Williams', 'Female', '1990-07-22', 'UK', '555-1002', 'sarah.williams@ba.com', '2', '2024-12-02 07:00:00'),
(3, 'Ahmed', 'Khalid', 'Al-Mansouri', 'Male', '1982-11-05', 'UAE', '555-1003', 'ahmed.almansouri@emirates.com', '3', '2024-12-03 09:00:00'),
(4, 'Emma', 'Rose', 'Thompson', 'Female', '1993-04-18', 'Australia', '555-1004', 'emma.thompson@qantas.com', '4', '2024-12-04 12:00:00'),
(5, 'Hans', NULL, 'Muller', 'Male', '1978-09-30', 'Germany', '555-1005', 'hans.muller@lufthansa.com', '5', '2024-12-05 05:30:00'),
(8, 'Paul', NULL, 'Jones', 'Male', '1982-02-25', 'UK', '555-9101', 'paul.jones@xyz.com', '3', '2024-12-10 07:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `Flight_ID` varchar(20) NOT NULL,
  `Flight_Number` varchar(10) NOT NULL,
  `Aircraft_ID` varchar(20) DEFAULT NULL,
  `Route_ID` varchar(20) DEFAULT NULL,
  `Airline_id` varchar(20) DEFAULT NULL,
  `Departure_Time` datetime NOT NULL,
  `Arrival_Time` datetime NOT NULL,
  `Duration` decimal(5,2) NOT NULL,
  `Status` varchar(20) DEFAULT 'Scheduled',
  `Gate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Flight_ID`, `Flight_Number`, `Aircraft_ID`, `Route_ID`, `Airline_id`, `Departure_Time`, `Arrival_Time`, `Duration`, `Status`, `Gate`) VALUES
('1', 'AA100', '1', '101', '1', '2024-12-01 08:00:00', '2024-12-01 13:00:00', 5.00, 'On Time', 'A1'),
('2', 'BA200', '2', '102', '2', '2024-12-02 09:00:00', '2024-12-02 16:00:00', 7.00, 'Delayed', 'B3'),
('3', 'AF300', '3', '103', '3', '2024-12-03 11:00:00', '2024-12-03 23:00:00', 12.00, 'Cancelled', 'C2'),
('4', 'SQ400', '4', '104', '4', '2024-12-04 14:00:00', '2024-12-04 22:00:00', 8.00, 'On Time', 'D1'),
('5', 'LH500', '5', '105', '5', '2024-12-05 07:30:00', '2024-12-05 18:30:00', 11.00, 'Boarding', 'E5');

-- --------------------------------------------------------

--
-- Table structure for table `flight_status`
--

CREATE TABLE `flight_status` (
  `status_id` int(11) NOT NULL,
  `flight_id` varchar(20) DEFAULT NULL,
  `flight_number` varchar(50) NOT NULL,
  `departure_city` varchar(100) DEFAULT NULL,
  `arrival_city` varchar(100) DEFAULT NULL,
  `status` enum('On Time','Delayed','Cancelled','Changed','Boarding') NOT NULL,
  `scheduled_departure_time` datetime DEFAULT NULL,
  `Actual_arrival_time` datetime DEFAULT NULL,
  `estimated_arrival_time` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `additional_info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight_status`
--

INSERT INTO `flight_status` (`status_id`, `flight_id`, `flight_number`, `departure_city`, `arrival_city`, `status`, `scheduled_departure_time`, `Actual_arrival_time`, `estimated_arrival_time`, `updated_at`, `additional_info`) VALUES
(1, '1', 'AA100', 'Los Angeles', 'New York', 'On Time', '2024-12-01 08:00:00', '2024-12-01 13:00:00', '2024-12-01 12:50:00', '2024-11-29 13:29:42', 'N/A'),
(2, '2', 'BA200', 'London', 'Dubai', 'Delayed', '2024-12-02 09:00:00', '2024-12-02 16:00:00', '2024-12-02 16:30:00', '2024-11-29 13:29:42', 'Technical issue'),
(3, '3', 'AF300', 'Paris', 'Tokyo', 'Cancelled', '2024-12-03 11:00:00', '2024-12-03 23:00:00', NULL, '2024-11-29 13:29:42', 'Weather conditions'),
(4, '4', 'SQ400', 'Singapore', 'Sydney', 'On Time', '2024-12-04 14:00:00', '2024-12-04 22:00:00', '2024-12-04 22:10:00', '2024-11-29 13:29:42', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `luggage`
--

CREATE TABLE `luggage` (
  `Luggage_ID` varchar(20) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  `Weight` decimal(10,2) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `only`
--

CREATE TABLE `only` (
  `Flight_ID` varchar(20) DEFAULT NULL,
  `Airline_ID` varchar(20) DEFAULT NULL,
  `Departure_Airport_ID` varchar(20) DEFAULT NULL,
  `Arrival_Airport_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Passenger_ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `Passport_Number` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `pr_house_no` varchar(50) DEFAULT NULL,
  `pr_street` varchar(100) DEFAULT NULL,
  `pr_thana` varchar(100) DEFAULT NULL,
  `pr_district` varchar(100) DEFAULT NULL,
  `per_house_no` varchar(50) DEFAULT NULL,
  `per_street` varchar(100) DEFAULT NULL,
  `per_thana` varchar(100) DEFAULT NULL,
  `per_district` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(11) NOT NULL,
  `Payment_Date` datetime NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Payment_Method` varchar(30) NOT NULL,
  `Payment_Status` varchar(20) DEFAULT 'Completed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pilot`
--

CREATE TABLE `pilot` (
  `crew_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Pilot'),
(2, 'Co-Pilot'),
(3, 'Flight Attendant'),
(4, 'Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `Route_ID` varchar(20) NOT NULL,
  `Origin_City` varchar(100) NOT NULL,
  `Origin_Country` varchar(50) NOT NULL,
  `Destination_City` varchar(100) NOT NULL,
  `Destination_Country` varchar(50) NOT NULL,
  `departure_airport_id` varchar(20) NOT NULL,
  `arrival_airport_id` varchar(20) NOT NULL,
  `Distance_KM` decimal(10,2) DEFAULT NULL,
  `Flight_Duration` time DEFAULT NULL,
  `Status` varchar(20) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`Route_ID`, `Origin_City`, `Origin_Country`, `Destination_City`, `Destination_Country`, `departure_airport_id`, `arrival_airport_id`, `Distance_KM`, `Flight_Duration`, `Status`) VALUES
('101', 'Los Angeles', 'USA', 'New York', 'USA', '1', '2', 3940.00, '00:00:05', 'Active'),
('102', 'London', 'UK', 'Dubai', 'UAE', '3', '4', 5500.00, '00:00:07', 'Active'),
('103', 'Paris', 'France', 'Tokyo', 'Japan', '8', '6', 10600.00, '00:00:12', 'Inactive'),
('104', 'Singapore', 'Singapore', 'Sydney', 'Australia', '5', '7', 6300.00, '00:00:08', 'Active'),
('105', 'Frankfurt', 'Germany', 'Los Angeles', 'USA', '9', '1', 9600.00, '00:00:11', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `schedule_id` int(11) NOT NULL,
  `route_id` varchar(20) DEFAULT NULL,
  `airline_id` varchar(20) DEFAULT NULL,
  `departure_time` datetime NOT NULL,
  `arrival_time` datetime NOT NULL,
  `flight_number` varchar(20) NOT NULL,
  `seat_capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`schedule_id`, `route_id`, `airline_id`, `departure_time`, `arrival_time`, `flight_number`, `seat_capacity`) VALUES
(2, '101', '9', '2024-12-06 21:52:00', '2024-12-07 21:52:00', 'AB12311', 300),
(3, '103', '3', '2024-12-03 11:00:00', '2024-12-03 23:00:00', 'AF300', 220),
(4, '104', '4', '2024-12-04 14:00:00', '2024-12-04 22:00:00', 'SQ400', 200),
(6, '105', '6', '2024-11-29 20:26:00', '2024-12-02 20:26:00', 'AAA12333', 120),
(7, '101', '9', '2024-12-03 21:20:00', '2024-12-06 21:20:00', 'AA133', 250),
(8, '101', '1', '2024-11-28 22:18:00', '2024-11-29 22:19:00', '1', 120);

-- --------------------------------------------------------

--
-- Table structure for table `security_check`
--

CREATE TABLE `security_check` (
  `Check_ID` varchar(20) NOT NULL,
  `Flight_ID` varchar(20) DEFAULT NULL,
  `Passenger_ID` int(11) DEFAULT NULL,
  `Status` varchar(20) DEFAULT 'Pending',
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `Ticket_ID` int(11) NOT NULL,
  `Booking_ID` varchar(20) DEFAULT NULL,
  `Ticket_Number` varchar(20) NOT NULL,
  `Issue_Date` datetime NOT NULL,
  `Seat_Number` varchar(5) NOT NULL,
  `Class` varchar(20) NOT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(1, 'anika', '$2y$10$QDnwoSQU6N4IHUC.vOWCFeomif6j/QV3gJnUAQw/jnyEn6vX9H8i2', 'anika.toma@northsouth.edu', '2024-11-29 16:02:24');

-- =============================================
-- =============== ADDED DATA ==================
-- =============================================

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` 
(Passenger_ID, First_Name, Middle_Name, Last_Name, Date_Of_Birth, Gender, Nationality, Passport_Number, Email, Phone_Number, 
 pr_house_no, pr_street, pr_thana, pr_district, per_house_no, per_street, per_thana, per_district)
VALUES
(1, 'John', NULL, 'Doe', '1990-05-10', 'Male', 'USA', 'P12345', 'john.doe@example.com', '+1-555-1234567', '123', 'Main St', 'Downtown', 'Los Angeles', '123', 'Main St', 'Downtown', 'Los Angeles'),
(2, 'Alice', 'Marie', 'Smith', '2015-07-20', 'Female', 'UK', 'P67890', 'alice.smith@example.com', '+44-20-7946-0958', '45', 'Oxford Road', 'Westminster', 'London', '45', 'Oxford Road', 'Westminster', 'London'),
(3, 'Rahim', NULL, 'Khan', '1985-11-15', 'Male', 'Bangladesh', 'BD987654', 'rahim.khan@gmail.com', '+880-1711-234567', 'House 12', 'Road 5', 'Gulshan', 'Dhaka', 'House 12', 'Road 5', 'Gulshan', 'Dhaka'),
(4, 'Sophia', 'Grace', 'Williams', '1992-03-25', 'Female', 'Canada', 'CA112233', 'sophia.williams@outlook.com', '+1-416-555-7890', '78', 'Queen Street', 'Downtown', 'Toronto', '78', 'Queen Street', 'Downtown', 'Toronto'),
(5, 'Liam', NULL, 'Chen', '2008-09-12', 'Male', 'Singapore', 'SG445566', 'liam.chen@yahoo.com', '+65-9123-4567', 'Block 45', 'Orchard Road', 'Orchard', 'Singapore', 'Block 45', 'Orchard Road', 'Orchard', 'Singapore');

--
-- Dumping data for table `adult`
--

INSERT INTO `adult` VALUES 
(1, 'Vegetarian', 34, 'Allowed'),
(3, 'Non-Veg', 39, 'Allowed'),
(4, 'Halal', 32, 'Allowed');

--
-- Dumping data for table `child`
--

INSERT INTO `child` VALUES 
(2, 'Non-Veg', 9, 'Guardian: Alice Smith, Contact: +44-20-7946-0958'),
(5, 'Vegetarian', 16, 'Guardian: Wei Chen, Contact: +65-9123-4567');

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` VALUES 
('B1', 1, '1', '2024-11-28 10:15:00', '12A'),
('B2', 2, '2', '2024-11-29 14:30:00', '5C'),
('B3', 3, '4', '2024-11-30 09:45:00', '8D'),
('B4', 4, '5', '2024-12-01 11:20:00', '15B'),
('B5', 5, '1', '2024-12-02 16:00:00', '22F');

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` 
(Ticket_ID, Booking_ID, Ticket_Number, Issue_Date, Seat_Number, Class, Price)
VALUES
(1, 'B1', 'T1001', '2024-11-28 10:20:00', '12A', 'Economy', 450.00),
(2, 'B2', 'T1002', '2024-11-29 14:35:00', '5C', 'Business', 1250.00),
(3, 'B3', 'T1003', '2024-11-30 09:50:00', '8D', 'Economy', 680.00),
(4, 'B4', 'T1004', '2024-12-01 11:25:00', '15B', 'Premium Economy', 950.00),
(5, 'B5', 'T1005', '2024-12-02 16:05:00', '22F', 'Economy', 520.00);

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` 
(Payment_ID, Payment_Date, Amount, Payment_Method, Payment_Status)
VALUES
(1, '2024-11-28 10:25:00', 450.00, 'Credit Card', 'Completed'),
(2, '2024-11-29 14:40:00', 1250.00, 'Debit Card', 'Completed'),
(3, '2024-11-30 09:55:00', 680.00, 'Mobile Banking', 'Completed'),
(4, '2024-12-01 11:30:00', 950.00, 'Credit Card', 'Completed'),
(5, '2024-12-02 16:10:00', 520.00, 'Cash', 'Completed');

--
-- Dumping data for table `luggage`
--

INSERT INTO `luggage` 
(Luggage_ID, Passenger_ID, Weight, Type, Status)
VALUES
('L1', 1, 23.50, 'Checked', 'Loaded'),
('L2', 2, 8.00, 'Cabin', 'Onboard'),
('L3', 3, 30.00, 'Checked', 'Loaded'),
('L4', 4, 15.75, 'Checked', 'Loaded'),
('L5', 5, 7.50, 'Cabin', 'Onboard');

--
-- Dumping data for table `security_check`
--

INSERT INTO `security_check` 
(Check_ID, Flight_ID, Passenger_ID, Status, Time)
VALUES
('S1', '1', 1, 'Cleared', '2024-12-01 06:45:00'),
('S2', '2', 2, 'Cleared', '2024-12-02 07:50:00'),
('S3', '4', 3, 'Cleared', '2024-12-04 12:30:00'),
('S4', '5', 4, 'Pending', '2024-12-05 06:00:00'),
('S5', '1', 5, 'Cleared', '2024-12-01 07:10:00');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;