create or replace editionable trigger biu_eba_cust_sales_channel before
    insert or update on eba_cust_sales_channel
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

alter trigger biu_eba_cust_sales_channel enable;


-- sqlcl_snapshot {"hash":"50e5e0070afd21f2eb89b7ffac035d45a60a3931","type":"TRIGGER","name":"BIU_EBA_CUST_SALES_CHANNEL","schemaName":"PRLNU","sxml":""}