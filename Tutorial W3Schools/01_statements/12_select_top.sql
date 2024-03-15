-- Se utiliza para especificar el número de registros a devolver
-- Seleccione solo los primeros 3 registros de la tabla Customers
SELECT TOP 3
    *
FROM Customers;

-- LIMIT
-- La siguiente declaración SQL muestra el ejemplo equivalente para MySQL
-- SELECT *
-- FROM Customers LIMIT
-- 3;

-- FETCH FIRST
-- La siguiente declaración SQL muestra el ejemplo equivalente para Oracle
-- SELECT *
-- FROM Customers
-- FETCH FIRST 3 ROWS ONLY;

-- Porcentaje superior
-- La siguiente declaración SQL selecciona el primer 50% de los registros de la tabla "Customers" (para SQL Server/MS Access)
SELECT TOP 50 PERCENT
    *
FROM Customers;

-- La siguiente declaración SQL muestra el ejemplo equivalente para Oracle
-- SELECT *
-- FROM Customers
-- FETCH FIRST 50 PERCENT ROWS ONLY;

-- Añadir una cláusula where
-- Selecciona los primeros tres registros de la tabla "Customers", donde el país es "Alemania" (para SQL Server/MS Access)
SELECT TOP 3
    *
FROM Customers
WHERE Country='Germany';

-- Declaración equivalente para MySQL
-- SELECT *
-- FROM Customers
-- WHERE Country='Germany'
-- LIMIT 3;

-- Declaración equivalente para Oracle
-- SELECT *
-- FROM Customers
-- WHERE Country='Germany'
-- FETCH FIRST 3 ROWS ONLY;

-- Agregar la palabra clave order by
-- Ordenar el resultado alfabéticamente por CustomerName y devuelve los primeros 3 registros (Para SQL Server y MS Access)
SELECT TOP 3
    *
FROM Customers
ORDER BY CustomerName DESC;

-- Declaración equivalente para MySQL
-- SELECT *
-- FROM Customers
-- ORDER BY CustomerName DESC
-- LIMIT 3;

-- Declaración equivalente para Oracle
-- SELECT *
-- FROM Customers
-- ORDER BY CustomerName DESC
-- FETCH FIRST 3 ROWS ONLY;