-- Es utilizado para sustituir uno o más caracteres en una cadena
-- Devolver todos los clientes que comienzan con la letra 'A'
SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%';

-- Usando el comodín %
-- Devuelve todos clientes que terminan con el patrón 'es'
SELECT *
FROM Customers
WHERE CustomerName LIKE '%ES';
-- Devuelve todos los clientes que contienen el patrón 'mer'
SELECT *
FROM Customers
WHERE CustomerName LIKE '%MER%';

-- Usando el comodín _
-- Devuelve todos los clientes con una ciudad que comienza con cualquier caracter seguido por 'ondon'
SELECT *
FROM Customers
WHERE City LIKE '_ONDON';

-- Devuelve todos los clientes con una ciudad que comienza con 'L' seguido por 3 caracteres cualquiera y termina con 'on'
SELECT *
FROM Customers
WHERE City LIKE 'L___on';

-- Usando el comodín []
-- Devuelve todos los clientes que comienzan con 'b', 's' o 'p'
SELECT *
FROM Customers
WHERE CustomerName LIKE '[BSP]%';

-- Usando el comodín -
SELECT *
FROM Customers
WHERE CustomerName LIKE '[A-F]%';

-- Combinar comodines
-- Devuelve todos los clientes que comienzan con 'a' y tienen al menos 3 caracteres de longitud
SELECT *
FROM Customers
WHERE CustomerName LIKE 'A__%';
-- Devuelve todos los clientes que tienen 'r' en la segunda posición
SELECT *
FROM Customers
WHERE CustomerName LIKE '_R%';