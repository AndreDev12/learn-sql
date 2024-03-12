-- Devuelve todos los registros cuando hay una coincidencia en los registros de la tabla izquierda (tabla 1) o derecha (tabla 2)
-- Selecciona todos los clientes y todos los pedidos
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;