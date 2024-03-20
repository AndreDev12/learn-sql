-- Se utiliza para establecer un valor predeterminado para una columna.

-- DEFAULT en CREATE TABLE
-- Establece una valor DEFAULT para la columna City cuando se crea la tabla Persons
-- MySQL/SQL Server/Oracle/MS Access
CREATE TABLE Persons
(
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandness'
);

-- La restricción DEFAULT también se puede utilizar para insertar valores del sistema mediante funciones como: GETDATE()
CREATE TABLE Orders
(
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT GETDATE()
);

-- DEFAULT en ALTER TABLE
-- Crear una restricción DEFAULT en la columna City cuando la tabla ya está creada
-- MySQL
-- ALTER TABLE Persons ALTER City SET DEFAULT 'Sandnes';

-- SQL Server
ALTER TABLE Persons ADD CONSTRAINT df_City DEFAULT 'Sandnes' FOR City;

-- MS Access
-- ALTER TABLE Persons ALTER COLUMN City SET DEFAULT 'Sandnes';

-- Oracle
-- ALTER TABLE Persons MODIFY City DEFAULT 'Sandnes';

-- DROP una restricción DEFAULT
-- Eliminar una restricción DEFAULT
-- MySQL
-- ALTER TABLE Persons ALTER City DROP DEFAULT;

-- SQL Server/Oracle/MS Access
-- ALTER TABLE Persons ALTER COLUMN City DROP DEFAULT;