create database labtasks;
use labtasks

create table Employees(
E_ID int primary key,
firstname varchar(250),
lastname varchar(250),
title varchar(250),
dept_ID int,
email varchar(250),
phone_no int);

select*from Employees
insert into Employees
values(1,'Joe','Jones','Engineer',3,'jjones',5844 ),
(2,'Ken','Davis','Manager',4,'kdavis',5854 ),
(3,'John','Smith','Engineer',3,'jsmith',5833),
(4,'Jane','Morris','Manager',3,'jmorris',5833);

--query1:
  alter table employees
  add  Esalary int;
  add  workinghours int;

  UPDATE Employees
  SET Esalary = 25000, WorkingHours = 8
  WHERE E_ID = 1;

  UPDATE Employees
  SET Esalary = 30000, WorkingHours = 9
  WHERE E_ID = 2;

  UPDATE Employees
  SET Esalary = 35000, WorkingHours = 9
  WHERE E_ID = 3;

  UPDATE Employees
  SET Esalary = 40000, WorkingHours = 10
  WHERE E_ID = 4;

--query2:
  select E_ID,firstname,title from Employees
  where Esalary = 30000;

--query3;
  select firstname,title, WorkingHours * 60 AS WorkingMinutes from Employees;

--query4;
  select E_ID,firstname ,lastname,Esalary * 0.10 as increment from Employees;

--query5;
  select *from Employees
  where dept_ID=3;

--query6;

  SET DeptID = 4
  WHERE EmpID = 3;

--query7;
  delete from Employees
  where phone_no=5833;
