CREATE TABLE banks
(
    id    SERIAL
        CONSTRAINT banks_pk
            PRIMARY KEY,
    alias VARCHAR(100) NOT NULL
);

CREATE UNIQUE INDEX banks_alias_uindex
    ON banks (alias);
