create database Hospital;
use  Hospital;

create table patients(
pid int primary key identity(1,1),
pname varchar (50) not null,
gender varchar (50) not null,
DOB date not null,
contact int not null,
);
select* from patients;
insert into patients
values('M.Faiz','male','1987-03-5',0312445);

create table department(
dep_id int primary key identity(1,1),
dep_name varchar (50) not null
);
select* from department;
insert into department
values('ortho');

create table doctors(
Did int primary key identity(1,1),
pid int not null,
specialization varchar(50) not null,
Dep_id int not null,
foreign key (pid) references patients (pid),
foreign key (dep_id) references department (dep_id)
);
select* from doctors;
insert into doctors
values(1,'orthopadic',1);


create table appointments(
app_id int primary key identity(1,1),
pid int not null,
Did int not null,
app_date date not null,
app_status varchar(50) not null,
foreign key (pid) references patients (pid),
foreign key (Did) references doctors (Did)
);
select* from appointments;
insert into appointments
values(1,1,'2025-05-03','on');

create table Medicalrecords(
rec_id int primary key identity(1,1),
pid int not null,
diagnosis varchar(50),
treatment varchar(50),
prescription varchar(50),
rec_date date ,
foreign key (pid) references patients (pid)
);
select* from Medicalrecords;
insert into Medicalrecords
values(1,'bone issue','medicen and care','use warm bandages, things not not to eat : rice, potato ,meet','2025-05-03');






-- querry1

select doctors.Did,count(appointments.app_id) as total_appoinments
from doctors
left join appointments on doctors.Did =appointments.Did
group by doctors.Did
order by total_appoinments;

-- querry2

select doctors.Dep_id,count (doctors.Did) as doctor_count
from department
join doctors on department.dep_id = doctors.Dep_id
group by doctors.Dep_id
having count (doctors.Dep_id) > 1;

--querry3 

select Medicalrecords.pid, count (Medicalrecords.pid) as record_count 
from patients
join Medicalrecords on patients.pid = Medicalrecords.pid
group by Medicalrecords.pid
having count (Medicalrecords.pid) > 1;

-- querry5

select appointments.pid, count (appointments.pid) as num_appoinments
from appointments

group by appointments.pid
having count (appointments.pid) > 1