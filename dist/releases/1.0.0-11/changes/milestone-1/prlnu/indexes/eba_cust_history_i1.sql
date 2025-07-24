-- liquibase formatted sql
-- changeset PRLNU:1753338759260 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_history_i1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_history_i1.sql:null:d91fab8a4ac0445da5899dbae49ca38ad26a6f45:create

create index eba_cust_history_i1 on
    eba_cust_history (
        component_id
    );

