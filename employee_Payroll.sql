#UC1
create database payroll_service;
show databases;
use payroll_service;

#UC2
create table employee_payroll(
	id int unsigned not null auto_increment,
	name varchar (150) not null,
	salary double not null,
    start date not null,
    primary key (id)

);


#UC3
insert into employee_payroll (name,salary,start) values
('Minal',10000.0,'2021-01-03'),
('Minu',30000.0,'2020-02-05'),
('Mina',5000.0,'2021-07-04'),
('Kalpesh',7000.0,'2021-04-11');

#UC4
select * from employee_payroll;

#UC5

select * from employee_payroll where name = 'Minal'; 
select * from employee_payroll where start between cast('2021-01-01' As date) and Date (now());

#UC6
Alter table employee_payroll add gender varchar(1) after name;

update employee_payroll set gender = 'F' where name = 'Minal' or name ='Minu' or name ='Mina';
update employee_payroll set gender = 'M' where name = 'Kalpesh';


#UC7
select salary from employee_payroll;
select sum(salary) from employee_payroll;
select min(salary) from employee_payroll;
select max(salary) from employee_payroll;
select count(salary) from employee_payroll;
select avg(salary) from employee_payroll;
select sum(salary) from employee_payroll where gender = 'F' group by gender;


#Uc8
alter table employee_payroll 
add phone varchar(20), 
add address varchar(200) default 'address1' ,
add department varchar(20)  not null ;

update employee_payroll 
set 
	department='Finance' 
where
	name in ('Mina','Kalpesh');

select * from employee_payroll;  


#Uc9
alter table employee_payroll 
add basic_pay int, 
add deductions int,
add taxable_pay int  ,
add tax int,
add net_pay int;

#UC10
create table employee_payroll(
	id int unsigned not null auto_increment,
	name varchar (150) not null,
	gender varchar(1),
    start date not null,
    phone varchar(20), 
    address varchar(200) default 'address1',
    department varchar(20)  not null ,
    basic_pay int, 
    deductions int,
    taxable_pay int  ,
    tax int,
    net_pay int,
  
    primary key (id)

);

insert into employee_payroll (name,department,gender,basic_pay
,deductions,taxable_pay,tax,net_pay,start) values
	('Terissa','Marketing','F',3000000,1000000,
    2000000,500000,1500000,'2021-07-08');
    
insert into employee_payroll (name,department,gender,basic_pay
,deductions,taxable_pay,tax,net_pay,start) values
	('Terissa','Sales','F',3000000,
    0,0,0,0,'2021-06-01');
    
    update employee_payroll set phone = '7895632449' where name = 'Terissa';

select * from employee_payroll;

drop table employee_payroll;







