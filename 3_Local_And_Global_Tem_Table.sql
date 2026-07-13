-- Local Temporary Table (Use single # for Local)

CREATE TABLE #LocTemTable (
ID INT PRIMARY KEY IDENTITY(1,1),
NAME VARCHAR(30),
SCHOOL VARCHAR(30),
AGE INT,
DOB DATE,
CITY VARCHAR(30)
)

INSERT INTO #LocTemTable(NAME, SCHOOL, AGE, DOB, CITY) VALUES('ROHAN','NUTAN VIDYALAYA', 15,'2010-05-30','PUNE')

-- PRINT LOCAL TABLE
SELECT * FROM #LocTemTable;


DROP TABLE #LocTemTable;

-------------------------------------------------------------------------------------------------------------------

-- Global Temporary Table (Use single ## for Local)

CREATE TABLE ##GlobalTemTable (
ID INT PRIMARY KEY IDENTITY(1,1),
NAME VARCHAR(30),
SCHOOL VARCHAR(30),
AGE INT,
DOB DATE,
CITY VARCHAR(30)
)

INSERT INTO ##GlobalTemTable(NAME, SCHOOL, AGE, DOB, CITY) VALUES('ROHAN','NUTAN VIDYALAYA', 15,'2010-05-30','PUNE')

SELECT * FROM ##GlobalTemTable;

DELETE FROM ##GlobalTemTable WHERE ID =4