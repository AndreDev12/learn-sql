/* La restricción UNIQUE garantiza que todos los valores de una columna sean diferentes.
Una restricción PRIMARY KEY tiene automáticamenete una restricción UNIQUE.
Sin embargo, puede tener muchas restricciones UNIQUE por tabla, pero sólo una restricción PRIMARY KEY por tabla. */

-- Restricción UNIQUE en CREATE TABLE
-- Crea una restricción UNIQUE en la columna ID cuando se crea la tabla Persons
-- SQL Server/Oracle/MS Access
CREATE TABLE Persons
(
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
-- MySQL
CREATE TABLE Persons
(
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE(ID)
);

-- Nombrar una restricción UNIQUE y definir una restricción UNIQUE en varias columnas, utilice la siguiente sintaxis:
CREATE TABLE Persons
(
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
);

-- Restricción UNIQUE en ALTER TABLE
-- Crear una restricción UNIQUE en la columna ID cuando la tabla ya está creada, use el siguiente SQL
-- MySQL/SQL Server/Oracle/MS Access
ALTER TABLE Persons ADD UNIQUE (ID);

-- Nombrar una restricción UNIQUE y definir una restricción UNIQUE en varias columnas, utilice la siguiente sintaxis
-- MySQL/SQL Server/Oracle/MS Access
ALTER TABLE Persons ADD CONSTRAINT UC_Person UNIQUE(ID,LastName);

-- DROP una restricción UNIQUE
-- Eliminar una restricción UNIQUE
-- MySQL
ALTER TABLE Persons DROP INDEX UC_Person;

-- SQL Server/Oracle/MS Access
ALTER TABLE Persons DROP CONSTRAINT UC_Person;