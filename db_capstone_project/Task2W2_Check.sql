DELIMITER //
DROP PROCEDURE IF EXISTS CheckBooking;
CREATE PROCEDURE CheckBooking(IN BookingDate DATE, IN TableNumber INT)
BEGIN
    -- Variable to hold the booking status
    DECLARE BookingStatus VARCHAR(255);

    -- Check if the table is booked on the given date
    SELECT IF(COUNT(*) > 0, 
    CONCAT('Table ', TableNumber,' is Booked'),
    CONCAT('Table ', TableNumber, ' is Available') )
    INTO BookingStatus
    FROM CustomerBookings
    WHERE TableNo = TableNumber AND BookingDate = BookingDate;

    -- Return the booking status
    SELECT BookingStatus;
END//

DELIMITER ;
CALL CheckBooking('2022-11-12', 3)