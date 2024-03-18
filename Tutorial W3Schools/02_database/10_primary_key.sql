/* La restricción PRIMARY KEY identifica de forma única cada registro de una tabla.
Las claves primarias deben contener valores únicos y no pueden contener valores NULL.
Una tabla solo puede tener una PRIMARY KEY; y en la tabla, esta PRIMARY KEY puede constar de una o varias columnas (campos). */

-- PRIMARY KEY en CREATE TABLE
-- Crea un PRIMARY KEY en la columna ID cuando se crea la tabla Persons
-- MySQL
CREATE TABLE Persons
(
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY(ID)
);

-- SQL Server/Oracle/MS Access
CREATE TABLE Persons
(
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

-- Para permitir la denominación de una restricción PRIMARY KEY y definir una restricción PRIMARY KEY en varias columnas, utilice la siguiente sintaxis
-- MySQL/SQL Server/Oracle/MS Access
CREATE TABLE Persons
(
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_Person PRIMARY KEY(ID,LastName)
);
-- Nota: Solo hay un PRIMARY KEY (PK_Person). Sin embargo, el valor de la PRIMARY KEY se compone de dos columnas (ID + LastName)

-- PRIMARY KEY en ALTER TABLE
-- Crear una restricción PRIMARY KEY en la columna ID cuando la tabla ya está creda
-- MySQL/SQL Server/Oracle/MS Access
ALTER TABLE Persons ADD PRIMARY KEY(ID);

-- Para permitir la denominación de una restricción PRIMARY KEY y definir una restricción PRIMARY KEY en varias columnas, utilice la siguiente sintaxis
-- MySQL/SQL Server/Oracle/MS Access
ALTER TABLE Persons ADD CONSTRAINT PK_Person PRIMARY KEY(ID,LastName);

-- Una restricción DROP de PRIMARY KEY
-- ELiminar una restricción PRIMARY KEY
-- MySQL
-- ALTER TABLE Persons DROP PRIMARY KEY;

-- SQL Server/Oracle/MS Access
ALTER TABLE Persons DROP CONSTRAINT PK_Person;