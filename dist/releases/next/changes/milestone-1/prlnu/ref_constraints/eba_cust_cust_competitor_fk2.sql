-- liquibase formatted sql
-- changeset PRLNU:1753338765395 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_cust_competitor_fk2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_cust_competitor_fk2.sql:null:6a5146da1cb2c2d790d45d2d898a6207ffbdb63d:create

alter table eba_cust_cust_competitor_ref
    add constraint eba_cust_cust_competitor_fk2
        foreign key ( competitor_id )
            references eba_cust_competitors ( id )
                on delete cascade
        enable;

