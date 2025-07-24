create unique index eba_cust_countries_i1 on
    eba_cust_countries (
        country_code
    );


-- sqlcl_snapshot {"hash":"5529c5f519d79c6c4d41b7f4a5cc012e5e7c229e","type":"INDEX","name":"EBA_CUST_COUNTRIES_I1","schemaName":"PRLNU","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>PRLNU</SCHEMA>\n   <NAME>EBA_CUST_COUNTRIES_I1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>PRLNU</SCHEMA>\n         <NAME>EBA_CUST_COUNTRIES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>COUNTRY_CODE</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n   </TABLE_INDEX>\n</INDEX>"}