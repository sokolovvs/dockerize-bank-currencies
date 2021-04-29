INSERT INTO banks
    (alias)
SELECT 'tinkoff'
WHERE NOT EXISTS(
        SELECT * FROM banks WHERE alias = 'tinkoff'
    );