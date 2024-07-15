CREATE DATABASE OFFICE;

USE OFFICE;

CREATE TABLE employees(
sno int,
student varchar(50),
age int,
salary BIGINT
);
CREATE TABLE employees1(
sno int,
student varchar(50),
age int,
salary BIGINT
);
DESCRIBE employees;
desc employees;

-- add column ,modify column and drop column (ddl alter)

ALTER TABLE employees ADD COLUMN address INT;
DESC employees;

ALTER TABLE employees MODIFY COLUMN address VARCHAR(50);
DESC employees;

ALTER TABLE employees DROP COLUMN address;
desc employees;

DROP table employees;

-- DML INSERT (add values)

INSERT INTO employees values(1,"tarun",21,5000000000);
INSERT INTO employees values(2,"tarun",21,50000);
INSERT INTO employees values(3,"tarun",21,50000);
INSERT INTO employees values(4,"tarun",21,50000);

INSERT INTO employees1 values(5,"tarun",21,5000000000);
INSERT INTO employees1 values(6,"tarun",21,50000);
INSERT INTO employees1 values(7,"tarun",21,50000);
INSERT INTO employees1 values(8,"tarun",21,50000);

SELECT*FROM employees;
SELECT*FROM employees1;

INSERT INTO employees SELECT*FROM employees1;
SELECT*FROM employees;

-- DML (update data)
UPDATE employees SET salary=70000 WHERE sno=4;
SELECT*FROM employees;

-- DML(delete data)
DELETE FROM employees WHERE sno=8;
SELECT*FROM employees;

