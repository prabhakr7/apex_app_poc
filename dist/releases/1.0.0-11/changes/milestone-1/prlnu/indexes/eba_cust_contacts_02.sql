-- liquibase formatted sql
-- changeset PRLNU:1753338759146 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_contacts_02.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_contacts_02.sql:null:5deba0da15341d7ccbbbff58483d4f2b819bc0ae:create

create index eba_cust_contacts_02 on
    eba_cust_contacts (
        contact_type_id
    );

