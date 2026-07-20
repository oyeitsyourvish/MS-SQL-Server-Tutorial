
-- Report Analytic Using Multirow Functions

USE SQLTUTORIAL;
SELECT * FROM  emp;

SELECT city AS EMPLOYEEID, COUNT(1), SUM(salary) AS TOTALSALARY, MIN(salary) AS MINIMUMSALARY, MAX(salary) AS MAXSALARY, AVG (salary) AVGSALARY
FROM emp
GROUP BY city


