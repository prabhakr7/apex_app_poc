create or replace editionable trigger biu_eba_cust_ref_phase before
    insert or update on eba_cust_ref_phase
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

alter trigger biu_eba_cust_ref_phase enable;


-- sqlcl_snapshot {"hash":"2bbdfa1698c0082ac8f4a115ef15aad1faecd8f0","type":"TRIGGER","name":"BIU_EBA_CUST_REF_PHASE","schemaName":"PRLNU","sxml":""}