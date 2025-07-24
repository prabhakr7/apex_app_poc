-- liquibase formatted sql
-- changeset PRLNU:1753338759123 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_clicks_idx2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_clicks_idx2.sql:null:1cb60ecd0153434daab9339fb8b4da7ab6cbed97:create

create index eba_cust_clicks_idx2 on
    eba_cust_clicks ( sys_extract_utc(view_timestamp) );

