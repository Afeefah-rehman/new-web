use labtasks

create table salesman(
salesman_id int primary key identity(1,1),
salesman_name varchar(250),
city varchar(250),
earning int);
select*from salesman

insert into salesman
values('selim','anakar',2020),
('anderson','london',3680),
('erik','berlin',2995),
('walter','stockholm',4390),
('khaled','amman',3970),
('paul','london',5800);

create table customer0(
cust_id int primary key identity(1,1),
cust_name varchar(250),
city varchar(250),
salesman_id int,
foreign key (salesman_id) references salesman(salesman_id));
select*from customer0
insert into customer0
values('nick','newyork',001),
('Graham','California',002),
('Brad','london',005),
('jhons','paris',006),
('Davis','new york',001),
('Geof','Berlin',003),
('julian','london',002);
drop table customer0;
--query1
create unique index Market on customer0(cust_name)
--query2
create nonclustered index id_index on salesman(salesman_id ASC) 
--query3
create nonclustered index Market on customer0(cust_id)
--query4
drop index market on customer0
--query5
exec sp_helpindex customer0

select cust_name from customer0

--view
create view namecity as select cust_name,city from customer0;
select * from namecity;

update namecity
set city='karachi'


