-- Copia datos de una tabla y los inserta en otra tabla, la declaración requiere que los tipos de datos en las tablas de origen y de destino coincidan
-- Copie Suppliers en Customers (las columnas que no están llenas de datos contendrán NULL)
INSERT INTO Customers
    (CustomerName, City, Country)
SELECT SupplierName, City, Country
FROM Suppliers;

-- Copie Suppliers en Customers (llene todas las columnas)
INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country
FROM Suppliers;

-- Copie sólo los proveedores alemanes en Customers
INSERT INTO Customers
    (CustomerName, City, Country)
SELECT SupplierName, City, Country
FROM Suppliers
WHERE Country='Germany';