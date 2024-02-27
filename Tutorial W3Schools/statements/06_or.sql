-- La sentencia where puede contener uno o más operadores or
-- Seleccione todos los clientes de Alemania o España
SELECT * FROM Customers WHERE Country='Germany' OR Country='Spain';

-- Al menos una condición debe ser cierta
SELECT * FROM Customers WHERE City='Berlin' OR CustomerName LIKE 'G%' OR Country='Norway';