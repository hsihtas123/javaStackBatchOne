create database zomoto;
create database employee;
create database shopping;
drop database zomoto;
show databases;
use employee;

create table if not exists 
employee (
empId integer ,
empName varchar(255),
empSalary decimal(10,2),
empDateOfJoining date,
empCity varchar(255) );

describe employee;

insert into employee(empID,empName,empSalary,empDateOfJoining,empCity) values(101,'Siva',45000.89,'2020-03-24','Pune');
insert into employee(empID,empName,empSalary,empDateOfJoining,empCity) values(102,'John',35000.89,'2021-03-24','Goa');
insert into employee(empID,empName,empSalary,empDateOfJoining,empCity) values(103,'Karthick',25000.89,'2023-05-12','Chennai');
insert into employee(empID,empName,empSalary,empDateOfJoining,empCity) values(104,'Vijay',45000.89,'2020-05-22','Kochi');
insert into employee(empID,empName,empSalary,empDateOfJoining,empCity) values(105,'Arjun',44000.89,'2020-06-16','Delhi');
insert into employee(empID,empName,empSalary,empDateOfJoining,empCity) values(106,'Stephen',55000.89,'2015-01-10','Pune');
insert into employee(empID,empName,empSalary,empDateOfJoining,empCity) values(107,'Keerthi',65000.89,'2020-03-24','Pune');

insert into employee(empID,empName,empSalary,empDateOfJoining) values(106,'Lakshmi',75000.89,'2020-03-24');
insert into employee(empID,empName,empSalary,empDateOfJoining) values(106,'Anu',75000.89,'2020-03-24');

select * from employee;

create table customer ( 
customerId integer primary key,  
customerName varchar(255) not null, 
customerAge int not null check(customerAge >18),
customerPhone bigint(10) not null,
customerCity varchar(255) default 'Goa' );

describe customer;

-- insert into customer values(102,'Preethi',17,9566259969,'Madurai');
-- insert into customer values(102,'Preethi',22,null,'Madurai');
insert into customer values(102,'Preethi',22,9566259978,'');
insert into customer(customerId,customerName,customerAge,customerPhone) values(103,'Ajay',25,9566259978);


update customer set customerCity= 'Mumbai' where customerId = 102;
update customer set customerCity= 'Kolkata',customerAge=25 where customerId = 102;

alter table customer add column company varchar(255) default 'Zoho';
alter table customer add dateOfBirth date;
alter table customer drop customerAge;
alter table customer modify customerPhone varchar(255);

select * from   customer;
select * from customer where customerId = 101;
select * from customer where company = 'Zoho';

select * from employee where empSalary>40000 and empSalary<60000;

select * from employee where empCity like '%o%'; 
select * from employee where empCity like 'G%'; 
select * from employee where empCity like '%chi'; 
select * from  employee where empCity like '___';
select * from employee where empCity not like '%P%';

select * from employee where empCity is null;
select * from employee where empCity is not null;

select * from employee where empId in (101,102,103);
select * from employee where empId not in (101,102,103);

select * from employee where empId between 101 and 105;
select * from employee where empId not between 101 and 105;

alter table employee modify empId integer primary key;
delete from employee where  empId=106;

-- Aggregate functions
select max(empSalary) as 'Maximum Salary' from employee;
select min(empSalary) as 'Minimum Salary' from employee;
select avg(empSalary) as 'Avarage Salary' from employee;
select sum(empSalary) as 'Total  Salary' from employee;
select count(*) as 'Number of rows' from employee;


 -- 07:37:47	delete from employee where empName in ('Lakshmi','Anu')	Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.000 sec

