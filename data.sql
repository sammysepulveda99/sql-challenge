----------------------
---1.List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,
	   employees.last_name,
	   employees.first_name,
	   employees.sex,
	   salaries.salary
FROM employees
RIGHT JOIN salaries ON employees.emp_no=salaries.emp_no;

--------Successfully run. Total query runtime: 3 secs 20 msec.
---------300024 rows affected.

---2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.hire_date FROM employees
WHERE employees.hire_date>='01/01/1986' AND employees.hire_date <='12/31/1986';

-------Successfully run. Total query runtime: 586 msec.
--------36150 rows affected.

----3.List the manager of each department with the following
----information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.emp_no,
	   dept_manager.dept_no,
	   departments.dept_no,
	   departments.dept_name,
	   employees.first_name,
	   employees.last_name
FROM dept_manager
LEFT JOIN departments ON dept_manager.dept_no=departments.dept_no
LEFT JOIN employees ON dept_manager.emp_no=employees.emp_no
------Successfully run. Total query runtime: 106 msec.
----24 rows affected.

---------4.List the department of each employee with the 
-------following information: employee number, last name, first name, and department name.
SELECT employees.emp_no,
	   employees.last_name,
	   dept_emp.emp_no,
	   dept_emp.dept_no,
	   departments.dept_no,
	   departments.dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no;

-------Successfully run. Total query runtime: 2 secs 158 msec.
-------331603 rows affected.

---------5.List first name, last name, and sex for employees whose
--------first name is "Hercules" and last names begin with "B."
SELECT employees.first_name,
	   employees.last_name,
	   employees.sex
FROM employees
WHERE employees.first_name='Hercules' AND employees.last_name LIKE 'B%';
-------Successfully run. Total query runtime: 446 msec.
----------20 rows affected.

--------6. all employees in the Sales department, including their 
--------employee number, last name, first name, and department name.
SELECT employees.emp_no,
		employees.last_name,
		employees.first_name,
		dept_emp.dept_no,
		departments.dept_name
FROM employees
LEFT JOIN dept_emp ON dept_emp.emp_no=employees.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name='Sales';
-----Successfully run. Total query runtime: 1 secs 43 msec.
----52245 rows affected.


-------7.List all employees in the Sales and Development departments, 
--------including their employee number, last name, first name, and department name.
SELECT employees.emp_no,
	   employees.last_name,
	   employees.first_name,
	   dept_emp.dept_no,
	   departments.dept_name
FROM employees
LEFT JOIN dept_emp ON dept_emp.emp_no=employees.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name='Sales' OR departments.dept_name='Development';
------Successfully run. Total query runtime: 1 secs 800 msec.
--------137952 rows affected.

--------8.In descending order, list the frequency count of employee last names, 
---------i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) FROM employees GROUP BY last_name
ORDER BY COUNT (last_name)DESC;

---------Successfully run. Total query runtime: 628 msec.
---------1638 rows affected.



