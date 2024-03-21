/* En SQL, una vista es una tabla virtual basada en el conjunto de resultados de una declaración SQL.
Una vista contiene filas y columnas, como una tabla real. Los campos de una vista son campos de una o más tablas reales de la abse de datos. */

-- Crea una vista que muestra todos los clientes de Brasil
-- CREATE VIEW [Brazil Customers]
-- AS
--     SELECT CustomerName, ContactName
--     FROM Customers
--     WHERE Country='Brazil';

-- Podemos consultar la vista anterior de la siguiente manera
-- SELECT *
-- FROM [Brazil Customers]; 

-- Crea una vista que selecciona cada producto en la tabla Products con un precio superior al precio promedio
-- CREATE VIEW [Products Above Average Price]
-- AS
--     SELECT ProductName, Price
--     FROM Products
--     WHERE Price > (SELECT AVG(Price)
--     FROM Products);

-- Podemos consultar la vista anterior de la siguiente manera
-- SELECT * FROM [Products Above Average Price];

-- Actualizando una vista
-- Agrega la columna City a la vista [Brazil Customers]
-- CREATE OR REPLACE VIEW [Brazil Customers] AS
-- SELECT CustomerName, ContactName, City
-- FROM Customers
-- WHERE Country='Brazil';

-- Eliminando una vista
-- Elimina la vista [Brazil Customers]
DROP VIEW [Brazil Customers];