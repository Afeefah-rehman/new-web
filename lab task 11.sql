use labtasks

create table Countries( 
country varchar(250),	
continent varchar(250),	
indep_year int);
select * from Countries
insert into Countries
values('Australia','Oceania',1901), 
('Brunei','Asia',1984),
('Chile','South America',1818), 
('Egypt','Africa',1922),
('India','Asia',1947),
('Norway','Europe',1905), 
('Oman','Asia',1951),
('Pakistan','Asia',1947), 
('Portugal','Europe',1143),
('Uruguay','South America',1825), 
('USA','North America',1776);

create table Prime_Minister(
country varchar(250),
continent varchar(250),
prime_minister varchar (250));
select * from Prime_Minister
insert into Prime_Minister
values('Egypt','Africa','Mostafa Madbouly'),
('Portugal','Europe','Antonio Costa'), 
('United Kingdom','Europe','Boris Johnson'), 
('India','Asia','Narendra Modi'), 
('Australia','Oceania','Scott Morrison'), 
('Norway','Europe','Jonas Gahr Store'), 
('Brunei','Asia','Hassanal Bolkiah'), 
('Oman','Asia','Haitham bin Tarik'),
('New Zealand','Oceania','Jacinda Ardern'); 
drop table Prime_Minister;

create table Monarch( 
country varchar(250),	
continent varchar(250),	
monarch varchar(250));
select * from Monarch
insert into Monarch
values
('Brunei','Asia','Hassanal Bolkiah'),
('Norway','Europe','Harald V'),
('Oman' ,'Asia','Haitham bin Tarik'), 
('United Kingdom','Europe','Queen Elizabeth II' );

 
 create table President( 
country varchar(250),	
continent varchar (250),
president varchar (250));
select * from President
insert into President
values
('Egypt','Africa','Abdel Fattah el-Sisi'),
('Portugal','Europe','Marcelo Rebelo de Sousa' ),
('USA','North America','Joe Biden'),
('Uruguay','South America','Luis Lacalle Pou') ,
('Pakistan','Asia','Arif Alvi'),
('Chile','South America','Gabriel Boric'), 
('India','Asia','Ram Nath Kovind');

--query1
create view asian_countries as select  Country,prime_minister from Prime_Minister;
select * from asian_countries;

--querry2
insert into Prime_Minister(country,prime_minister)
values('china','albusdumbldore');
 
 --query3
 update asian_countries
 set country ='people republic of china'
 where country='china';

 --query4
 create view country_leaders as 
 select country,continent,prime_minister,president,monarch from countries 
 left join prime_minister on country = prime_minister
 left join President on country= president 
 left join Monarch on country =Monarch

 --query5
  update asian_countries
 set country ='people republic of china'
 where country='china';
