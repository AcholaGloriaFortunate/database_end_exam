--CREATE TABLE employees (
--id INT PRIMARY KEY,
--name VARCHAR(255),
--salary DECIMAL(10, 2),
--department_id INT,
--hire_date DATE );
--CREATE TABLE departments (
--id INT PRIMARY KEY,
--name VARCHAR(255) );
--INSERT INTO departments (id, name) VALUES (1, 'Engineering');
--INSERT INTO departments (id, name) VALUES (2, 'Sales');
--INSERT INTO departments (id, name) VALUES (3, 'Marketing');
--INSERT INTO departments (id, name) VALUES (4, 'HR');

--INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (1, 'Alice',
--60000.00, 1, '2020-01-01');
--INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (2, 'Bob',
--70000.00, 1, '2020-01-15');
--INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (3,
--'Charlie', 80000.00, 2, '2020-02-01');
--INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (4, 'Dave',
--90000.00, 3, '2020-02-15');
--INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (5, 'Eve',
--100000.00, 4, '2020-03-01');

--SELECT e.name, e.salary, d.name AS department
--FROM employees e
--JOIN departments d ON e.department_id = d.id
--JOIN (
    --SELECT department_id, MAX(salary) AS max_salary
    --FROM employees
    --GROUP BY department_id
--) m ON e.department_id = m.department_id AND e.salary = m.max_salary;

--SELECT e.name, e.hire_date, d.name AS department
--FROM employees e
--JOIN departments d ON e.department_id = d.id
--JOIN (
    --SELECT department_id, MIN(hire_date) AS min_hire_date
    --FROM employees
    --GROUP BY department_id
--) m ON e.department_id = m.department_id AND e.hire_date = m.min_hire_date;

--SELECT e.name, e.salary, d.name AS department
--FROM employees e
--JOIN departments d ON e.department_id = d.id
--JOIN (
    --SELECT department_id, AVG(salary) AS avg_salary
    --FROM employees
    --GROUP BY department_id
--) avg ON e.department_id = avg.department_id
--WHERE e.salary > avg.avg_salary;



