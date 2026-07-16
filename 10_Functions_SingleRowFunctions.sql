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

		-- ii) ROUND() 
			SELECT ROUND(15.678,2);

		-- iii) CEILING() 
			SELECT CEILING(10.3);

		-- iv) FLOOR() 
			SELECT FLOOR(10.3);

		-- v) SQRT() 
			SELECT SQRT(25);

		-- vi) POWER() 
			SELECT POWER(2,3);


	--	C) Date Functions :-
		-- i) GETDATE() 
			SELECT GETDATE();

		-- ii) YEAR() 
			SELECT YEAR(GETDATE());

		-- iii) MONTH() 
			SELECT MONTH(GETDATE());

		-- iv) DAY() 
			SELECT DAY(GETDATE());

	--	D) Logical Functions :-
		
		-- i) IIF() 
			SELECT IIF(30>35,'PASS','FAIL');

		-- ii) CHOOSE() 
			SELECT CHOOSE(2,'RED','BLUE','PURPLE','GREEN');
