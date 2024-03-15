-- Copia datos de una tabla en una tabla nueva
-- Crea una copia de seguridad de Customers
SELECT *
INTO CustomersBackup2017
FROM Customers;

-- Utiliza la cláusula IN para copiar la tabla en una nueva tabla en otra base de datos
-- SELECT *
-- INTO CustomerBackup2017
-- IN 'Backup.mdb' FROM Customers;

-- Copia solo unas pocas columnas en una nueva tabla
SELECT CustomerName, ContactName
INTO CustomersBackup2017
FROM Customers;

-- Copia sólo los clientes alemanes en una nueva tabla
SELECT *
INTO CustomersGermany
FROM Customers
WHERE Country='Germany';

-- Copia datos de más de una tabla en una tabla nueva
SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2017
FROM Customers LEFT JOIN Orders ON Customers.CustomerID=Orders.CustomerID;