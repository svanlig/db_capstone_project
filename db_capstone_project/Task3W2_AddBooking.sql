SET AUTOCOMMIT = ON;
SET sql_mode = 'NO_ENGINE_SUBSTITUTION';
DELIMITER //
DROP PROCEDURE IF EXISTS AddValidBooking;
CREATE PROCEDURE AddValidBooking(IN BookDate DATE, IN TableNumber INT)
BEGIN
    -- Variable to hold the count of existing bookings
    DECLARE ExistingBookingsCount INT;
	DECLARE OutputMessage VARCHAR(255);
    
    -- Start the transaction
    START TRANSACTION;
    -- Check if the table is already booked on the given date
    SELECT COUNT(*)
    INTO ExistingBookingsCount
    FROM CustomerBookings
    WHERE BookingDate = BookDate AND TableNo = TableNumber;

    -- If the table is already booked, rollback the transaction
    IF ExistingBookingsCount > 0 THEN
    SET OutputMessage = CONCAT('Table ', TableNumber, ' is already booked -Booking Cancelled');
        ROLLBACK;
        SELECT OutputMessage AS Message;
    ELSE
        -- Insert the new booking record
        INSERT INTO CustomerBookings(BookingDate, TableNo)
        VALUES (BookDate, TableNumber);
		SET OutputMessage = CONCAT('Table ', TableNumber, ' booking is Confirmed');
        COMMIT;
        SELECT OutputMessage AS Message;
        -- Commit the transaction
        COMMIT;
    END IF;
END //
DELIMITER ;
CALL AddValidBooking('2022-10-13', 2);

SET AUTOCOMMIT = OFF;


