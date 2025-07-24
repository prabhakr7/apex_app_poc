create unique index eba_cust_impl_partners_uk on
    eba_cust_impl_partners (
        name
    );


-- sqlcl_snapshot {"hash":"4fa62c7e42dfc6904a28c470dbeae6e1a19e24fe","type":"INDEX","name":"EBA_CUST_IMPL_PARTNERS_UK","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_IMPL_PARTNERS_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_IMPL_PARTNERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}