-- liquibase formatted sql
-- changeset PRLNU:1753338766491 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/ad_eba_cust_customers.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/ad_eba_cust_customers.sql:null:c06ca21a176b7645b0ddc0cca8a51a7fa3e10881:create

create or replace editionable trigger ad_eba_cust_customers after
    delete on eba_cust_customers
    for each row
begin
    insert into eba_cust_history (
        table_name,
        component_rowkey,
        component_id,
        column_name,
        old_value,
        new_value
    ) values ( 'CUSTOMERS',
               :old.row_key,
               :old.id,
               'CUSTOMER_REMOVED',
               substr(:old.customer_name,
                      0,
                      4000),
               null );

end ad_eba_cust_customers;
/

alter trigger ad_eba_cust_customers enable;

