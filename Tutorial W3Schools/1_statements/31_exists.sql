-- Se utiliza para probar la existencia de cualquier registro en una subconsulta
-- Devuelve verdadero y enumera los proveedores con un precio de producto inferior a 20
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName
FROM Products
WHERE Products.SupplierID=Suppliers.SupplierID AND Price < 20);

-- Devuelve verdadero y enumera los proveedores con un precio de producto igual a 22
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName
FROM Products
WHERE Products.SupplierID=Suppliers.SupplierID AND Price=22);