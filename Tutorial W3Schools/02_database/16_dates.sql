-- La parte más difícil cuando se trabaja con fechas es asegurarse de que el formato de la fecha que está intentando insertar coincida con el formato de la columna de fecha en la base de datos.

-- Tipos de datos de fecha SQL
-- MySQL
-- DATE- formato AAAA-MM-DD
-- DATETIME- formato AAAA-MM-DD HH:MI:SS
-- TIMESTAMP- formato AAAA-MM-DD HH:MI:SS
-- YEAR- formato AAAA o AA

-- SQL Server
-- DATE- formato AAAA-MM-DD
-- DATETIME- fomrato AAAA-MM-DD HH:MI:SS
-- SMALLDATETIME- formato AAAA-MM-DD HH:MI:SS
-- TIMESTAMP- formato un múmero único

-- Selecciona los registros con un OrderDate de 2008-11-11 en la tabla Orders
SELECT *
FROM Orders
WHERE OrderDate='2008-11-11';