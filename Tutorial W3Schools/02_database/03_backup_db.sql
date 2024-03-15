-- Se utiliza en SQL Server para crear una copia de seguridad completa de una base de datos SQL existente

-- Crea una copia de seguridad completa de la base de datos existente "testDB" en el disco D
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';

-- Consejo: Siempre haga una copia de seguridad de la base de datos en una unidad diferente a la de la base de datos real. Luego, si sufre una falla en el disco, no perderá su archivo de respaldo junto con la base de datos.

-- SQL BACKUP con DIFFERENTIAL
-- Crea una copia de seguridad diferencial de la base de datos "testDB"
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak'
WITH DIFFERENTIAL;