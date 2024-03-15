-- Funciones SQL IFNULL(), ISNULL(), COALESCE() y NVL()
-- Supongamos que la columna UnitsOnOrder es opcional y puede contener valores NULL
SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM Products;
-- Si alguno de los valores de UnitsOnOrder es NULL, el resultado será NULL

-- Soluciones
-- MySQL
-- La función MySQL IFNULL() te permite devolver un valor alternativo si una expresión es NULL
SELECT ProducName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
FROM Products;
-- O podemos usar la función COALESCE()
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;

-- SQL Server
-- La función ISNULL() de SQL Server le permite devolver un valor alternativo cuando una expresión es NULL
SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 0))
FROM Products;
-- O podemos usar la función COALESCE()
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;

-- MS Access
-- La función IsNull() de MS Access devuelve VERDADERO (-1) si la expresión es un valor nulo; en caso contrario, FALSO (0)
SELECT ProductName, UnitPrice * (UnitsInStock + IIF(IsNull(UnitsOnOrder), 0, UnitsOnOrder))
FROM Products;

-- Oracle
-- La función NVL() de Oracle logra el mismo resultado
SELECT ProductName, UnitPrice * (UnitsInStock + NVL(UnitsOnOrder, 0))
FROM Products;
-- O podemos usar la función COALESCE()
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;