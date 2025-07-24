-- liquibase formatted sql
-- changeset PRLNU:1753338765441 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_cust_files_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_cust_files_fk.sql:null:fde228bc5955f8f83a172bdaefa62f92cf10f4fa:create

alter table eba_cust_files
    add constraint eba_cust_files_fk
        foreign key ( customer_id )
            references eba_cust_customers ( id )
                on delete cascade
        enable;

