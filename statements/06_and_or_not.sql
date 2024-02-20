-- NOT
SELECT * FROM users WHERE NOT age=20;

-- AND
SELECT * FROM users WHERE NOT age=20 AND age=32;

--OR
SELECT * FROM users WHERE NOT email='andreht@andredev.com' OR age=20;