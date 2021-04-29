CREATE TABLE currencies
(
    id    SERIAL
        CONSTRAINT rates_pk
            PRIMARY KEY,
    name  VARCHAR(255) NOT NULL,
    alias VARCHAR(10)  NOT NULL
);

CREATE UNIQUE INDEX rates_alias_uindex
    ON currencies (alias);

