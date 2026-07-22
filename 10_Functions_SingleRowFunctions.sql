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



	--	B) Numeric Functions :-
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

-------------------------------------------------------------------------------------------------------------------------------

-- Advanced topic 

-- 1) DATEADD :- Used for add extra
	SELECT DATEADD(DAY,4,GETDATE()) AS AddedDate --Adding 4 day extra from now 
	SELECT DATEADD(MONTH,4,GETDATE()) AS AddedMonth --Adding 4 month extra from now 
	SELECT DATEADD(YEAR,4,GETDATE()) AS AddedYear --Adding 4 year extra from now 

-- 2) DATEPART :- Its ditto same like c) Date Function
	SELECT DATEPART(DAY,GETDATE()) AS CurrentDate
	SELECT DATEPART(MONTH,GETDATE()) AS CurrentMonth
	SELECT DATEPART(YEAR,GETDATE()) AS CurrentYear
	-- OR WE CAN USE IT LIKE THIS 
	SELECT GETDATE()
	SELECT DAY(GETDATE())
	SELECT MONTH(GETDATE())
	SELECT YEAR(GETDATE())

-- 3) DATEDIFF :- It show the differece from the current date
	SELECT DATEDIFF(DAY,'2026-4-21',GETDATE()) --it will be count the days from current date (CURRENTDATE - PROVIDED DATE ) = DAYS)
	SELECT DATEDIFF(MONTH,'2026-1-21',GETDATE()) --it will be count the MONTH from current date (CURRENTDATE - PROVIDED DATE ) = MONTH)
	SELECT DATEDIFF(YEAR,'1947-8-15',GETDATE()) --it will be count the YEAR from current date (CURRENTDATE - PROVIDED DATE ) = YEAR)

-- 4) DATENAME :- It will show the name of that day
	SELECT DATENAME(MONTH, GETDATE()) -- it show month name
	SELECT DATENAME(WEEKDAY,GETDATE()) -- it show current day name 

-- 5) EOMONTH :- it show the last date of the month
	SELECT EOMONTH(GETDATE()) -- it shows the month last date
	SELECT EOMONTH('2025-04-01') -- it shows the specified month last date

-------------------------------------------------------------------------------------------------------------------------------------------------

-- Advanced Topics :-

	-- 1) ISDATE :- it will check the date and give the result in bolean (1 or 0)
		  SELECT ISDATE('2025-08-23') -- 1 Means the date is write
		  SELECT ISDATE('NOT A DATE') -- 0 means date is wrong

	-- 2) TRYCAST :- it will check The date and give the result if the date is wrong it gives null elese show thate date
		  SELECT TRY_CAST('2025-08-23' AS DATETIME)
		  SELECT TRY_CAST('NOT A DATE' AS DATETIME)

	-- 3) TRYCAST :- it will check The date and give the result if the date is wrong it gives null else show thate date
					-- And also same as TRY_CAST.
		  SELECT TRY_CONVERT(DATETIME, '2025-08-23')
		  SELECT TRY_CONVERT(DATETIME, 'NOT A DATE')

