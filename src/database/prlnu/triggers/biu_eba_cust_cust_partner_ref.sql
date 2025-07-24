create or replace editionable trigger biu_eba_cust_cust_partner_ref before
    insert or update on eba_cust_cust_partner_ref
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
end biu_eba_cust_cust_partner_ref;
/

alter trigger biu_eba_cust_cust_partner_ref enable;


-- sqlcl_snapshot {"hash":"957d73c1351733cce8640b39d4a147fe9f4edad3","type":"TRIGGER","name":"BIU_EBA_CUST_CUST_PARTNER_REF","schemaName":"PRLNU","sxml":""}