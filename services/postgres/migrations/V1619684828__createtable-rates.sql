CREATE TABLE rates
(
    id               SERIAL
        CONSTRAINT rates_pk_2
            PRIMARY KEY,
    bank_id          INT       NOT NULL
        CONSTRAINT rates_banks_id_fk
            REFERENCES banks,
    category         VARCHAR(255),
    from_currency_id INT       NOT NULL
        CONSTRAINT rates_currencies_id_fk
            REFERENCES currencies,
    to_currency_id   INT
        CONSTRAINT rates_currencies_id_fk_2
            REFERENCES currencies,
    buy              INT       NOT NULL,
    sell             INT       NOT NULL,
    created_at       TIMESTAMP NOT NULL
);

COMMENT ON COLUMN rates.buy IS 'The stored value was scaled by 100';

COMMENT ON COLUMN rates.sell IS 'The stored value was scaled by 100';

COMMENT ON COLUMN rates.created_at IS 'Unix timestamp of rates updated or api call time';

