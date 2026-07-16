USE SQLTUTORIAL
-- FUNCTIONS :- 1. Single Row Functions  2.Multirow Functions

-- 1) SINGLE ROW FUNCTIONS :- it works on one row at a time

     --	A) String Functions :-
		-- i) UPPER() 
			SELECT NAME, UPPER(NAME) FROM emp;

		-- ii) LOWER() 
			SELECT NAME, LOWER(NAME) FROM emp;

		-- iii) LEN() 
			SELECT NAME, LEN(NAME) FROM emp;

		-- iv) TRIM() 
			SELECT NAME, TRIM(NAME) FROM emp;

		-- v) SUBSTRING() 
			SELECT NAME, SUBSTRING(NAME,2,4) FROM emp;

		-- vi) REPLACE() 
			SELECT REPLACE ('RAJA BABU', 'BABU','TELI');

		-- vii) CONCAT() 
			SELECT CONCAT ('RAJU',' ','RAMA',' ', 'SHRIVASTAV');



	--	B) String Functions :-
		-- i) ABS ()
			SELECT ABS(-20);

		-- i) ROUND() 
			SELECT ROUND(15.678,2);

		-- i) CEILING() 
			SELECT CEILING(10.3);

		-- i) FLOOR() 
			SELECT FLOOR(10.3);

		-- i) SQRT() 
			SELECT SQRT(25);

		-- i) POWER() 
			SELECT POWER(2,3);
