
-- Variable Table :->
-- A Table Variable is a temporary table stored in a variable.
-- It behaves like a table, but instead of creating it with CREATE TABLE, you declare it using the DECLARE keyword.
-- Think of it as a variable that can store multiple rows and columns.

DECLARE @VarTable TABLE
(
    ID UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    NAME VARCHAR(20),
    EMAIL VARCHAR(20),
    AGE INT,
    SALARY DECIMAL(10,2)
);

use SQLTUTORIAL
INSERT INTO @VarTable (NAME, EMAIL, AGE, SALARY)
SELECT NAME, EMAIL, AGE, SALARY
FROM Employee;

SELECT * FROM @VarTable;
SELECT * FROM Employee