-- liquibase formatted sql
-- changeset PRLNU:1753338765402 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_cust_part_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_cust_part_fk.sql:null:fb520e83e905e05b1fa227597baa1f1a91c95e46:create

alter table eba_cust_cust_partner_ref
    add constraint eba_cust_cust_part_fk
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;

