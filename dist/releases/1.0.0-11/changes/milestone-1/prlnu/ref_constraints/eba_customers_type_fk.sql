-- liquibase formatted sql
-- changeset PRLNU:1753338765560 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_customers_type_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_customers_type_fk.sql:null:aa14ece956e063e90838d857d493ca6f48fb8901:create

alter table eba_cust_customers
    add constraint eba_customers_type_fk
        foreign key ( type_id )
            references eba_cust_type ( id )
                on delete cascade
        enable;

