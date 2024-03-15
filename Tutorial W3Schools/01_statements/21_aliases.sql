-- Se utilizan para dar un nombre temporal a una tabla o columna de una tabla
SELECT CustomerID AS ID
FROM Customers;

-- AS es opcional
SELECT CustomerID ID
FROM Customers;

-- Alias para columnas
-- Crea dos alias, uno para la columna CustomerID y otro para la columna CustomerName
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

-- Usar alias con carácter de espacio
-- Uso de [] para alias con carateres de espacio
SELECT ProductName AS [My great products]
FROM Products;
-- Uso de comillas dobles para alias con caracteres de espacio
SELECT ProductName AS "My great products"
FROM Products;

-- Concatenar columnas
-- Crea un alias denominado "Address" que combina cuatro columnas (Address, PostalCode, City y Country)
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;
-- Para que la declaración SQL anterior funcione en MySQL, utilice lo siguiente
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;
-- Para que la declaración SQL anterior funcione en Oracle, utilice lo siguiente
-- SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
-- FROM Customers;

-- Alias para tablas
-- Consulte la tabla Customers como Persons
SELECT *
FROM Customers AS Persons;