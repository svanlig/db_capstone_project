DELIMITER //
CREATE PROCEDURE CancelBooking(IN BookID INT)
BEGIN
    DELETE FROM CustomerBookings
    WHERE BookingID = BookID;
	SET @CompletionMessage = CONCAT("Booking ", BookID, " Cancelled");
    SELECT @CompletionMessage AS Confirmation;
END//
DELIMITER ;
CALL CancelBooking(910);
DROP procedure IF exists AddBooking;