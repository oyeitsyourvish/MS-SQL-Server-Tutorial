-- Common Table Expression (CTE)
USE SQLTUTORIAL;
GO

;WITH ComTab AS
(
    SELECT *
    FROM Employee
)
SELECT *
FROM ComTab;