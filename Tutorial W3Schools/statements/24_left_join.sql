-- Devuelve todos los registros de la tabla de la izquierda (tabla 1) y los registros coincidentes de la tabla de la derecha (tabla 2)
-- Selecciona todos los clientes y cualquier pedido que puedan tener
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers LEFT JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;