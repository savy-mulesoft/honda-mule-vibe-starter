-- Create schema if it does not exist in SQL Server
IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'mule_hkthn_0226')
BEGIN
    EXEC('CREATE SCHEMA mule_hkthn_0226');
END;

-- !!! VERY IMPORTANT !!! Create table with unique name (example empid = 12345) 
-- Replace 12345 with your unique empployee id
IF OBJECT_ID('mule_hkthn_0226.prdt_ctgry_12345', 'U') IS NULL
BEGIN
    CREATE TABLE mule_hkthn_0226.prdt_ctgry_12345 (
        product_line                VARCHAR(10)   NOT NULL,
        product_category_code       VARCHAR(50)   NOT NULL,
        product_category_group_code VARCHAR(50)   NOT NULL,

        product_category_name       NVARCHAR(200) NULL,
        door_type                   VARCHAR(20)   NULL,
        cylinder_count              VARCHAR(20)   NULL,
        motive_power                VARCHAR(50)   NULL,
        product_category_group_name NVARCHAR(200) NULL,

        business_key_delete_indicator CHAR(1) NULL,
        last_action_code             CHAR(1) NULL,

        created_utc DATETIME2(3) NOT NULL DEFAULT SYSUTCDATETIME(),
        updated_utc DATETIME2(3) NOT NULL DEFAULT SYSUTCDATETIME(),

        CONSTRAINT PK_prdt_ctgry_12345 PRIMARY KEY (
            product_line,
            product_category_code,
            product_category_group_code
        )
    );
END;
