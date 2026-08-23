use emp;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    City VARCHAR(50),
    Salary INT,
    Experience INT
);

INSERT INTO Employee (EmpID, EmpName, Department, City, Salary, Experience) VALUES
(101, 'Rahul', 'Developer', 'Chennai', 65000, 3),
(102, 'Priya', 'HR', 'Bangalore', 50000, 2),
(103, 'Arun', 'Tester', 'Hyderabad', 45000, 1),
(104, 'Sneha', 'Developer', 'Chennai', 70000, 5),
(105, 'Karthik', 'Manager', 'Mumbai', 90000, 8),
(106, 'Divya', 'HR', 'Chennai', 52000, 3),
(107, 'Vijay', 'Developer', 'Pune', 68000, 4),
(108, 'Meena', 'Tester', 'Bangalore', 47000, 2),
(109, 'Ajay', 'Developer', 'Hyderabad', 72000, 6),
(110, 'Anitha', 'Manager', 'Delhi', 95000, 10),
(111, 'Suresh', 'Developer', 'Chennai', 60000, 2),
(112, 'Nisha', 'HR', 'Pune', 53000, 4),
(113, 'Ramesh', 'Tester', 'Mumbai', 48000, 3),
(114, 'Keerthi', 'Developer', 'Bangalore', 75000, 5),
(115, 'Manoj', 'Manager', 'Chennai', 98000, 12),
(116, 'Lavanya', 'Tester', 'Delhi', 49000, 2),
(117, 'Harish', 'Developer', 'Pune', 67000, 4),
(118, 'Swathi', 'HR', 'Hyderabad', 55000, 5),
(119, 'Prakash', 'Developer', 'Mumbai', 73000, 6),
(120, 'Deepa', 'Tester', 'Chennai', 51000, 3);

select * from employee;

alter table employee add email varchar(20) unique;

desc employee;

alter table employee modify salary decimal;

alter table employee rename column city to location;

update  employee SET salary = "60000" ,  department = "developer" where EmpID =102;

delete from employee where EmpID = 101;

delete from employee where location = "chennai" limit 1;

select empname, salary from employee;

select distinct Department from employee;

select * from employee where salary > 40000;

select * from employee order by salary desc limit 1; 

select * from employee order by salary  limit 1; 

select * from employee order by salary desc limit 5; 

select department , count(*) from employee group by department;

select department, sum(salary) from employee group by department;

select location , avg(salary) from employee group by location;

select department, max(salary) from employee group by department;

select department, count(*) from employee group by department having count(*) > 2;

select location, avg(salary) from employee group by location having avg(salary) > 50000;

select department, count(*), sum(salary), avg(salary), max(salary), min(salary) from employee group by department order by sum(salary);

select location, count(*) , avg(salary) from employee group by location having avg(salary) > 40000 and count(*) >2 ;

select department, sum(salary) , max(salary), min(salary) from employee group by department having avg(salary) > 60000;

select department , location, count(*), sum(salary) from employee group by department, location order by count(*);

select department, count(*), sum(salary), avg(salary) from employee where  location ="chennai" group by department having sum(salary)>45000 and count(*)>2 and  avg(salary)>50000 order by sum(salary) limit 3;






