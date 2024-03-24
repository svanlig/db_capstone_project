show databases;
use little_lemon;
show tables;
DROP TABLE IF EXISTS CustomerBookings;
create table CustomerBookings (
BookingID INT AUTO_INCREMENT PRIMARY KEY, 
BookingDate DATE,
TableNo INT,
CustomerID INT);
INSERT INTO `little_lemon`.`CustomerBookings` (`BookingID`, `BookingDate`, `TableNo`, `CustomerID`) VALUES ('1', '2022-10-10', '5', '1');
INSERT INTO `little_lemon`.`CustomerBookings` (`BookingID`, `BookingDate`, `TableNo`, `CustomerID`) VALUES ('2', '2022-11-12', '3', '3');
INSERT INTO `little_lemon`.`CustomerBookings` (`BookingID`, `BookingDate`, `TableNo`, `CustomerID`) VALUES ('3', '2022-10-11', '2', '2');
INSERT INTO `little_lemon`.`CustomerBookings` (`BookingID`, `BookingDate`, `TableNo`, `CustomerID`) VALUES ('4', '2022-10-13', '2', '1');
select * from CustomerBookings;