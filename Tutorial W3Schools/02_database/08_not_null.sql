-- La restricción NOT NULL obliga a una columna a NO aceptar valores NULL.

-- NOT NULL en CREATE TABLE
-- Garantiza que las columnas ID, LastName y FirstName no aceptarán valores NULL cuando se cree la tabla Persons
CREATE TABLE Persons
(
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

-- NOT NULL en ALTER TABLE
-- Para crear una restricción NOT NULL en la columna Age cuando la tabla Persons ya está creada, use el siguiente SQL:

-- SQL Server/MS Access
ALTER TABLE Persons ALTER COLUMN Age int NOT NULL;

-- MySQL
-- ALTER TABLE Persons MODIFY COLUMN Age int NOT NULL;