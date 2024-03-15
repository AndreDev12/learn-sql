-- Devuelve todos los registros de la tabla derecha (tabla 2) y los registros coincidentes de la tabla izquierda (tabla 1)
-- Devuelve todos los empleados y cualquier pedido que hayan realizado
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders RIGHT JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID
ORDER BY Orders.OrderID;