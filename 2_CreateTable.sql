
--Creating Database
CREATE DATABASE SQLTUTORIAL;

--Using that database
USE SQLTUTORIAL;

--Creating Table inside SQLTUTORIAL db
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

INSERT INTO Employee (Name, Email, Age, Salary, Gender, IsActive, DateOfBirth, LoginTime, CreatedDate, Job)
Values('rohit','rohit@gmail.com',25,35000,'M',1,'1999-08-02','09:30:00',GetDate(),'java developer')
PRINT('DATA INSERTED SUCCESSFULLY')


USE SQLTUTORIAL
SELECT * FROM Employee