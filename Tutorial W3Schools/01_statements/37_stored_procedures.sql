-- Es un código SQL preparado que puede guardar, de modo que el código pueda reutilizarse una y otra vez. Entonces, si tiene una consulta SQL que escribe una y otra vez, guárdela como un procedimiento almacenado y luego simplemente llámela para ejecutarla.
-- También puede pasar parámetros a un procedimiento almacenado, de modo que el procedimiento almacenado pueda actuar en función de los valores de parámetro que se pasan.

-- Crea un un procedimiento almacenado llamado "SelectAllCustomers" que selecciona todos los registros de la tabla Customers
-- CREATE PROCEDURE SelectAllCustomers
-- AS
-- SELECT *
-- FROM Customers
-- GO;

-- Ejecute el procedimiento almacenado anterior
-- EXEC SelectAllCustomers;

-- Procedimiento almacenado con un parámetro
-- Crea un procedimiento almacenado que selecciona clientes de una ciudad en particular de la tabla Customers
-- CREATE PROCEDURE SelectAllCustomers
--     @City nvarchar(30)
-- AS
-- SELECT *
-- FROM Customers
-- WHERE City=@City
-- GO;

-- Ejecute el procedimiento almacenado anterior
-- EXEC SelectAllCustomers @City='London';

-- Procedimiento almacenado con varios parámetros
-- Crea un procedimiento almacenado que selecciona clientes de una ciudad en particular con un código postal particular de la tabla Customers
CREATE PROCEDURE SelectAllCustomers
    @City nvarchar(30),
    @PostalCode nvarchar(10)
AS
Select *
FROM Customers
WHERE City=@City AND PostalCode=@PostalCode
GO;

-- Ejecute el procedimiento almacenado
EXEC SelectAllCustomers @City='London', @PostalCode='NNN NNN';