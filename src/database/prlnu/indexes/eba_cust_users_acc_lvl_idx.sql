create index eba_cust_users_acc_lvl_idx on
    eba_cust_users (
        access_level_id
    );


-- sqlcl_snapshot {"hash":"29f3967e200a799001dabb815337f165dac79f89","type":"INDEX","name":"EBA_CUST_USERS_ACC_LVL_IDX","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_USERS_ACC_LVL_IDX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_USERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCESS_LEVEL_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}