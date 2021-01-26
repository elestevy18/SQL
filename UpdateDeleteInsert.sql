-- INT                     --Whole numbers
-- DECIMAL(M,N)            --Decimal numbers    m total digits n digits after the decimal
-- VARCHAR(1)              --string of text of max length n
-- BLOB                    --Binary Large objects, stores as large data  BINARY LARGE OBJECT
-- DATE                    --'YYY-mm-Dd
-- TIMESTAMP                --'YY-MM-DD HH;MM;SS USed to know when the data was uploaded

-- CREATING A LIST    // KEYWORDS SOULD BE UPPERCASED
CREATE TABLE student (
-- LIST OF CONSTRAINTS: NOT NULL, UNIQUE, DEFAULT
student_id INT AUTO_INCREMENT,  
name1 VARCHAR(20) NOT NULL,
major VARCHAR(20) DEFAULT 'UNDECIDED'
-- ANOTHER WAY TO DECLARE A PRIMARY KEY :  PRIMARY KEY(columnAttrName) 
);
-- * stands for all j,.
SELECT * FROM student;

-- returns duplicate after first run

INSERT INTO student VALUES(5, 'UNDECICHAEL', '3.0');
INSERT INTO student VALUES(2, 'Kate', 'sociology', 3.2);

--  PASS VALUE TO SPECIFIC ATTRIBUTES/COLUMNS  student(column1, column2)  Values(colum1value, cloumn2value)

INSERT INTO student(student_id, name1) Values(3, 'Claire');

-- DROP TABLE student;
ALTER TABLE student ADD gpa DECIMAL(3,2);

DESCRIBE student;


-- UPDATE ROWS
UPDATE student
SET major = 'Bio', name1 = 'Tom'
WHERE major = ' Biology'; 
-- WHERE major = 'BIO' OR major = 'Chemistry';
-- condition can be set to value of any column

-- DELETE ROWS

DELETE FROM student
WHERE student_id = '5' AND name1 = 'tom';

-- QUERIES
-- * can be replaced with column name  or tableName.columnName for readability 'COLUMN1,COLUMN2
-- WHERE OPERATORS: <,>, ,<=, >=, = , <> (NOT EQUAL), AND, OR    WHERE name in ('clare, 'Kate, Mike) AND student_id > 2;
SELECT * FROM student WHERE major ='biology'
ORDER BY name1 DESC
LIMIT 3;
-- OTHER ORDER BY: ASC, "1CRITERIA, 2CRITERIA"  if 1criteria is repeated then it is order by criteria2
