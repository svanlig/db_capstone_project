DELIMITER //
CREATE PROCEDURE UpdateBooking(IN BookID INT, IN BookDate DATE)
BEGIN
    UPDATE CustomerBookings
    SET BookingDate = BookDate
    WHERE BookingID = BookID;
	SET @CompletionMessage = CONCAT("Booking ", BookID, " Updated");
    SELECT @CompletionMessage AS Confirmation;
END//
DELIMITER ;
CALL UpdateBooking(911, '2024-9-22');
DROP procedure IF exists AddBooking;