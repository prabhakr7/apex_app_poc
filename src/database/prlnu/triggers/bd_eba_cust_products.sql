create or replace editionable trigger bd_eba_cust_products before
    delete on eba_cust_products
    for each row
begin
    eba_cust_fw.tag_sync(
        p_new_tags     => null,
        p_old_tags     => :old.tags,
        p_content_type => 'PRODUCT',
        p_content_id   => :old.id
    );
end;
/

alter trigger bd_eba_cust_products enable;


-- sqlcl_snapshot {"hash":"8c8f37bab905f40ed6790b150da7aa2834f52a13","type":"TRIGGER","name":"BD_EBA_CUST_PRODUCTS","schemaName":"PRLNU","sxml":""}