CREATE DATABASE udemy_practice;
USE udemy_practice;

-- exercise 1
SELECT 
dept_name,
gender,
ROUND(AVG(salary),0) AS avg_salary
FROM salaries s
JOIN dept_emp de ON de.emp_no = s.emp_no
JOIN departments d ON d.dept_no = de.dept_no
JOIN employees e ON e.emp_no = s.emp_no
GROUP BY d.dept_no, gender 
ORDER BY d.dept_no;

-- exercise 2
SELECT MIN(dept_no) AS lowest_department, MAX(dept_no) AS highest_department FROM dept_emp;

-- exercise 3
SELECT emp_no, dept_no, 
(CASE 
WHEN emp_no <= 10020 THEN 110022
	 ELSE 110039
     END ) AS manager
FROM dept_emp
WHERE emp_no < 10040
ORDER BY emp_no;

-- exercise 4
SELECT emp_no, dept_no, from_date FROM dept_emp
WHERE YEAR(from_date) LIKE 2000
ORDER BY emp_no;

-- exercise 5
SELECT emp_no, title FROM titles
WHERE title LIKE 'Senior Engineer'
ORDER BY emp_no;

-- exercise 6
SELECT COUNT(*) FROM salaries
WHERE (DATEDIFF(to_date,from_date) > 365) AND (salary >=100000);

-- exercise 7
SELECT * FROM dept_emp
WHERE DAY(from_date) > DAY(current_date())
ORDER BY emp_no;

-- exercise 8
SELECT MAX(salary), MIN(salary) FROM salaries;
