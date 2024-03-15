-- Se utiliza para crear una nueva tabla en una base de datos

-- Crea una tabla llamada Persons que contiene cinco columnas: PersonID, LastName, FirstName, Address y City
CREATE TABLE Persons
(
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

-- Crear tabla usando otra tabla
-- Crea una nueva tabla llamada TestTable (que es una copia de la tabla Customers)
/*CREATE TABLE TestTable AS
SELECT CustomerName, ContactName
FROM Customers;*/