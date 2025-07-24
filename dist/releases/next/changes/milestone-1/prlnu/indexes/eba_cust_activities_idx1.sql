-- liquibase formatted sql
-- changeset PRLNU:1753338759070 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_activities_idx1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_activities_idx1.sql:null:9452cdee76f5a1ff775bed5661539aeca88e6111:create

create index eba_cust_activities_idx1 on
    eba_cust_activities (
        type_id
    );

