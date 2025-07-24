-- liquibase formatted sql
-- changeset PRLNU:1753338767241 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_contact_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_contact_types.sql:null:0785fc7d76fcf912649519a1948cf80090e39872:create

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

