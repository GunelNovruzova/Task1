create database Company
use Company

create Table Employees
(
  ID int primary key identity,
  FullName nvarchar(80) not NULL CHECK(LEN(FullName)>3),
  Salary money CHECK(Salary>0),
  DepartmentID int references Departments(ID)
)
 
create Table Departments
(
  ID int primary key identity,
  Name nvarchar(40) not NULL CHECK(LEN(Name)>2)
)