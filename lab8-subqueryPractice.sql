--give me all the employees working in the eastern territories
select * from Employees where EmployeeId in
	(Select EmployeeId from EmployeeTerritories where TerritoryId in 
		(select TerritoryId from Territories where RegionId = 
			( select RegionID from Region where RegionDescription ='Eastern')))
--select all those customers who bought beverages and the name of each beverage alongside
	select CompanyName  from customers where CustomerId in
		(select CustomerId from Orders where OrderId in
			(select OrderID from [Order Details] where ProductID in
				(select ProductId from products where CategoryID = 
					(select CategoryID from categories where CategoryName = 'Beverages'))))
					
	
