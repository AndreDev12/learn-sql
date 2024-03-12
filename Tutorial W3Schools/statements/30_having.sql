-- La cláusula HAVING se agregó a SQL porque la palabra clave WHERE no se puede usar con funciones agregadas
-- Enumera la cantidad de clientes en cada país, incluya solo países con más de 5 clientes
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

-- Enumera la cantidad de clientes en cada país, ordenados de mayor a menor (solo incluya países con más de 5 clientes)
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

-- Enumera los empleados que han registrado más de 10 pedidos
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders INNER JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

-- Indica si los empleados "Davolio" y "Fuller" han registrado más de 25 pedidos
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders INNER JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID
WHERE LastName='Davolio' OR LastName='Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;