-- Agrupa filas que tienen los mismos valores en filas de resumen
-- Enumera la cantidad de clientes en cada país
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

-- Enumera la cantidad de clientes en cada país, ordenados de mayor a menor
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

-- GROUP BY con ejemplo JOIN
-- Enumera la cantidad de pedidos enviados por cada remitente
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
    LEFT JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID
GROUP BY ShipperName;