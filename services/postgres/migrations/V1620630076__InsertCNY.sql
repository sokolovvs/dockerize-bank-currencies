INSERT INTO currencies
    (name, alias)
SELECT 'Китайский юань', 'CNY'
WHERE NOT EXISTS(
        SELECT * FROM currencies WHERE alias = 'CNY'
    );