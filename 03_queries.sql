
-- 1.Display all employee details.
select * 
from emp;

-- 2.Display only employee names.
select emp_name 
from emp;

-- 3.Display employee names and salaries.
select emp_name, salary 
from emp;

-- 4.Display all employees from Hyderabad.
select * 
from emp
where city = 'Hyderabad';

-- 5.Display employees working in the IT department.
select * 
from emp
where dept = 'IT';

-- 6.Display employees whose salary is greater than 60000.
select * 
from emp
where salary > 60000;

-- 7.Display employees whose salary is between 50000 and 70000.
select * 
from emp
where salary between 50000 and 70000;

-- 8.Display employees whose age is greater than 30.
select * 
from emp
where age > 30;

-- 9.Display employees who joined after 2022-01-01.
select * 
from emp
where joining_date > '2022-01-01';

-- 10.Display employees with experience greater than 5 years.
select * 
from emp
where experience > 5;

-- 11.Display employees from Hyderabad working in IT.
select * 
from emp
where city = 'Hyderabad' and dept = 'IT';
 
-- 12.Display employees from HR or Finance.
select * 
from emp
where dept = 'HR' or dept = 'Finance';

-- 13.Display employees ordered by salary (Highest to Lowest).
select * 
from emp
order by salary desc;

-- 14.Display employees ordered by age.
select * 
from emp
order by age asc;

-- 15.Display top 5 highest-paid employees.
select * 
from emp
order by salary desc
limit 5;

-- 16.Display top 10 youngest employees.
select * 
from emp
order by age
limit 10;

-- 17.Count total employees.
select count(*) as total_employees 
from emp;

-- 18.Find highest salary.
select max(salary) as highest_salary 
from emp;

-- 19.Find lowest salary.
select min(salary) as lowest_salary 
from emp;

-- 20.Find average salary.
select avg(salary) as average_salary 
from emp;

-- 21.Count the number of employees in each department. 
select count(*) AS total_employees, 
dept 
from emp 
group by dept; 

-- 22.Count the number of employees in each city. 
select count(*) AS total_employees, 
city 
from emp
group by city; 

-- 23.Find the average salary of each department. 
select avg(salary), 
dept 
from emp 
group by dept;

-- 24.Find the highest salary in each department. 
select max(salary), 
dept 
from emp 
group by dept; 

-- 25.Find the lowest salary in each department. 
select min(salary), 
dept 
from emp 
group by dept; 

-- 26.Find the total salary paid in each department. 
select sum(salary), 
dept 
from emp 
group by dept;

-- 27.Find the average age of employees in each department. 
select avg(age) AS average_age, 
dept 
from emp 
group by dept;

-- 28.Find the maximum experience in each department. 
select max(experience), 
dept 
from emp 
group by dept; 

-- 29.Find the minimum experience in each department. 
select min(experience), 
dept 
from emp 
group by dept; 

-- 30.Count male and female employees separately. 
SELECT gender, COUNT(*) AS total
FROM emp
GROUP BY gender;

-- 31.Display departments having more than 15 employees. 
select count(dept), 
dept 
from emp 
group by dept 
having count(dept) > 15; 

-- 32.Display cities having more than 10 employees. 
select count(city), 
city 
from emp 
group by city 
having count(city) > 10; 

-- 33.Display departments whose average salary is greater than 65000. 
select avg(salary), 
dept 
from emp 
group by dept 
having avg(salary) > 65000;

-- 34.Display departments whose maximum salary is greater than 90000. 
select max(salary), 
dept 
from emp 
group by dept 
having max(salary) > 90000; 

-- 35.Display departments whose minimum salary is less than 50000. 
select min(salary), 
dept 
from emp 
group by dept 
having min(salary) < 50000; 

-- 36.Display cities whose average salary is greater than 60000. 
select avg(salary), 
city 
from emp 
group by city 
having avg(salary) > 60000;

-- 37.Display departments where the total salary is greater than 1200000. 
select sum(salary),
dept 
from emp 
group by dept 
having sum(salary) > 1200000; 

-- 38.Display departments having more than 5 employees with experience greater than 5 years. 
select count(dept),
dept 
from emp 
where experience > 5 
group by dept 
having count(dept) > 5; 

-- 39.Display departments ordered by average salary (highest first). 
select avg(salary),
dept 
from emp 
group by dept 
order by avg(salary) desc;

-- 40.Display cities ordered by employee count (highest first). 
select count(*), 
city
from emp 
group by city 
order by count(*) desc;

-- 41.Classify employees based on salary. 
        --Salary < 50000 → Low Salary 
        --Salary between 50000 and 70000 → Medium Salary 
        --Salary > 70000 → High Salary 
select salary, 
case 
when salary < 50000 then 'Low Salary' 
when salary between 50000 and 70000 then 'Medium Salary' 
when salary > 70000 then 'High Salary' 
end as salary_catogery 
from emp; 

-- 42.Display employee name, salary and salary category. 
select emp_name, salary , 
case 
when salary < 50000 then 'Low Salary' 
when salary between 50000 and 70000 then 'Medium Salary' 
when salary > 70000 then 'High Salary' 
end as salary_catogery 
from emp; 

-- 43.Classify employees based on experience. 
        --1–3 → Beginner 
        --4–7 → Intermediate 
        --Above 7 → Expert 
select experience, 
case 
when experience between 1 and 3 then 'Beginner' 
when experience between 4 and 7 then 'Intermediate' 
when experience > 7 then 'Expert' 
end as experience_level 
from emp;

-- 44.Display employee name, experience and experience level. 
select emp_name, 
experience, 
case 
when experience between 1 and 3 then 'Beginner' 
when experience between 4 and 7 then 'Intermediate' 
when experience > 7 then 'Expert' 
end as experience_level 
from emp; 

-- 45.Count employees in each salary category. 
SELECT
CASE
    WHEN salary < 50000 THEN 'Low Salary'
    WHEN salary BETWEEN 50000 AND 70000 THEN 'Medium Salary'
    ELSE 'High Salary'
END AS salary_category,
COUNT(*) AS total_employees
FROM emp
GROUP BY
CASE
    WHEN salary < 50000 THEN 'Low Salary'
    WHEN salary BETWEEN 50000 AND 70000 THEN 'Medium Salary'
    ELSE 'High Salary'
END;

-- 46.Find employees earning above the average salary. 
SELECT *
FROM emp
WHERE salary >
(
    SELECT AVG(salary)
    FROM emp
);

-- 47.Find employees earning below the average salary. 
SELECT *
FROM emp
WHERE salary <
(
    SELECT AVG(salary)
    FROM emp
);

-- 48.Find employees earning the highest salary. 
SELECT *
FROM emp
WHERE salary =
(
    SELECT MAX(salary)
    FROM emp
);

-- 49.Find employees earning the lowest salary. 
SELECT *
FROM emp
WHERE salary =
(
    SELECT MIN(salary)
    FROM emp
);

-- 50.Find employees with the second highest salary. 
SELECT *
FROM emp
WHERE salary =
(
    SELECT DISTINCT salary
    FROM emp
    ORDER BY salary DESC
    OFFSET 1
    LIMIT 1
);

-- 51.Find employees older than the average age.
SELECT *
FROM emp
WHERE age >
(
    SELECT AVG(age)
    FROM emp
);

-- 52.Find employees with more experience than the average experience. 
SELECT *
FROM emp
WHERE experience >
(
    SELECT AVG(experience)
    FROM emp
);

-- 53.Find employees working in the department having the highest average salary. 
SELECT *
FROM emp
WHERE dept =
(
    SELECT dept
    FROM emp
    GROUP BY dept
    ORDER BY AVG(salary) DESC
    LIMIT 1
); 

-- 54.Assign row numbers based on salary. 
select salary, 
row_number() 
over(order by salary) as row_no from emp; 

-- 55.Rank employees based on salary. 
select salary,
rank() over(order by salary) as row_no from emp; 

-- 56.Dense rank employees based on salary. 
select salary, 
dense_rank() over(order by salary) as row_no from emp;

-- 57.Rank employees department-wise based on salary. 
select salary, 
dept, 
rank() over(partition by dept order by salary) as row_no from emp; 

-- 58.Find the top 3 highest-paid employees. 
select *
from emp 
order by salary desc 
limit 3; 

-- 59.Find the top 2 highest-paid employees in each department. 
SELECT *
FROM
(
    SELECT *,
           ROW_NUMBER() OVER
           (
               PARTITION BY dept
               ORDER BY salary DESC
           ) AS rn
    FROM emp
) t
WHERE rn <= 2;

-- 60.Create a CTE containing employees with salary above 70000. 
with high_salary as(
     select * 
     from emp 
     where salary > 70000 
     ) 
select * from high_salary; 

-- 61.Display employees from the CTE. 
with high_salary as(
     select *
     from emp 
     where salary > 70000 
     ) 
select * from high_salary; 

-- 62.Find the average salary using a CTE. 
with avg_salary as( 
    select avg(salary) 
    from emp )
select * from avg_salary;

-- 63.Rank employees using a CTE. 
with emp_rank as( 
    select *, 
    rank() over(order by salary) as salary_rank
    from emp 
    ) 
select * from emp_rank; 

-- 64.Create a view for IT employees. 
create view it_emp as 
select * 
from emp 
where dept = 'IT'; 

-- 65.Create a view for employees from Hyderabad. 
create view city_emp as 
select * 
from emp 
where city = 'Hyderabad';

-- 66.Display data from the IT view. 
select * 
from it_emp; 

-- 67.Drop a view. 
drop view it_emp; 
