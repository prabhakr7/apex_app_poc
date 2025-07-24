-- liquibase formatted sql
-- changeset PRLNU:1753338759154 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_countries_i1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_countries_i1.sql:null:5529c5f519d79c6c4d41b7f4a5cc012e5e7c229e:create

create unique index eba_cust_countries_i1 on
    eba_cust_countries (
        country_code
    );

