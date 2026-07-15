
-- Department table for we use DeptId as a foreign key in Employee table
CREATE TABLE Department
(
    DeptId INT PRIMARY KEY,
    DeptName VARCHAR(50) UNIQUE NOT NULL
);

-- Employee table 
CREATE TABLE Employee
(
    EmpId INT PRIMARY KEY, -- it is combination of unique and not null constraint and it is only one in per table.

    EmpName VARCHAR(50) NOT NULL, -- it cant be accept null value

    Email VARCHAR(100) UNIQUE, -- it cant contain duplicate and repeated value

    Age INT CHECK(Age>=18), --Check the validiation emp age is greater that 18 or not

    Salary DECIMAL(10,2) CHECK(Salary>=10000), --Check the validiation
	
    City VARCHAR(50) DEFAULT 'Pune',  -- here by default every emp city is pune.

    DeptId INT, -- here we specify the our column
    FOREIGN KEY(DeptId) -- here we use it as Foreign key
    REFERENCES Department(DeptId) -- here we give the reference of Department table and its id DeptId used ass F.K for this table
);


-- Inserting data into Department Table
INSERT INTO Department VALUES
(1,'HR'),
(2,'IT');



-- Inserting data into Employee Table
INSERT INTO Employee (EmpId, EmpName, Email, Age, Salary, DeptId) -- city no need to add cause by default its pune
VALUES
(101, 'Rahul', 'rahul@gmail.com', 25, 35000, 1),
(102, 'Ajay', 'ajay@gmail.com', 24, 25000, 1),
(103, 'Kunal', 'kunal@gmail.com', 27, 45000, 2);


SELECT * FROM Department
SELECT * FROM Employee