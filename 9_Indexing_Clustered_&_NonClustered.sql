
-- INDEXING :- An Index is a special data structure that helps SQL Server find data quickly. Without an index, SQL Server checks every row. 
--			   With an index, SQL Server directly goes to the required data.
--	Types :- Clustered Index and Non Clustered Index.

USE SQLTUTORIAL;

-- In this we do not provide pk.
CREATE TABLE MATERIALS
(
ID INT,
NAME VARCHAR(20),
TYPE VARCHAR (20)
);


INSERT INTO MATERIALS (ID, NAME, TYPE)
VALUES
(4,'CHAIR','FURNITURE'),
(3,'SAMOSA','BAKERY'),
(1,'TYRES','VEHICLE'),
(2,'SUGAR','GROCERIES');


-- CLUSTER INDEX :- A Clustered Index stores the actual table rows in sorted order. Think of it as rearranging the table itself using ID.
--					- Only ONE clustered index per table.
--					- Because data can be physically sorted only once.
CREATE CLUSTERED INDEX XI_CLUSTERMATERIAL ON MATERIALS (ID);

SELECT * FROM MATERIALS WHERE ID = 3;

--NON CLUSTERED INDEX :- A Non Clustered Index stores the pointers.using diffrent column like phone, email etc.
--					-  We can create multiple non clustered index.
CREATE NONCLUSTERED INDEX XI_MATERIALTYPE ON MATERIALS(TYPE)
SELECT * FROM MATERIALS WHERE TYPE = 'GROCERIES';


-- COMPOSITE INDEX :-
