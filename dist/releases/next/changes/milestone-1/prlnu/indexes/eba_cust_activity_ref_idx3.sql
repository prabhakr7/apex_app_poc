-- liquibase formatted sql
-- changeset PRLNU:1753338759101 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_activity_ref_idx3.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_activity_ref_idx3.sql:null:62994b980195a86aaa59d1765d65b6ea987f3337:create

create index eba_cust_activity_ref_idx3 on
    eba_cust_activity_ref (
        contact_id
    );

