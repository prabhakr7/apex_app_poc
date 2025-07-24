create or replace editionable trigger biu_eba_cust_use_case before
    insert or update on eba_cust_use_case
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

alter trigger biu_eba_cust_use_case enable;


-- sqlcl_snapshot {"hash":"7d34b5b2f6b70ad60b6cc8de4bbf2b8c337b2e4c","type":"TRIGGER","name":"BIU_EBA_CUST_USE_CASE","schemaName":"PRLNU","sxml":""}