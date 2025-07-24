-- liquibase formatted sql
-- changeset PRLNU:1753338765409 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_cust_part_fk2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_cust_part_fk2.sql:null:4b7d7ed7945839610933957efe2db699a484f7aa:create

alter table eba_cust_cust_partner_ref
    add constraint eba_cust_cust_part_fk2
        foreign key ( partner_id )
            references eba_cust_impl_partners ( id )
                on delete cascade
        enable;

