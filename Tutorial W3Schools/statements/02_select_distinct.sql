-- Trae los valores del campo seleccionado y los repetidos ya no los trae
SELECT DISTINCT Country FROM Customers;

-- Devuelve la cantidad de registros
SELECT Count(*) AS DistinctCountries FROM (SELECT DISTINCT Country FROM Customers);