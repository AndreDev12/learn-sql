-- Un campo con un valor null es un campo sin valor

-- IS NULL
-- Enumera todos los clientes con un valor NULL en el campo 'Dirección'
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

-- IS NOT NULL
SELECT *
FROM Customers
WHERE Address IS NOT NULL;