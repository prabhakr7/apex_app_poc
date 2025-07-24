create unique index eba_cust_users_uk on
    eba_cust_users (
        username
    );


-- sqlcl_snapshot {"hash":"c8ed30b19ac9796054e1c8e2a00a1e6ad8256e6e","type":"INDEX","name":"EBA_CUST_USERS_UK","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_USERS_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_USERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>USERNAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}