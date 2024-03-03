-- Ordena en orden ascendente (por defecto) o descendente

-- Ordenar los productos por precio
SELECT *
FROM Products
ORDER BY Price;

-- Ordenar los productos de mayor a menor precio
SELECT *
FROM Products
ORDER BY Price DESC;

-- Ordenar los productos alfabéticamente por ProductName
SELECT *
FROM Products
ORDER BY ProductName;

-- Ordenar los productos por ProductName en orden inverso
SELECT *
FROM Products
ORDER BY ProductName DESC;

-- Ordenar por varias columnas
SELECT *
FROM Customers
ORDER BY Country, CustomerName;

-- Usando ASC y DESC
SELECT *
FROM Customers
ORDER BY Country ASC, CustomerName DESC;