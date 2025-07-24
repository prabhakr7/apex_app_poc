-- liquibase formatted sql
-- changeset PRLNU:1753338759162 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_countries_i2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_countries_i2.sql:null:d9984965bb60290dac0eec73b9fa6765922db224:create

create unique index eba_cust_countries_i2 on
    eba_cust_countries (
        country_name
    );

