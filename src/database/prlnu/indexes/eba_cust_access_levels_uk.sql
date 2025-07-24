create unique index eba_cust_access_levels_uk on
    eba_cust_access_levels (
        access_level
    );


-- sqlcl_snapshot {"hash":"dd12b514ecb2cc58066a21741a5f396318320d76","type":"INDEX","name":"EBA_CUST_ACCESS_LEVELS_UK","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_ACCESS_LEVELS_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_ACCESS_LEVELS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCESS_LEVEL</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}