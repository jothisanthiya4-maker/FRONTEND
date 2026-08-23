create database compdatabase;

use compdatabase;

create table Employees(

emp_id int primary key auto_increment,

emp_name varchar(20),

department varchar(20),

salary int ,

city varchar(20)

);

alter table  Employees add column email varchar(10) unique, 

add column phone int,

add column experience int;

describe EmployeeDetails;

alter table Employees modify column salary bigint;

alter table Employees rename column emp_name to employee_name;

alter table Employees drop column experience;

alter table Employees drop column email;

rename table Employees to EmployeeDetails;

