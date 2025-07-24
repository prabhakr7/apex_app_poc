create or replace editionable trigger biu_eba_cust_cust_reftype_ref before
    insert or update on eba_cust_customer_reftype_ref
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
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        v('APP_USER'),
        user
    );
end;
/

alter trigger biu_eba_cust_cust_reftype_ref enable;


-- sqlcl_snapshot {"hash":"f56d6ddb12545d003825f5f0ad4524b8c3d2d0b5","type":"TRIGGER","name":"BIU_EBA_CUST_CUST_REFTYPE_REF","schemaName":"PRLNU","sxml":""}