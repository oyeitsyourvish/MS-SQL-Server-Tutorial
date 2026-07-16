USE SQLTUTORIAL
-- FUNCTIONS :
-- MULTI ROW (AGGREGATE) FUNCTIONS :-
								-- It execute group by group  we can use it with group by clause and having clause but we cant use it with where clause caus it execute row by row

-- Types :

		-- i) MIN() :- Smallest Value
			SELECT MIN(salary) FROM emp

		-- ii) MAX() :- Largest Value
			SELECT MAX(salary) FROM emp

		-- iii) SUM() :- Total Of Values
			SELECT SUM(salary) FROM emp

		-- iv) AVG() :- Avarage
			SELECT AVG(salary) FROM emp

		-- v) COUNT() :- Count Rows
			SELECT COUNT(*) FROM emp

		-- With GROUP BY Clause 
			-- It gives the output of every department max salary of each departmetn cause we we group by clause.
			SELECT department, MAX(salary) FROM emp GROUP BY department;

		-- With HAVING Clause
			SELECT department, MAX(salary) FROM emp GROUP BY department HAVING MAX(salary)>=50000;


USE SQLTUTORIAL
-- Write a Query to find 3rd max of salary
	SELECT MAX(salary) AS ThirdHighestSalary
	FROM emp
	WHERE salary <
				  (
					SELECT MAX(salary)
					FROM emp
					WHERE salary <
								 (
								   SELECT MAX(salary)
								   FROM emp
								 ));