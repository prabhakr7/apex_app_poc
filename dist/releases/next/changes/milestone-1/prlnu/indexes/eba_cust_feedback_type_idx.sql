-- liquibase formatted sql
-- changeset PRLNU:1753338759249 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_feedback_type_idx.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_feedback_type_idx.sql:null:5be94e83bc261ac9c1a33d5b803e17be2c010f65:create

create index eba_cust_feedback_type_idx on
    eba_cust_feedback (
        type_id
    );

