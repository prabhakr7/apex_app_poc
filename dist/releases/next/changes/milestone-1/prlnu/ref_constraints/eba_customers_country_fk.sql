-- liquibase formatted sql
-- changeset PRLNU:1753338765534 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_customers_country_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_customers_country_fk.sql:null:d63941805dcf31e97d9435a649fa6c476f53ecd6:create

alter table eba_cust_customers
    add constraint eba_customers_country_fk
        foreign key ( country_id )
            references eba_cust_countries ( id )
                on delete cascade
        enable;

