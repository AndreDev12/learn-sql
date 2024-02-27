-- Se utiliza en combinación con otros operadores para dar el resultado opuesto
-- Seleccione los clientes que no son de Alemania
SELECT
    *
FROM
    Customers
WHERE
    NOT Country = 'Germany';

-- NOT LIKE
-- Seleccione clientes que no comiencen con la letra 'A'
SELECT
    *
FROM
    Customers
WHERE
    CustomerName NOT LIKE 'A%';

-- NOT BETWEEN
-- Seleccione clientes con un ID de cliente que no esté entre 10 y 60
SELECT
    *
FROM
    Customers
WHERE
    CustomerID NOT BETWEEN 10 AND 60;

-- NOT IN
-- Seleccione clientes que no sean de Paris o Londres
SELECT
    *
FROM
    Customers
WHERE
    City NOT IN ('Paris', 'London');

-- NOT Greater than
-- Seleccione clientes con un CustomerId no mayor a 50
SELECT
    *
FROM
    Customers
WHERE
    NOT CustomerID > 50;

-- NOT Less than
-- Seleccione clientes con un CustomerID no menor a 50
SELECT
    *
FROM
    Customers
WHERE
    NOT CustomerID < 50;