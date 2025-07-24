create or replace editionable trigger eba_cust_product_statuses_biu before
    insert or update on eba_cust_product_statuses
    for each row
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    if inserting then
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
    end if;

    if updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

end;
/

alter trigger eba_cust_product_statuses_biu enable;


-- sqlcl_snapshot {"hash":"0fe07aa5191e58f2273074fa1b4fc9c3477fa368","type":"TRIGGER","name":"EBA_CUST_PRODUCT_STATUSES_BIU","schemaName":"PRLNU","sxml":""}