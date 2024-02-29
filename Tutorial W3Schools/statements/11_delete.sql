-- Se utiliza para eliminar registros existentes en una tabla

-- Eliminar el cliente "Alfreds Futterkiste" de la tabla Customers
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- Eliminar todos los registros, sin eliminar la tabla
DELETE FROM Customers;

-- Eliminar una tabla
-- Eliminar la tabla clientes
DROP TABLE Customers;