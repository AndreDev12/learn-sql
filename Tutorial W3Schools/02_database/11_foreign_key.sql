/* Se utiliza para evitar acciones que destruirían vínculos entre tablas.
Una FOREIGN KEY es un campo (o colección de campos) en una tabla, que hace referencia a una PRIMARY KEY en otra tabla. */

-- FOREIGN KEY en CREATE TABLE
-- Crea un FOREIGN KEY en la columna PersonID cuando se crea la tabla Orders
-- MySQL
CREATE TABLE Orders
(
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY(OrderID),
    FOREIGN KEY(PersonID) REFERENCES Persons(PersonID)
);

-- SQL Server/Oracle/MS Access
CREATE TABLE Orders
(
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
);

-- Para permitir la denominación de una restricción FOREIGN KEY y definir una restricción FOREIGN KEY en varias columnas
-- MySQL/SQL Server/Oracle/MS Access
CREATE TABLE Orders
(
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY(OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY(PersonID) REFERENCES Persons(PersonID)
);

-- FOREIGN KEY en ALTER TABLE
-- Crear una restricción FOREIGN KEY en la columna PersonID cuando la tabla Orders ya está creada
-- MySQL/SQL Server/Oracle/MS Access
ALTER TABLE Orders ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

-- Permitir la denominación de una restricción FOREIGN KEY y definir una restricción FOREIGN KEY en varias columnas
-- MySQL/SQL Server/Oracle/MS Access
ALTER TABLE Orders ADD CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

-- Una restricción DROP de PRIMARY KEY
-- Eliminar una restricción FOREIGN KEY
-- MySQL
-- ALTER TABLE Orders DROP FOREIGN KEY FK_PersonOrder;

-- SQL Server/Oracle/MS Access
ALTER TABLE Orders DROP CONSTRAINT FK_PersonOrder;