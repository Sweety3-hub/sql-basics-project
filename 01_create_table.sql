CREATE DATABASE employee_project;

CREATE table emp(
emp_id INT PRIMARY KEY,
emp_name varchar(50),
gender varchar(10),
age INT,
dept_id int,
city varchar(50),
salary decimal(10,2),
joining_date date
);

alter table emp
drop column dept_id;

alter table emp
add dept varchar(30),
add experience int
