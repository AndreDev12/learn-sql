-- Se utiliza para insertar nuevos registros en una tabla
INSERT INTO customers
    (customername,
    contactname,
    address,
    city,
    postalcode,
    country)
VALUES
    ( 'Cardinal',
        'Tom B. Erichsen',
        'Skagen 21',
        'Stavanger',
        '4006',
        'Norway' );

-- Insertar datos solo en columnas especificadas
INSERT INTO customers
    (customername,
    city,
    country)
VALUES
    ('Cardinal',
        'Stavanger',
        'Norway');

-- Insertar varias filas
INSERT INTO customers
    (customername,
    contactname,
    address,
    city,
    postalcode,
    country)
VALUES
    ( 'Cardinal',
        'Tom B. Erichsen',
        'Skagen 21',
        'Stavanger',
        '4006',
        'Norway' ),
    ( 'Greasy Burger',
        'Per Olsen',
        'Gateveien 15',
        'Sandnes',
        '4306',
        'Norway' ),
    ('Tasty Tee',
        'Finn Egan',
        'Streetroad 198',
        'Liverpool',
        'L1 0AA',
        'UK'); 