-- JOINS / INSERTS

-- INSERT INTO branch VALUES(4, 'BUFFALO', NULL, nULL);

SELECT employee.emp_id, employee.first_name, branch, branch.branch_name
FROM employee
 JOIN branch ON employee.emp_id = branch.mgr_id;
 
 -- FOUR BASIC TYPES OOF JOIN: INNER JOIN SHOE ABOVE, 
 -- LEFT JOIN: INCLUDES ALL ROWS FROM THE 'LEFT' (FROM TABLE) TABLE
 -- RIGHT JOINJ\ TABLE JOINS ALL VALUES FROM 'JOIN TABLE' 
 
 -- NESTED QUERIES 
 
 -- FIND NAMES OF ALL EMPLOYEES THAT HAVE SOLD
 -- MORE THAN 30K TO A SINGLE CLIENT
 SELECT employee.first_name, employee.last_name
 FROM employee 
 WHERE employee.emp_id IN (
	  SELECT works_with.emp_id
	  FROM works_with
	  WHERE works_with.total_sales > 30000
 );
 

 