create database flights_management_system
use flights_management_system
create table passengers_tab(
id int primary key identity(1,1),
passenger_name varchar (20)
)
insert into passengers_tab values('zia'),('umer'),('hamza')
select * from confirmation_tb

create table flights_tb(
id int primary key identity(1,1),
flights_name varchar(25)
)
insert into flights_tb values ('shaheen'),('airblue'),('seyal')

create table classes_tb(
id int primary key identity(1,1),
classes_name varchar(25)
)
insert into classes_tb values ('business'),('economy'),('one way ticket')
create table confirmation_tb(
id int primary key identity(1,1),
p_id int foreign key references passengers_tab(id),
f_id int foreign key references flights_tb(id),
c_id int foreign key references classes_tb(id),
)
insert into confirmation_tb values(1,1,1)
select * from flights_tb
select * from passengers_tab
select * from classes_tb
select * from confirmation_tb

select * from passengers_tab 
inner join confirmation_tb on passengers_tab.id=confirmation_tb.p_id
inner join flights_tb on confirmation_tb.f_id=flights_tb.id
inner join classes_tb on confirmation_tb.c_id=classes_tb.id   
