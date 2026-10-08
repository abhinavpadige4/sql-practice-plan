-- =============================================================================
-- setup.sql
-- Creates a small demo schema used by every query in this repository.
-- Compatible with PostgreSQL, MySQL 8+, SQLite 3.35+, and most ANSI‑SQL DBs.
-- =============================================================================

-- Drop existing tables (in case you re‑run this script)
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- -----------------------------------------------------------------------------
-- departments: the org chart
-- -----------------------------------------------------------------------------
CREATE TABLE departments (
    dept_id   INTEGER PRIMARY KEY,
    dept_name VARCHAR(60) NOT NULL
);

INSERT INTO departments (dept_id, dept_name) VALUES
    (1, 'Engineering'),
    (2, 'Sales'),
    (3, 'Marketing'),
    (4, 'Finance'),
    (5, 'HR');

-- -----------------------------------------------------------------------------
-- employees: people working in the company
-- -----------------------------------------------------------------------------
CREATE TABLE employees (
    emp_id    INTEGER PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    last_name  VARCHAR(40) NOT NULL,
    dept_id    INTEGER REFERENCES departments(dept_id),
    manager_id INTEGER REFERENCES employees(emp_id),
    salary     NUMERIC(10,2) NOT NULL,
    hire_date  DATE NOT NULL
);

INSERT INTO employees (emp_id, first_name, last_name, dept_id, manager_id, salary, hire_date) VALUES
    (1, 'Alice',   'Chen',     1, NULL, 120000.00, '2018-03-15'),
    (2, 'Bob',     'Patel',    1, 1,    95000.00,  '2019-07-01'),
    (3, 'Carol',   'Nguyen',   1, 1,    98000.00,  '2019-11-20'),
    (4, 'David',   'Kim',      2, NULL, 110000.00, '2017-05-10'),
    (5, 'Eve',     'Smith',    2, 4,    72000.00,  '2020-02-14'),
    (6, 'Frank',   'Lopez',    2, 4,    75000.00,  '2020-09-05'),
    (7, 'Grace',   'Brown',    3, NULL, 105000.00, '2016-08-22'),
    (8, 'Henry',   'Davis',    3, 7,    68000.00,  '2021-01-11'),
    (9, 'Ivy',     'Wilson',   4, NULL, 115000.00, '2015-04-30'),
    (10,'Jack',    'Taylor',   4, 9,    80000.00,  '2021-06-18'),
    (11,'Karen',   'Anderson', 5, NULL, 90000.00,  '2019-02-02'),
    (12,'Leo',     'Thomas',   1, 2,    88000.00,  '2022-03-09');

-- -----------------------------------------------------------------------------
-- sales: monthly revenue per employee
-- -----------------------------------------------------------------------------
CREATE TABLE sales (
    sale_id   INTEGER PRIMARY KEY,
    emp_id    INTEGER REFERENCES employees(emp_id),
    sale_date DATE NOT NULL,
    amount    NUMERIC(10,2) NOT NULL
);

INSERT INTO sales (sale_id, emp_id, sale_date, amount) VALUES
    (1,  4, '2024-01-05', 1200.00),
    (2,  4, '2024-01-18',  950.00),
    (3,  5, '2024-01-12',  780.00),
    (4,  5, '2024-02-03', 1100.00),
    (5,  6, '2024-02-14',  620.00),
    (6,  6, '2024-03-01',  890.00),
    (7,  4, '2024-03-22', 1500.00),
    (8,  5, '2024-04-10',  990.00),
    (9,  6, '2024-04-25',  740.00),
    (10, 4, '2024-05-15', 1320.00),
    (11, 5, '2024-06-02', 1050.00),
    (12, 6, '2024-06-20',  810.00);

-- Done. You can now run any file in the queries/ folder.
