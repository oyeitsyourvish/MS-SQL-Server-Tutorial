
-- to see All databases in Your Schemaa
SELECT name
FROM sys.databases;

--Creating Database
CREATE DATABASE SQLTUTORIAL;

--Using that database
USE SQLTUTORIAL;

--Creating Table inside SQLTUTORIAL db (Its Come from DDL)
CREATE TABLE Employee
(
    Id INT PRIMARY KEY IDENTITY(100,1),  --EID is Variable, INT is datatype, PrimaryKey is Constrint and Identity(100,1) mean id start with 100 and update by 1.
    Name NVARCHAR(100),
    Email NVARCHAR(100),
    Age INT,
    Salary DECIMAL(10,2),
    Gender CHAR(10),
    IsActive BIT,
    DateOfBirth DATE,
    LoginTime TIME,
    CreatedDate DATETIME,
    Job NVARCHAR(MAX)
);

-- Inserting Data inside the Employee Table which is present in SQLTUTORIAL db (Its come from DML)
INSERT INTO Employee (Name, Email, Age, Salary, Gender, IsActive, DateOfBirth, LoginTime, CreatedDate, Job)
Values
('vishal','vishalll@gmail.com',26,34000,'M',1,'1999-11-03','09:30:00',GetDate(),'dotnet developer'),
('rohit','rohit@gmail.com',25,35000,'M',1,'1999-08-02','09:30:00',GetDate(),'java developer'),
('radha','radha@gmail.com',29,45000,'F',1,'1999-05-11','09:30:00',GetDate(),'angular developer'),
('teju','teju@gmail.com',25,25000,'F',1,'2000-06-29','09:30:00',GetDate(),'manual testing'),
('gayu','gayu@gmail.com',26,30000,'F',1,'1999-04-20','09:30:00',GetDate(),'data analyst'),
('vish','vish@gmail.com',26,15000,'F',1,'1999-09-25','09:30:00',GetDate(),'manual testing'),
('sanj','sanj@gmail.com',26,32000,'F',1,'1999-09-19','09:30:00',GetDate(),'human resource'),
('rahul','rahul@gmail.com',27,38000,'M',1,'1998-07-24','09:30:00',GetDate(),'automation testion')
PRINT('DATA INSERTED SUCCESSFULLY')

--Fetch the Data.
USE SQLTUTORIAL
SELECT * FROM Employee

--Updating Column inside table in the basis of ID.(Its Come from DML)
UPDATE Employee SET DateOfBirth = '1999-10-03' WHERE Id = 108;
PRINT ('Updated')

-- Delete Column inside table in the basis of ID (Its Come From DML)
DELETE from Employee where Id = 118;
PRINT ('Deleted Successfully')

-- Delete All The Data From the Table (Its Come From DML)
DELETE from Employee ;
PRINT('All Data Deleted')

-- Truncate Table tablename will delete all the row and reset the id from start again. (Its Come From DDL)
TRUNCATE TABLE Employee ; 
PRINT ('Truncated Successfully')

-- Drop table tablename will drop the structure or table as well as data completely. (Its Come from DDL)
DROP TABLE Xyz;


-- Modify an existing object or add coloumn (Its come from DDL)
ALTER TABLE Employee
ADD City VARCHAR(100);


-- DDL :- Create, Truncate, Drop, Alter
-- DML :- Instert, Update, Delete, 