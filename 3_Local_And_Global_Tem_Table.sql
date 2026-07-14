-- 1. Local Temporary Table (Use single # for Local)
--    A Local Temporary Table is visible only inside the session (connection) that created it. Once the session ends, SQL Server automatically deletes it.
--    We cant acces it from another query window.
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

-- 2. Global Temporary Table (Use single ## for global)
-- A Global Temporary Table is visible to all sessions.Every user can access it.
--Open another query window. and you can access it Because Global Temp Table is shared across sessions.

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