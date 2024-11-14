-- 1. Creating titles table (no dependencies)
CREATE TABLE titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);
-- Import data into titles table

-- 2. Creating departments table (no dependencies)
CREATE TABLE departments (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);
-- Import data into departments table

-- 3. Creating employees table (depends on titles table)
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id) ON DELETE SET NULL
);
-- Import data into employees table

-- 4. Creating dept_manager table (depends on departments and employees tables)
CREATE TABLE dept_manager (
    dept_no VARCHAR(4),
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE
);
-- Import data into dept_manager table

-- 5. Creating dept_emp table (depends on departments and employees tables)
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(4),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE
);
-- Import data into dept_emp table

-- 6. Creating salaries table (depends on employees table)
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE
);
-- Import data into salaries table