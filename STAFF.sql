CREATE DATABASE STAFF;
USE STAFF;

CREATE TABLE employees (
  employee_id INT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email_id VARCHAR(100),
  contact_no VARCHAR(15),
  department_name VARCHAR(50),
  join_date DATE,
  qualification_name VARCHAR(100),
  designation_name VARCHAR(50),
  monthly_salary DECIMAL(10, 2)
);

ALTER TABLE employees
ADD experience_years INT,
ADD expertise_area VARCHAR(100),
ADD office_number VARCHAR(10),
ADD is_permanent BOOLEAN;

SELECT * FROM employees;

ALTER TABLE employees RENAME COLUMN monthly_salary TO salary;

ALTER TABLE employees RENAME COLUMN join_date TO joining_date;

ALTER TABLE employees RENAME COLUMN qualification_name TO degree_name;

ALTER TABLE employees RENAME COLUMN department_name TO dept_name;

ALTER TABLE employees MODIFY degree_name VARCHAR(150);

ALTER TABLE employees MODIFY experience_years INT DEFAULT 0;

ALTER TABLE employees MODIFY salary DECIMAL(12, 2);

ALTER TABLE employees MODIFY is_permanent BOOLEAN DEFAULT FALSE;
