# PromineoTechWeek8CodingAssignment

# Coded by Thomas Le

## Synopsis
In this project, I utilize advanced MySQL queries and joins using primary and foreign keys to find specific data for operational needs using a database of employees.
I logically break down in layman's terms what I need to find before writing each query. For example:

### I want to know how many employees with each title were born after 1965-01-01.
- FUNCTION Sum of employees
- SELECT 3 Columns. 1 for number of employees, 1 for title name, 1 for birth date.
- FROM tables employees after joining with titles
- WHERE born after 1965-01-01
- GROUP BY TITLES

This would be written in MySQL as:
- SELECT count(title) AS "Number of Employees" , t.title AS "Title Name", e.birth_date AS "Birth Date"
- FROM titles t
- INNER JOIN employees e ON e.emp_no = t.emp_no
- WHERE e.birth_date > "1965-01-01"
- GROUP BY t.title;
