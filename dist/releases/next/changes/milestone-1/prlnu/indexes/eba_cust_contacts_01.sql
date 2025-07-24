-- liquibase formatted sql
-- changeset PRLNU:1753338759138 stripComments:false  logicalFilePath:milestone-1/prlnu/indexes/eba_cust_contacts_01.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/indexes/eba_cust_contacts_01.sql:null:9bb51486b89f622795d9113f4767008f76b823c9:create

create index eba_cust_contacts_01 on
    eba_cust_contacts (
        customer_id
    );

