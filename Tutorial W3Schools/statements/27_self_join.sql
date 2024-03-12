-- Es una unión regular, pero la tabla está unida consigo misma
-- La siguiente declaración SQL coincide con clientes que son de la misma ciudad
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> b.CustomerID AND A.City = B.City
ORDER BY A.City; 