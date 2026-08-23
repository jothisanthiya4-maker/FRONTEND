create database emp;
use emp;
CREATE TABLE emptable (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10,2),
    city VARCHAR(100)
);
INSERT INTO emptable (id, name, department, salary, city)
VALUES
(1, 'Rahul', 'HR', 35000.00, 'Chennai'),
(2, 'Priya', 'IT', 55000.00, 'Bangalore'),
(3, 'Arun', 'Finance', 48000.00, 'Hyderabad'),
(4, 'Sneha', 'Marketing', 42000.00, 'Mumbai'),
(5, 'Vikram', 'Sales', 39000.00, 'Delhi'),
(6, 'Anjali', 'IT', 62000.00, 'Chennai'),
(7, 'Karthik', 'HR', 37000.00, 'Coimbatore'),
(8, 'Divya', 'Finance', 51000.00, 'Pune'),
(9, 'Suresh', 'Sales', 44000.00, 'Bangalore'),
(10, 'Meena', 'Marketing', 46000.00, 'Chennai'),
(11, 'Ramesh', 'IT', 68000.00, 'Hyderabad'),
(12, 'Kavya', 'HR', 36000.00, 'Madurai'),
(13, 'Ajay', 'Finance', 53000.00, 'Delhi'),
(14, 'Nisha', 'Sales', 41000.00, 'Mumbai'),
(15, 'Manoj', 'IT', 72000.00, 'Chennai'),
(16, 'Pooja', 'Marketing', 47000.00, 'Pune'),
(17, 'Deepak', 'HR', 38000.00, 'Bangalore'),
(18, 'Keerthi', 'Finance', 56000.00, 'Coimbatore'),
(19, 'Hari', 'Sales', 43000.00, 'Hyderabad'),
(20, 'Swathi', 'IT', 65000.00, 'Chennai');

-- task 1

select  department, count(*) from emptable group by department;

-- task 2

select city, count(*) from emptable group by city;

-- task 3

select department, sum(salary) from emptable group by department; 

-- task 4

 select city, sum(salary) from emptable group by city;
 
 -- task 5
 
 select department, avg(salary) from emptable group by department;
 
 -- task 6
 
 select department, max(salary) from emptable group by department;
 
 -- task 7
 
  select department, min(salary) from emptable group by department;
  
  -- task 8
  
   select city, avg(salary) from emptable group by city;
   
   -- task 9
   
select department, count(*), sum(salary) from emptable group by department;

-- task 10

select city, count(*), max(salary), min(salary) from emptable group by city;

-- task 1

CREATE DATABASE compdb;
use compdb; 

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10,2),
    city VARCHAR(100)
);
rename table employees to emp;

INSERT INTO emp (id, name, department, salary, city) VALUES
(1, 'Rahul', 'Developer', 65000.00, 'Chennai'),
(2, 'Priya', 'HR', 50000.00, 'Bangalore'),
(3, 'Arun', 'Tester', 45000.00, 'Hyderabad'),
(4, 'Sneha', 'Developer', 70000.00, 'Chennai'),
(5, 'Karthik', 'Manager', 90000.00, 'Mumbai'),
(6, 'Divya', 'HR', 52000.00, 'Chennai'),
(7, 'Vijay', 'Developer', 68000.00, 'Pune'),
(8, 'Meena', 'Tester', 47000.00, 'Bangalore'),
(9, 'Ajay', 'Developer', 72000.00, 'Hyderabad'),
(10, 'Anitha', 'Manager', 95000.00, 'Delhi'),
(11, 'Suresh', 'Developer', 60000.00, 'Chennai'),
(12, 'Nisha', 'HR', 53000.00, 'Pune'),
(13, 'Ramesh', 'Tester', 48000.00, 'Mumbai'),
(14, 'Keerthi', 'Developer', 75000.00, 'Bangalore'),
(15, 'Manoj', 'Manager', 98000.00, 'Chennai'),
(16, 'Lavanya', 'Tester', 49000.00, 'Delhi'),
(17, 'Harish', 'Developer', 67000.00, 'Pune'),
(18, 'Swathi', 'HR', 55000.00, 'Hyderabad'),
(19, 'Prakash', 'Developer', 73000.00, 'Mumbai'),
(20, 'Deepa', 'Tester', 51000.00, 'Chennai');

select * from emp;

select department, sum(salary),count(*) from emp group by department having sum(salary) > 150000;

 select city, avg(salary),count(*) from emp group by city having avg(salary) > 50000;
select department,max(salary),count(*) from emp group by department having max(salary) > 70000;
   

select department, count(*), sum(salary) "total salary", avg(salary) from emp group by department having count(*) > 2 and avg(salary) > 50000 order by sum(salary) desc;

select department, count(*) from emp where salary > 30000 group by department having count(*)>2;
 