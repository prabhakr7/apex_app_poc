create or replace editionable trigger biu_eba_cust_product_families before
    insert or update on eba_cust_product_families
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number ( sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' );
        end if;

        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.row_version_number := 1;
    else
        :new.row_version_number := nvl(:new.row_version_number,
                                       0) + 1;
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        v('APP_USER'),
        user
    );
end biu_eba_cust_product_families;
/

alter trigger biu_eba_cust_product_families enable;


-- sqlcl_snapshot {"hash":"78d7e34f2bb6c9bc271cfc5fcf8b203eca85e2c8","type":"TRIGGER","name":"BIU_EBA_CUST_PRODUCT_FAMILIES","schemaName":"PRLNU","sxml":""}