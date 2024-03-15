-- Selecciona registros que tienen valores coincidentes en ambas tablas
-- Unir la tabla Products con la tabla Categories, utilizando el campo CategoryID de ambas tablas
SELECT ProductID, ProductName, CategoryName
FROM Products INNER JOIN Categories ON Products.CategoryID=Categories.CategoryID;

-- Nombrar las columnas
-- Especifique los nombres de las tablas
SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
FROM Products INNER JOIN Categories ON Products.CategoryID=Categories.CategoryID;

-- JOIN o INNER JOIN
SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
FROM Products JOIN Categories ON Products.CategoryID=Categories.CategoryID;

-- JOIN Three Tables
-- Selecciona todos los pedidos con información del cliente y del remitente
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID)
    INNER JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID);