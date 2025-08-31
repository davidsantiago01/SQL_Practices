SELECT LastName, FirstName,
(SELECT SUM(od.Quantity) from [orders] o, [OrderDetails] od
where o.EmployeeID = e.EmployeeID and od.OrderID = o.OrderID) as unidades_totales
from [Employees] e
where unidades_totales > (SELECT avg(unidades_totales) from (
select (SELECT SUM(od.Quantity) from [orders] o, [OrderDetails] od
where o.EmployeeID = e2.EmployeeID and od.OrderID = o.OrderID)as unidades_totales 
from [Employees] e2
group by e2.EmployeeID	

))
