create or replace editionable trigger biu_eba_cust_contact_types before
    insert or update on eba_cust_contact_types
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

alter trigger biu_eba_cust_contact_types enable;


-- sqlcl_snapshot {"hash":"a5d5480240e3218d7fc671b72767bd9bab04ef93","type":"TRIGGER","name":"BIU_EBA_CUST_CONTACT_TYPES","schemaName":"PRLNU","sxml":""}