CREATE VIEW ItemView AS
SELECT Name from menuitems 
where ItemID = any(select ItemID from Orders where Quantity >= 2);
SELECT * FROM ItemView