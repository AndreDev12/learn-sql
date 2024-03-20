/* Se utiliza para crear índices en tablas.
Los índices se utilizan para recuperar datos de la base de datos más rápidamente que de otra manera. Los usuarios no pueden ver los índices, solo se utilizan para acelerar las búsquedas/consultas. */

-- Crea un índice llamado idx_lastname en la columna LastName en la tabla Persons
CREATE INDEX idx_lastname ON Persons(LastName);

-- Crear un índice en una combinación de columnas
CREATE INDEX idx_pname ON Persons(LastName,FirstName);

-- CREATE UNIQUE INDEX
-- Crea un índice único en una tabla. No se permiten valores duplicados.

-- DROP INDEX
-- Se utiliza para eliminar un índice en una tabla.