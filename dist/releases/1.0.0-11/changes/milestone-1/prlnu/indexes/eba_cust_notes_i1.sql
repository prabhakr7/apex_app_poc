-- liquibase formatted sql
-- changeset PRLNU:1753338759290 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_notes_i1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_notes_i1.sql:null:d28f4c2c3f28955f20ec79c863b8209bf5d15762:create

create index eba_cust_notes_i1 on
    eba_cust_notes (
        customer_id
    );

