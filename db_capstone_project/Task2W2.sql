use little_lemon_db;
drop view if exists CuisineView;
create view CuisineView AS
select Orders.OrderID, Bookings.BookingID, 
concat(bookings.GuestFirstName, " ", bookings.GuestLastName) As GuestName, 
Orders.BillAmount,
Orders.ItemID,
menus.Cuisine, menuitems.Name 
from Orders 
INNER JOIN bookings
ON Orders.BookingID = Bookings.BookingID
INNER Join menuitems on 
menuitems.ItemID = Orders.ItemID
INNER JOIN menus on
menus.ItemID = menuitems.ItemID
where BillAmount >=150
ORDER BY BillAmount asc;
select * from CuisineView;