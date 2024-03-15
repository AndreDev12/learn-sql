-- Los comentarios se utilizan para explicar secciones de sentencias SQL o para impedir la ejecución de sentencias SQL

-- Utiliza un comentario de una sola línea como explicación
-- Select all:
SELECT *
FROM Customers;

-- Usa un comentario de una sola línea para omitir el final de una línea
SELECT *
FROM Customers
-- WHERE CIty='Berlin';

-- Usa un comentario de una sola línea para omitir una instrucción
-- SELECT * FROM Customers;
SELECT *
FROM Products;

-- Comentarios de varias líneas
-- Usa un comentario de varias líneas como explicación
/*Select all the comlumns
of all the records
in the Customers table:*/
SELECT *
FROM Customers;

-- Utiliza un comentario de varias líneas para omitir muchas instrucciones
/*SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Categories;*/
SELECT *
FROM Suppliers;

-- Usa un comentario para omitir parte de una línea
SELECT CustomerName, /*City,*/ Country
FROM Customers;

-- Usa un comentario para omitir parte de una instrucción
SELECT *
FROM Customers
WHERE (CustomerName LIKE 'L%'
    OR CustomerName LIKE 'R%' /*OR CustomerName LIKE 'S%' OR CustomerName LIKE 'T%'*/ OR CustomerName LIKE 'W%') AND Country='USA'
ORDER BY CustomerName;