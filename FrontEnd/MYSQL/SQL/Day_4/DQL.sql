create database company;

use company;

create table Employees(
id int,
name varchar(50),
department varchar(20),
salary int,
city varchar(50)
);

insert into employees values 
(101,'Sudhan','Developer',65000,'Chennai'),
(102,'Rahul','Tester',40000,'Madurai'),
(103,'Karthik','Developer',55000,'Chennai'),
(104,'Ajay','HR',35000,'Salem'),
(105,'Vijay','Manager',85000,'Coimbatore'),
(106,'Arun','Developer',60000,'Bangalore'),
(107,'Priya','Tester',45000,'Chennai'),
(108,'Divya','HR',30000,'Madurai'),
(109,'Surya','Developer',70000,'Salem'),
(110,'Anitha','Manager',90000,'Chennai');

-- task 1 

select * from employees;

-- task 2

select name,department,salary from employees;

-- task 3

select distinct city from employees;

--  task 4

select * from employees where city = "chennai"; 

--  task 5

select * from employees where salary > 60000;
select * from employees where salary <=45000;

--  task 6

 select * from employees where department="developer" and city="chennai";
 select * from employees where city="madurai" or city="salem";
 
 -- task 7
 
select * from employees where name like "a%";
select * from employees where name like "%a";
 select * from employees where name like "%ya%";
 
 -- task 8
 
 select * from employees where city = "chennai" or city = "salem";
 
 select * from employees where salary between 45000 and 70000;
 
 --  task 9
 
 select * from employees order by salary desc;
 
 select * from employees order by name;
 
 -- task 10
 
 select * from employees limit 5;
 select * from employees order by salary desc limit 3;
  

 

