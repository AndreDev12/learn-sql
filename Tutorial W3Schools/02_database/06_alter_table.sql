-- Se utiliza para agregar, eliminar o modificar columnas en una tabla existente, también se utiliza para agregar y eliminar varias restricciones en una tabla existente.

-- ALTER TABLE - ADD Column
-- Agrega una columna Email a la tabla Customers
ALTER TABLE Customers ADD EMAIL varchar(255);

-- ALTER TABLE - DROP COLUMN
-- Elimina la columna Email de la tabla Customers
ALTER TABLE Customers DROP COLUMN Email;

-- ALTER TABLE - RENAME COLUMN
-- ALTER TABLE Customers RENAME COLUMN CustomerName to CustomerLastName;

-- Agregar una columna llamada DateOfBirth en la tabla Persons
ALTER TABLE Persons ADD DateOfBirth date;

-- Cambia el tipo de dato de la columna denominada DateOfBirth en la tabla Persons
ALTER TABLE Persons ALTER COLUMN DateOfBirth year;

-- Elimina la columna DateOfBirth en la tabla Persons
ALTER TABLE Persons DROP COLUMN DateOfBirth;