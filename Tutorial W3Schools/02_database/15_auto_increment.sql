-- Permite generar automáticamente un número único cuando se inserta un nuevo registro en un tabla.

-- Sintaxis para MySQL
-- Define la columna Personid como un campo PRIMARY KEY de AUTO INCREMENT en la tabla Persons
-- CREATE TABLE Persons
-- (
--     Personid int NOT NULL AUTO_INCREMENT,
--     LastName varchar(255) NOT NULL,
--     FirstName varchar(255),
--     Age int,
--     PRIMARY KEY(Personid)
-- );

-- Para permitir que la secuencia AUTO_INCREMENT comience con otro valor, utilice la siguiente declaración
-- ALTER TABLE Persons AUTO_INCREMENT=100;

-- Para insertar un nuevo registro en la tabla Persons, no tendremos que especificar un valor para la columna Personid (se agregará un valor único automáticamente)
INSERT INTO Persons
    (FirstName,LastName)
VALUES('Lars', 'Monsen');

-- Sintaxis para SQL Server
-- Define la columna Personid como un campo de clave principal de incremento automático en la tabla Persons
CREATE TABLE Persons
(
    Personid int IDENTITY(1,1) PRIMARY KEY,
    LastName varhchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

-- Para insertar un nuevo registro en la tabla Persons, no tendremos que especificar un valor para la columna Personid (se agregará un valor único automáticamente)
INSERT INTO Persons
    (FirstName,LastName)
VALUES('Lars', 'Monsen');

-- Sintaxis para MS Access
-- Define la columna Personid como un campo de PRIMARY KEY de AUTO INCREMENT en la tabla Persons
CREATE TABLE Persons
(
    Personid AUTOINCREMENT PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

-- Para insertar un nuevo registro en la tabla Persons, no tendremos que especificar un valor para la columna Personid (se agregará un valor único automáticamente)
INSERT INTO Persons
    (FirstName,LastName)
VALUES('Lars', 'Monsen');

-- Sintaxis para Oracle
-- Tendrás que crear un campo de incremento automático con el objeto de secuencia (este objeto genera una secuencia numérica)
CREATE SEQUENCE seq_person
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

-- Para insertar un nuevo registro en la tabla Persons, tendremos que usar la función nextval (esta función recupera el siguiente valor de la secuencia seq_person)
INSERT INTO Persons
    (Personid,FirstName,LastName)
VALUES
    (seq_person.nextval, 'Lars', 'Monsen');