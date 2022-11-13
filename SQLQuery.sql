
---TASK1 -----START------
create database Company


create table Employes(
	Id int identity primary key,
	Name nvarchar(100) Not Null,
	SurName nvarchar(100) Not Null,
	Position nvarchar(50) Not Null,
	Salary money
)

Insert Into Employes(Name, SurName,Position,Salary)
Values
('Filankes','Filankesov','IT',1500),
('Adil','Suleymanov','Programmer',1000),
('Elmir','Sadiqov','Menecer',700)


Select * From Employes Where Salary >(Select Avg(Salary) from Employes )


Select Max(Salary) From Employes

Select Min(Salary) From Employes

Select Avg(Salary) From Employes

--TASK 1 -------------END-----------
----TASK 3-----START-----
Create database CocaColaDB


Create table Departaments(
	Id int identity primary key,
	Name nvarchar(100) Not Null Check(Len(Name)>3)
)

Create table Employees(
	Id int identity primary key,
	FullName nvarchar(100) Not Null Check(Len(FullName)>2),
	Salary money Check(Salary > 0),
	DepartamentId int Not Null Foreign Key References Departaments(Id),
	Email nvarchar(100) Not Null Unique
)
-----TASK 3 -----END---

----TASK 2----START---

create database Market

use Market

Create table Products(
	Id int identity primary key,
	Name nvarchar(100) Not Null,
	Price money
)

Alter Table Products Add Brand nvarchar(100) Not Null

Insert Into Products(Name, Price, Brand)
Values
('Drink',14,'Pepsi'),
('Drink',11,'Coffe'),
('Chips',5,'Lays'),
('Chips',10,'Doritos'),
('Oil',4,'Anchor'),
('Un',12,'Karmen'),
('Sud',3,'Palsud'),
('Toyuq',8,'Mercan'),
('Toyuq',2,'Siyezen'),
('UN Mmulatlari',16,'Makaron'),
('Tutun Memulatlari',4,'Kent'),
('Cat',1,'BETA')


Select Name+' '+ Brand 'Profuct Info' From Products where Len(Brand) > 5

Select * From Products Where Price <(Select Avg(Price) from Products )

Select * From Products Where Price >= 10

Select * From Products Where LEN(Brand) > 5 