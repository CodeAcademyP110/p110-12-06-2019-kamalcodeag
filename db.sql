--create table Countries(
--	Id int primary key identity,
--	Name nvarchar(50)
--)

--create table Cities(
--	Id int primary key identity,
--	Name nvarchar(50),
--	CountryId int references Countries(Id)
--)

--insert into Countries values('Azerbaijan'), ( 'Turkey'), ( 'Pakistan'), ('Turkmenistan')
--insert into Cities values('Baku', 1), ('Ganja', 1), ('Masalli', 1), ('Istanbul', 2), ('Ankara', 2), ('Islamabad', 3), ('Ashqabad', 4)

--alter table Students
--add CityId int references Cities(Id)

--select 
--	CONCAT(st.Firstname, ' ', st.Lastname) Fullname,
--	st.Email,
--	CONCAT(ct.Name, ', ', cr.Name) 'Location'
--from Students st
--join Cities ct on st.CityId = ct.Id
--join Countries cr on ct.CountryId = cr.Id

--create table Categories (
--	Id int primary key identity,
--	Name nvarchar(100)
--)

--create table Products (
--	Id int primary key identity,
--	Name nvarchar(100),
--	Price decimal(18, 2),
--	DiscountPercent float check(DiscountPercent between 0 and 100),
--	HasDiscount bit default 0,
--	CategoryId int references Categories(Id)
--)

--create table Customers(
--	Id int primary key identity,
--	Firstname nvarchar(50) not null,
--	Lastname nvarchar(50),
--	Email nvarchar(50) unique not null
--)

--create table Orders(
--	Id int primary key identity,
--	CustomerId int references Customers(Id),
--	OrderDate datetime
--)

--create table OrderDetails(
--	Id int primary key identity,
--	ProductId int references Products(Id),
--	OrderId int references Orders(Id),
--	Price decimal(18,2),
--	Quantity int
--)

--create table Addresses(
--	Id int primary key identity,
--	Address1 nvarchar(100),
--	Address2 nvarchar(100),
--	Address3 nvarchar(100),
--	CustomerId int references Customers(Id)
--)

--alter view OrderSummary as
--SELECT 
--	concat(Customers.Firstname, ' ', Customers.Lastname, ' ', Customers.Email) 'About customer',
--	Products.Name Product,
--	Categories.Name Category,
--	od.Price 'Price per unit',
--	od.Quantity,
--	od.Price * od.Quantity 'Total price',
--	Orders.OrderDate
--FROM OrderDetails od
--join Products on od.ProductId = Products.Id
--join Categories on Products.CategoryId = Categories.Id
--join Orders on od.OrderId = Orders.Id
--join Customers on Orders.CustomerId = Customers.Id


--SELECT 
--	Categories.Name Category,
--	SUM(od.Quantity) 'Total count',
--	concat(SUM(od.Quantity * od.Price), ' AZN') 'Total Amount'
--FROM OrderDetails od
--join Products on od.ProductId = Products.Id
--join Categories on Products.CategoryId = Categories.Id
--join Orders on od.OrderId = Orders.Id
--join Customers on Orders.CustomerId = Customers.Id

--group by Categories.Name
--having Categories.Name != 'Drinks' 

--select * from OrderSummary

--create table Authors (
--	Id int primary key identity,
--	Fullname nvarchar(100) not null
--)

--create table Books (
--	Id int primary key identity,
--	Name nvarchar(100) not null,
--	AuthorId int references Authors(Id)
--)
--create table Magazines (
--	Id int primary key identity,
--	Name nvarchar(100) not null
--)


select Name from Magazines
Except
select Name from Books