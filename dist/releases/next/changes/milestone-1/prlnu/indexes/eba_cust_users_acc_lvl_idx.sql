-- liquibase formatted sql
-- changeset PRLNU:1753338759324 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_users_acc_lvl_idx.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_users_acc_lvl_idx.sql:null:29f3967e200a799001dabb815337f165dac79f89:create

create index eba_cust_users_acc_lvl_idx on
    eba_cust_users (
        access_level_id
    );

