INSERT INTO currencies
    (name, alias)
SELECT 'Евро', 'EUR'
WHERE NOT EXISTS(
        SELECT * FROM currencies WHERE alias = 'EUR'
    );

INSERT INTO currencies
    (name, alias)
SELECT 'Доллар США', 'USD'
WHERE NOT EXISTS(
        SELECT * FROM currencies WHERE alias = 'USD'
    );

INSERT INTO currencies
    (name, alias)
SELECT 'Российский рубль', 'RUB'
WHERE NOT EXISTS(
        SELECT * FROM currencies WHERE alias = 'RUB'
    );

INSERT INTO currencies
    (name, alias)
SELECT 'Казахстанский тенге', 'KZT'
WHERE NOT EXISTS(
        SELECT * FROM currencies WHERE alias = 'KZT'
    );

INSERT INTO currencies
    (name, alias)
SELECT 'Канадский доллар', 'CAD'
WHERE NOT EXISTS(
        SELECT * FROM currencies WHERE alias = 'CAD'
    );

INSERT INTO currencies
    (name, alias)
SELECT 'Австралийский доллар', 'AUD'
WHERE NOT EXISTS(
        SELECT * FROM currencies WHERE alias = 'AUD'
    );
