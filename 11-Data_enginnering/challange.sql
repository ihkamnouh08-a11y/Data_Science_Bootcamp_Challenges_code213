USE pewlett_hackard;

SELECT employees.emp_no, employees.emp_title_id, employees.first_name, employees.last_name, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no; 

SELECT first_name, last_name, hire_date
FROM employees
WHERE year(hire_date) = 1986; 


SELECT d.dept_no, d.dept_name ,dm.emp_no ,e.last_name ,e.first_name
FROM departments as d
LEFT JOIN dept_manager as dm
ON d.dept_no = dm.dept_no
left JOIN employees as e
on dm.emp_no = e.emp_no;

SELECT e.emp_no ,e.last_name ,e.first_name ,d.dept_name 
FROM employees as e
LEFT JOIN dept_emp as dep
on dep.emp_no = e.emp_no
left JOIN departments as d 
ON d.dept_no = dep.dept_no;

SELECT * FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%'; 

SELECT e.emp_no ,e.last_name ,e.first_name ,d.dept_name 
FROM employees as e
LEFT JOIN dept_emp as dep
on dep.emp_no = e.emp_no
left JOIN departments as d 
ON d.dept_no = dep.dept_no
where d.dept_name = 'Sales';

SELECT e.emp_no ,e.last_name ,e.first_name ,d.dept_name 
FROM employees as e
LEFT JOIN dept_emp as dep
on dep.emp_no = e.emp_no
left JOIN departments as d 
ON d.dept_no = dep.dept_no
where d.dept_name in ('Sales', 'Development');

SELECT last_name ,first_name, count(last_name) as name_count 
FROM employees 
group by last_name
ORDER BY name_count DESC; 
