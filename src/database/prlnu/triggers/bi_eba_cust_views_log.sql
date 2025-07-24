create or replace editionable trigger bi_eba_cust_views_log before
    insert on eba_cust_views_log
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

alter trigger bi_eba_cust_views_log enable;


-- sqlcl_snapshot {"hash":"3dfe02b2acdaba32b6ab6745275780265a095923","type":"TRIGGER","name":"BI_EBA_CUST_VIEWS_LOG","schemaName":"PRLNU","sxml":""}