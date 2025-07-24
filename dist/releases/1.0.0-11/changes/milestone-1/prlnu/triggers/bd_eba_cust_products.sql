-- liquibase formatted sql
-- changeset PRLNU:1753338767088 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/bd_eba_cust_products.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/bd_eba_cust_products.sql:null:3505c1c6c5b8c709aff8e1276e73e13bb610900a:create

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

