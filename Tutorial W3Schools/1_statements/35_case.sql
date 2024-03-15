-- La expresión CASE pasa por condiciones y devuelve un valor cuando se cumple la primera condición (como una declaración si-entonces-si no). Entonces, una vez que una condición es verdadera, dejará de leer y devolverá el resultado. Si ninguna condición es verdadera, devuelve el valor de la cláusula ELSE.
-- Si no hay ninguna parte ELSE y ninguna condición es verdadera, devuelve NULL
-- El siguiente SQL pasa por las condiciones y devuelve un valor cuando se cumple la primera condición
SELECT OrderID, Quantity,
    CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;

-- Ordena a los clientes por ciudad. Sin embargo, si la ciudad es NULL, ordene por país
SELECT CustomerName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END); 