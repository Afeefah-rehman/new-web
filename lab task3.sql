use labtasks 
 3.	Show all the customers who don’t live in ‘City Karachi’ and ‘City Lahore’. 
4.	Display ‘CustomerName, Area, City, Country’ where customer doesn’t belong to 
‘Country India’ or ‘Country UK’ and lives at ‘Gulshan.’ 
5.	Find the ‘CustomerID’, ‘CustomerName’, ‘Age’ and ‘Country’; arrange ‘Age’ by descending order. 
6.	Find the ‘CustomerName’,’Age’, ‘City’ and ‘Country’ where ‘Age’ between 25 to 35. 
Arrange them by ‘CustomerName’. 
7.	Find the ‘CustomerID’, ‘CustomerName’ and join City and Country. 
8.	Write a query for the following output: 

create table customers(
customer_id int primary key identity(1,1),
customer_name varchar(250),
age int,
area varchar(250),
city varchar(250),
postal_code int,
country varchar(250));
select *from customers
insert into customers
values('Taha',36,'North Karachi','Karachi',05021,'Pakistan'), 
('Faheem',26,'Gulshan','Karachi',05023,'Pakistan'),
('John',32,'Stanmore','London',55953,'UK'),
('Iqbal',20,'Model Town','Lahore',95866,'Pakistan'), 
('Rohit',45,'Gorakhpur','Ahmedabad',12209,'India');

--query1
select*from customers
where country='pakistan'
and city='karachi';

--query2 (Select all from customers who live in ‘Country India’ or ‘Address Model Town’ or ‘City London’.)
select*from customers
where country='india'
or area='model town' or city='london';

--query2 (	Show all the customers who don’t live in ‘City Karachi’ and ‘City Lahore’.)
select * from customers
where country
