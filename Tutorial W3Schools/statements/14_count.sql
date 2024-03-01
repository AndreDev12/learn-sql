-- Devuelve el número de registros que coinciden con un criterio específico
SELECT COUNT(*)
FROM Products;

-- Agregar una cláusula where
-- Encuentre la cantidad de productos cuyo precio es superior a 20
SELECT COUNT(*)
FROM Products
WHERE Price > 20;

-- Especificar columna
-- Encuentre la cantidad de productos donde ProductName no es nulo
SELECT COUNT(ProductName)
FROM Products;

-- Ignorar duplicados
-- ¿Cuántos precios diferentes hay en la tabla Products?
SELECT COUNT(DISTINCT Price)
FROM Products;

-- Utilice un alias
-- Nombra la columna "number of records"
SELECT COUNT(*) AS [number of records]
FROM Products;