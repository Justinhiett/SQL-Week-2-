desc employees; 

desc titles;
 
 select title, 
 birth_date, 
 count(*) AS numberEmployees FROM employees 
 inner join titles ON employees.emp_no = titles.emp_no WHERE employees.birth_date > '1965-01-01' GROUP BY title LIMIT 20; 
 
 SELECT title, avg(salary) from salaries inner join titles on salaries.emp_no = titles.emp_no group by title LIMIT 20;   
 
 show tables;  
 
 desc salaries;  
 
 select * FROM salaries;
 
 SELECT * from salaries;
 
 desc departments; 
 
 desc employees;
 
 desc dept_emp; 
 
 SELECT * FROM salaries; 
 
select departments.dept_name, 
concat("$", FORMAT(sum(salary), 2)) AS "Sum of Salary from 1990 to 1992"
FROM departments inner join dept_emp on dept_emp.dept_no = departments.dept_no 
inner join salaries on salaries.emp_no = dept_emp.emp_no
WHERE dept_emp.from_date >= '1990-01-01' and dept_emp.to_date <= '1992-12-31' group by departments.dept_name LIMIT 20;

