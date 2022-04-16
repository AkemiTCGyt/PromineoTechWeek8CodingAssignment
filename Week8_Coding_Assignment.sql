# Question 1

# USE Employees;
# SELECT count(title) AS "Number of Employees" , t.title AS "Title Name" , e.birth_date AS "Birth Date"
# FROM titles t
# INNER JOIN employees e ON e.emp_no = t.emp_no
# WHERE e.birth_date > "1965-01-01"
# GROUP BY t.title;

# Question 2

# USE Employees;
# SELECT t.title AS "Title Name" , avg(salary) AS "Average Salary"
# FROM titles t
# INNER JOIN salaries s ON t.emp_no = s.emp_no
# GROUP BY t.title;

# Question 3

# USE Employees;
# SELECT d.dept_name AS "Department" , SUM(s.salary) AS "Salary Sum"
# FROM departments d
# INNER JOIN dept_emp de ON de.dept_no = d.dept_no
# INNER JOIN salaries s ON s.emp_no = de.emp_no
# WHERE de.from_date >= '1990-01-01' AND de.to_date <= '1992-12-31' AND d.dept_name = 'Marketing'
# GROUP BY d.dept_name;