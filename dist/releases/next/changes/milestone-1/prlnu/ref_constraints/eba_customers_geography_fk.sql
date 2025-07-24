-- liquibase formatted sql
-- changeset PRLNU:1753338765540 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_customers_geography_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_customers_geography_fk.sql:null:87c236570cb82fe5c62d25fb95a30d0c5cf5d4b4:create

alter table eba_cust_customers
    add constraint eba_customers_geography_fk
        foreign key ( geography_id )
            references eba_cust_geographies ( id )
                on delete cascade
        enable;

