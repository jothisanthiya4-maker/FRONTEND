create database it;

use it;

CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT
);

INSERT INTO Employees VALUES
(1, 'Arun', 'IT', 'Chennai', 45000),
(2, 'Priya', 'HR', 'Chennai', 40000),
(3, 'Karthik', 'Sales', 'Salem', 35000),
(4, 'Divya', 'IT', 'Coimbatore', 50000),
(5, 'Rahul', 'Finance', 'Chennai', 55000),
(6, 'Meena', 'HR', 'Salem', 38000),
(7, 'Vijay', 'Sales', 'Chennai', 42000),
(8, 'Anitha', 'IT', 'Madurai', 48000);

CREATE TABLE Departments (
    dept_id INT,
    department VARCHAR(50),
    manager VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Departments VALUES
(1, 'IT', 'Suresh', 'Chennai'),
(2, 'HR', 'Lakshmi', 'Chennai'),
(3, 'Sales', 'Ramesh', 'Salem'),
(4, 'Finance', 'Kumar', 'Chennai'),
(5, 'Marketing', 'Priya', 'Coimbatore'),
(6, 'Admin', 'Mohan', 'Madurai');

select * from employees;

select * from Departments;

drop table departments;

alter table employees rename column emp_name to name;

alter table employees rename column eid to id;

alter table departments rename column did to id;

select e.name , d.department, d.manager from employees e inner join departments d on e.id = d.id;

