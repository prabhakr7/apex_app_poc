create unique index eba_cust_activity_types_uk on
    eba_cust_activity_types (
        name
    );


-- sqlcl_snapshot {"hash":"27b84ba7a1d646923012b98a216b34f5905ea998","type":"INDEX","name":"EBA_CUST_ACTIVITY_TYPES_UK","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_ACTIVITY_TYPES_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_ACTIVITY_TYPES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}