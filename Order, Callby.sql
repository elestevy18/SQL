select * from employee;

SELECT * FROM client;

SELECT * FROM employee ORDER BY salary;


-- order by sex then name
SELECT * FROM employee ORDER BY sex,first_name,last_name;

-- first 5 employees in the table

SELECT * FROM employee LIMIT 5;

-- NICKNAME COLUMNS

SELECT first_name AS forename, last_name AS surname FROM employee;

-- FIND OUT ALL THE DIFFERENT GENDERS
SELECT DISTINCT sex FROM employee;