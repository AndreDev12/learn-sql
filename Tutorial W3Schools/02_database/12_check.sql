/* Se utiliza para limitar el rango de valores que se puede colocar en una columna.
Si define una restricción CHECK en una columna, solo permitirá ciertos valores para esta columna.
Si define una restricción CHECK en una tabla, puede limitar los valores en ciertas columnas en función de los valores de otras columnas de la fila. */

-- CHECK en CREATE TABLE
-- Crea una restricción CHECK en la columna Age cuando se crea la tabla Persons. La restricción CHECK garantiza que la edad de una persona debe ser mayor de 18 años
-- MySQL
CREATE TABLE Persons
(
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK(Age>=18)
);

--SQL Server/Oracle/MS Access
CREATE TABLE Persons
(
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK(Age>=18)
);

-- Para permitir la denominación de una restricción CHECK y definir una restricción CHECK en varias columnas, utilice la siguiente sintaxis
-- MySQL/SQL Server/Oracle/MS Access
CREATE TABLE Persons
(
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandness')
);

-- CHECK en ALTER TABLE
-- Crear una restricción CHECK en la columna Age cuando la tabla ya está creada
-- MySQL/SQL Server/Oracle/MS Access
ALTER TABLE Persons ADD CHECK (Age>=18);

-- Para permitir la denominación de una restricción CHECK y definir una restricción CHECK en varias columnas 
-- MySQL/SQL Server/Oracle/MS Access
ALTER TABLE Persons ADD CONSTRAINT CHK_PersonAge CHECK (Age>=18 AND City='Sandness');

-- DROP una restricción CHECK
-- Eliminar una restricción CHECK
-- SQL Server/Oracle/MS Access
ALTER TABLE Persons DROP CONSTRAINT CHK_PersonAge;

-- MySQL
-- ALTER TABLE Persons DROP CHECK CHK_PersonAge;