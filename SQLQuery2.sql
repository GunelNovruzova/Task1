create database Market
use Market

create Table Products
(
  ID int primary key identity,
  Name nvarchar(30),
  Price Money
)

ALTER Table Products
ADD Brand nvarchar(30)

INSERT INTO Products
VALUES('Bread',1.00,'Pane'),
('Water',2.30,'Bonaqua'),
('Water',2.45,'Sirab'),
('Chocolate',3.65,'AlpenGold'),
(' Dark Chocolote',3.90,'Eti Karam'),
('Chocolate Milk',4.50,'Nestle'),
('Shampoo',7.00,'Loreal'),
('Milk',3.85,'Milla'),
('Olive',13.95,'Kristal'),
('Cheese',8.40, 'President')

Select *from Products
Select AVG(Price) from Products
Select *from Products where Price< (Select AVG(Price) from Products)
Select *from Products where Price>10

Select ID, Price, (Name + ' '+Brand) 'ProductInfo' from Products where LEN(Brand)>5

