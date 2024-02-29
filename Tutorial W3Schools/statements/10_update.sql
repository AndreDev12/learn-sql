-- La declaración UPDATE se utiliza para modificar los registros existentes en una tabla

-- Actualizar registro
UPDATE Customers
SET    ContactName = 'Alfred Schmidt',
       City = 'Frankfurt'
WHERE  CustomerID = 1;

-- Actualizar varios registros
UPDATE Customers
SET    ContactName= 'Juan'
WHERE  Country= 'Mexico';

-- Si omite la cláusula WHERE todos los registros se actualizarán