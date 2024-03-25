DELIMITER //
CREATE PROCEDURE AddBooking(IN BookID INT, IN CustID INT, IN BookDate DATE, IN TableNumber INT)
BEGIN
    INSERT INTO CustomerBookings(BookingID, CustomerID, BookingDate, TableNo)
    VALUES (BookID, CustID, BookDate, TableNumber);
	SET @CompletionMessage = "New Booking Added";
    SELECT @CompletionMessage AS Confirmation;
END//
DELIMITER ;
CALL AddBooking(911, 15,'2024-10-30', 26);
DROP procedure IF exists AddBooking;