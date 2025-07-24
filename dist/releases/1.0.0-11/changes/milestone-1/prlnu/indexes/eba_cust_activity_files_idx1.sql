-- liquibase formatted sql
-- changeset PRLNU:1753338759079 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_activity_files_idx1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_activity_files_idx1.sql:null:07c48f6ec8301de6a20a64ca08eee185f2dd059d:create

create index eba_cust_activity_files_idx1 on
    eba_cust_activity_files (
        activity_id
    );

