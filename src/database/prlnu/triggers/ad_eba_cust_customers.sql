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


-- sqlcl_snapshot {"hash":"3f2ff07c32e958c3dbe9b6e04d01054dda698932","type":"TRIGGER","name":"AD_EBA_CUST_CUSTOMERS","schemaName":"PRLNU","sxml":""}