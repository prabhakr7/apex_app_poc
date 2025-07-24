create or replace editionable trigger biu_eba_cust_product_uses before
    insert or update on eba_cust_product_uses
    for each row
begin
    if inserting then
        if :new.id is null then
            select
                to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
            into :new.id
            from
                dual;

        end if;

        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.row_version_number := 1;
    end if;

    if updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.row_version_number := nvl(:new.row_version_number,
                                       0) + 1;
    end if;

end;
/

alter trigger biu_eba_cust_product_uses enable;


-- sqlcl_snapshot {"hash":"31779589171473b1787d3c7d7841fc0bb077ad5f","type":"TRIGGER","name":"BIU_EBA_CUST_PRODUCT_USES","schemaName":"PRLNU","sxml":""}