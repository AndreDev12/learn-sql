-- Se utiliza para combinar el conjunto de resultados de dos o más declaraciones SELECT
-- Devuelve las ciudades (solo valores distintos) de las tablas "Customers" y "Suppliers" 
    SELECT City
    FROM Customers
UNION
    SELECT City
    FROM Suppliers
ORDER BY City;

-- UNION ALL
    SELECT City
    FROM Customers
UNION ALL
    SELECT City
    FROM Suppliers
ORDER BY City;

-- UNION con WHERE
-- Devuelve las ciudades alemanas (solo valores distintos) de las tablas "Customers" y "Suppliers"
    SELECT City, Country
    FROM Customers
    WHERE Country='Germany'
UNION
    SELECT City, Country
    FROM Suppliers
    WHERE Country='Germany'
ORDER BY City;

-- UNION ALL con WHERE
-- Devuelve las ciudades alemanas (también valores duplicados) de las tablas "Customers" y "Suppliers"
    SELECT City, Country
    FROM Customers
    WHERE Country='Germany'
UNION ALL
    SELECT City, Country
    FROM Suppliers
    WHERE Country='Germany'
ORDER BY City;

-- Enumera todos los clientes y proveedores
    SELECT 'Customer' AS Type, ContactName, City, Country
    FROM Customers
UNION
    SELECT 'Supplier', ContactName, City, Country
    FROM Suppliers;