SELECT emp_no,first_name,last_name FROM employees;

SELECT emp_no,title,from_date,to_date FROM titles;

SELECT  e.emp_no,
		e.first_name,
        e.last_name,
  		e.birth_date,
        t.title,
        t.from_date,
        t.to_date
INTO retirement_titles
FROM employees AS e
    INNER JOIN titles AS t
        ON (e.emp_no = t.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

SELECT * FROM retirement_titles;

DROP Table emp_titles;

DROP TABlE Unique_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name,
last_name,
title


INTO Unique_titles
FROM emp_titles
ORDER BY emp_no, to_date DESC;

Select DISTINCT (title) FROM Unique_titles;


SELECT COUNT(emp_no), title
--INTO Retiring_Titles
FROM Unique_titles
GROUP BY title
ORDER BY COUNT DESC;

SELECT emp_no,First_name,last_name, birth_date
FROM employees

SELECT from_date, to_date
FROM dept_emp;

SELECT * FROM dept_emp;

SELECT DISTINCT ON (emp_no) emp_no,first_name,
last_name, birth_date
--INTO Unique_titles
FROM employees;

SELECT DISTINCT ON (emp_no) e.emp_no,
		e.first_name,
        e.last_name,
  		e.birth_date,
      	d.from_date,
        d.to_date,
		t.title
--INTO emp_titles
FROM employees AS e
    INNER JOIN titles AS t
        ON (e.emp_no = t.emp_no)
	INNER JOIN dept_emp as d
		ON (e.emp_no= d.emp_no)

WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (d.to_date = '9999-01-01')
ORDER BY emp_no;

