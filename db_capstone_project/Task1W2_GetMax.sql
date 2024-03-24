CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(Quantity) as MaxQuantityInOrder from Orders;
CALL GetMaxQuantity()