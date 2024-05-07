create database college;
use college;
create table departments (
	deptId int primary key,
    deptName varchar(255) not null
    );

create table employee (  
    empId int primary key,
    empName varchar(255) not null,
    empEmail varchar(255) not null,
    departments_id int,
    foreign key(departments_id) references departments(deptId)
    );
    
insert into employee(empId,empName,empEmail,departments_id) values (6,'Gopi','gopi@gmail.com',999);

INSERT INTO `college`.`employee` (`empId`, `empName`, `empEmail`, `departments_id`) VALUES ('2', 'John', 'john@gmail.com', '444');
INSERT INTO `college`.`employee` (`empId`, `empName`, `empEmail`, `departments_id`) VALUES ('3', 'Gopi', 'gopi@gmail.com', '888');
INSERT INTO `college`.`employee` (`empId`, `empName`, `empEmail`, `departments_id`) VALUES ('4', 'Siva', 'siva@gmail.com', '555');
INSERT INTO `college`.`employee` (`empId`, `empName`, `empEmail`, `departments_id`) VALUES ('5', 'Siva', 'siva@gmail.com', '777');
INSERT INTO `college`.`employee` (`empId`, `empName`, `empEmail`, `departments_id`) VALUES ('6', 'John1', 'john1@gmail.com', '444');
INSERT INTO `college`.`employee` (`empId`, `empName`, `empEmail`, `departments_id`) VALUES ('7', 'Gopi1', 'gopi1@gmail.com', '888');
INSERT INTO `college`.`employee` (`empId`, `empName`, `empEmail`, `departments_id`) VALUES ('8', 'Siva1', 'siva1@gmail.com', '555');
INSERT INTO `college`.`employee` (`empId`, `empName`, `empEmail`, `departments_id`) VALUES ('9', 'Siva1', 'siva1@gmail.com', '777');

select * from employee;
    
INSERT INTO `college`.`departments` (`deptId`, `deptName`) VALUES ('111', 'CSE');
INSERT INTO `college`.`departments` (`deptId`, `deptName`) VALUES ('222', 'ECE');
INSERT INTO `college`.`departments` (`deptId`, `deptName`) VALUES ('333', 'EEE');
INSERT INTO `college`.`departments` (`deptId`, `deptName`) VALUES ('444', 'IT');
INSERT INTO `college`.`departments` (`deptId`, `deptName`) VALUES ('555', 'CIVIL');
INSERT INTO `college`.`departments` (`deptId`, `deptName`) VALUES ('666', 'MECH');
INSERT INTO `college`.`departments` (`deptId`, `deptName`) VALUES ('777', 'HR');
INSERT INTO `college`.`departments` (`deptId`, `deptName`) VALUES ('888', 'IT ADMIN');
   
select * from employee group by departments_id;
select count(*) No_Of_Employees,departments_id as Depertment
from employee 
group by departments_id;

select count(*) as No_Of_Employees,departments_id as Depertment
from employee 
group by departments_id
having No_Of_Employees >= 2;



