-- La sentencia where puede contener uno o varios operadores and
SELECT
    *
FROM
    Customers
WHERE
    Country = 'Spain'
    AND CustomerName LIKE 'G%';

SELECT
    *
FROM
    Customers
WHERE
    Country = 'Germany'
    AND City = 'Berlin'
    AND PostalCode > 12000;

-- Combinando and y or
SELECT
    *
FROM
    Customers
WHERE
    Country = 'Spain'
    AND (
        CustomerName LIKE 'G%'
        OR CustomerName LIKE 'R%'
    );