-- Common Table Expression (CTE)
-- A CTE is like giving a temporary name to a query so it becomes easier to read, write, and reuse within one SQL statement.
USE SQLTUTORIAL;
GO

;WITH ComTab AS
(
    SELECT *
    FROM Employee
)
SELECT *
FROM ComTab;