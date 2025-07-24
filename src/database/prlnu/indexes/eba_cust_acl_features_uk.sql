create unique index eba_cust_acl_features_uk on
    eba_cust_acl_features (
        authorization_name
    );


-- sqlcl_snapshot {"hash":"da019b5ce490c351a5ea5cfebe0b789745352e75","type":"INDEX","name":"EBA_CUST_ACL_FEATURES_UK","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_ACL_FEATURES_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_ACL_FEATURES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>AUTHORIZATION_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}