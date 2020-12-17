--subquery template
--you can go 32 levels with select statement
-- outer query = select * from table where expression operator  --express =  column name, operator == operator
--inner query (select select_list from  table)

--*** subquery is executed before outer query
--** inner queries are executed first
select * from orders
where employeeID >  any (select EmployeeId from orders where CustomerID = 'Victe')