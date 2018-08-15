USE employees;

-- #2
SELECT dep.dept_name AS 'Department Name', concat(emp.first_name,' ', emp.last_name) as 'Department Manager'
FROM employees AS emp
JOIN dept_manager as dmngr
ON dmngr.emp_no = emp.emp_no
JOIN departments AS dep
ON dep.dept_no = dmngr.dept_no
WHERE dmngr.to_date = '9999-01-01'
ORDER BY `Department Name` ASC;

-- #3
SELECT dep.dept_name AS 'Department Name', concat(emp.first_name,' ', emp.last_name) AS 'Manager Name'
FROM employees AS emp
JOIN dept_manager AS dmngr
ON dmngr.emp_no = emp.emp_no
JOIN  departments AS dep
ON dep.dept_no = dmngr.dept_no
WHERE gender = 'F' AND dmngr.to_date = '9999-01-01'
GROUP BY `Department Name`, `Manager Name`
ORDER BY `Department Name` ASC;

-- #4
SELECT t.title, COUNT(demp.emp_no)
FROM employees AS emp
JOIN titles AS t
ON t.emp_no = emp.emp_no
JOIN dept_emp AS demp
ON demp.emp_no = emp.emp_no
JOIN departments AS dep
ON dep.dept_no = demp.dept_no
WHERE dep.dept_name = 'Customer Service' AND t.to_date > CURRENT_DATE AND demp.to_date > CURRENT_DATE
GROUP BY t.title
ORDER BY t.title ASC;

-- #5
SELECT dep.dept_name AS 'Department Name', concat(emp.first_name,' ', emp.last_name) AS 'Name', sal.salary AS Salary
FROM employees AS emp

JOIN salaries AS sal
ON sal.emp_no = emp.emp_no

JOIN dept_emp AS demp
ON demp.emp_no = emp.emp_no

JOIN departments AS dep
ON dep.dept_no = demp.dept_no

JOIN dept_manager AS dmngr
ON dmngr.emp_no = emp.emp_no

WHERE dmngr.to_date = '9999-01-01' AND sal.to_date > current_date
GROUP BY `Department Name`, Name, Salary
ORDER BY `Department Name` ASC;