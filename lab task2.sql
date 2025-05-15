use labtasks

create table students(
roll_no int primary key identity(1,1),
st_name varchar(250),
age int,
GPA int,
city varchar(250));
 insert into students 
 values('maaz',20,3.5,'karachi'),
 ('Waqas',18,2.5,'Islamabad'), 
 ('Talha',19,3,'Karachi'), 
 ('Jibran',21,3.7,' '),
 ('Waqar',19,2.8,'Islamabad'),
 ('Aamir',24,3,' '); 	 
 select*from students
 
 --query 01
 select*from students
 where st_name in('maaz','jibran');

 --query02
select 'st_name'from students
where st_name like'% t %';

--query03
select *from students
where GPA between 2 and 3;

--query04
select * from students
where age>= 20;

--query05
select * from students
where city='islamabad';

--query06
select * from students
where city=' ';