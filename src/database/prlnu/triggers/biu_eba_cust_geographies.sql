create or replace editionable trigger biu_eba_cust_geographies before
    insert or update on eba_cust_geographies
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

alter trigger biu_eba_cust_geographies enable;


-- sqlcl_snapshot {"hash":"bce3d7d48fbe40021b69b2c9d5e81029970ffd9b","type":"TRIGGER","name":"BIU_EBA_CUST_GEOGRAPHIES","schemaName":"PRLNU","sxml":""}