PREPARE GetOrderDetail FROM
'SELECT OrderID, Quantity, BillAmount as Cost from Orders where BookingID = ?';
SET @ID = 1;
EXECUTE GetOrderDetail USING @ID;