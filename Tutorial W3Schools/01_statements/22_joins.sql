-- Se utiliza para combinar filas de dos o más tablas, en función de una columna relacionada entre ellas
-- Selecciona registros que tienen valores coincidentes en ambas tablas
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;