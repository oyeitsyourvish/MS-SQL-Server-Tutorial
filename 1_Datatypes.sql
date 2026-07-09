-- select name from sys.types;  --To check datatypes 

--Here We can declare the variable in DB aproch this not store every time you need to run.
declare @num int =0 ;
declare @name nvarchar(20) = 'vishal';
declare @dob date = '2000-06-29';
declare @login datetime = getdate();
declare @class varchar (100)= 'MScCS'
declare @weight float = 81.44
declare @Expenses decimal (18,2) = 0.0;

--When we want set the value or modify we use 
set @num =45;

select @name as Names , @num as Iconic, @login as LoginTime
print 'Execution Successfull'  -- it is print statment when we run we can seee ti in messages mostly use when we debugg.
