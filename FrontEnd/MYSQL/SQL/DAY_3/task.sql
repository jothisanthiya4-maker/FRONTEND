use emp;

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO Employees (id, name, department, salary, city)
VALUES
(1, 'Arun', 'IT', 50000, 'Chennai'),
(2, 'Priya', 'HR', 45000, 'Bangalore'),
(3, 'Karthik', 'Finance', 60000, 'Chennai'),
(4, 'Divya', 'IT', 55000, 'Coimbatore'),
(5, 'Rahul', 'Sales', 40000, 'Madurai');

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

INSERT INTO Students (student_id, student_name, course, age, city)
VALUES
(1, 'Arun', 'Computer Science', 21, 'Chennai'),
(2, 'Priya', 'Information Technology', 20, 'Bangalore'),
(3, 'Karthik', 'Mechanical Engineering', 22, 'Coimbatore'),
(4, 'Divya', 'Computer Science', 21, 'Madurai'),
(5, 'Rahul', 'Electronics', 23, 'Chennai'),
(6, 'Sneha', 'Information Technology', 20, 'Salem'),
(7, 'Vijay', 'Civil Engineering', 22, 'Trichy'),
(8, 'Anitha', 'Computer Science', 21, 'Chennai');

update employees set salary=75000 where id=3;

select * from employees;

select * from students;


update employees set department= "team lead", city = "banglore" where id =2;

delete from employees where id =5;

update employees set salary = salary +10000 where department = "it";

update students set city = "coinbatore" where city = "chennai";

delete from students where age < 25;

