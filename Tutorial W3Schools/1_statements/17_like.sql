-- Se utiliza en una cláusula where para buscar un patrón específico en una columna
-- Seleccione todos los clientes que comiencen con la letra 'a'
SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%';

-- El comodín _
-- Representa un solo carácter
-- Devuelve todos los clientes de una ciudad que comienza con 'L' seguida de un carácter comodín, luego 'nd' y luego dos caracteres comodín
SELECT *
FROM Customers
WHERE City LIKE 'L_nd__';

-- El comodín %
-- Representa cualquier número de caracteres, incluso cero caracteres
-- Devuelve todos los clientes de una ciudad que contiene la letra 'L'
SELECT *
FROM Customers
WHERE City LIKE '%L%';

-- Comienza con
-- Devolver todos los clientes que comiencen con 'La'
SELECT *
FROM Customers
WHERE CustomerName LIKE 'LA%';
-- Devuelve todos los clientes que comienzan con 'a' o comienzan con 'b'
SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%' OR CustomerName LIKE 'B%';

-- Termina con
-- Devuelve todos los clientes que terminan en 'A'
SELECT *
FROM Customers
WHERE CustomerName LIKE '%A';
-- Devuelve todos los clientes que comienzan con 'b' y terminan con 's'
SELECT *
FROM Customers
WHERE CustomerName LIKE 'B%S';

-- Contiene
-- Devolver todos los clientes que contengan la frase 'o'
SELECT *
FROM Customers
WHERE CustomerName LIKE '%O%';

-- Combinar comodines
-- Devuelve todos los clientes que comienzan con 'a' y tienen al menos 3 caracteres de longitud
SELECT *
FROM Customers
WHERE CustomerName LIKE 'A__%';
-- Devuelve todos los clientes que tienen 'r' en la segunda posición
SELECT *
FROM Customers
WHERE CustomerName LIKE '_r%';

-- Sin comodín
-- Devolver todos los clientes de España
SELECT *
FROM Customers
WHERE Country='Spain';