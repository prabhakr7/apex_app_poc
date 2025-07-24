-- liquibase formatted sql
-- changeset PRLNU:1753338759086 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_activity_ref_idx1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_activity_ref_idx1.sql:null:1d716ba09568148b2842829dfa0dd780dad0beef:create

create index eba_cust_activity_ref_idx1 on
    eba_cust_activity_ref (
        activity_id
    );

