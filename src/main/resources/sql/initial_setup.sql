CREATE SCHEMA mule_hkthn_0226;

CREATE TABLE IF NOT EXISTS mule_hkthn_0226.PRDT_CTGRY (
    product_line                  VARCHAR(10)   NOT NULL,
    product_category_code         VARCHAR(50)   NOT NULL,
    product_category_group_code   VARCHAR(50)   NOT NULL,

    product_category_name         VARCHAR(200),
    door_type                     VARCHAR(20),
    cylinder_count                VARCHAR(20),
    motive_power                  VARCHAR(50),
    product_category_group_name   VARCHAR(200),

    business_key_delete_indicator CHAR(1),
    last_action_code              CHAR(1),

    created_by                    VARCHAR(50)   NOT NULL,

    created_utc TIMESTAMP NOT NULL DEFAULT CURRENT TIMESTAMP,
    updated_utc TIMESTAMP NOT NULL DEFAULT CURRENT TIMESTAMP,

    CONSTRAINT PK_PRDT_CTGRY PRIMARY KEY (
        product_line,
        product_category_code,
        product_category_group_code,
        created_by
    )
);
