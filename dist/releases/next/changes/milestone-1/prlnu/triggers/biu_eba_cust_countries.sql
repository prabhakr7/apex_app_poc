-- liquibase formatted sql
-- changeset PRLNU:1753338767285 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_countries.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_countries.sql:null:3fae35cb89ed14667e1a2236a4f6020e2f413cf4:create

create or replace editionable trigger biu_eba_cust_countries before
    insert or update on eba_cust_countries
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
        :new.created_by := nvl(wwv_flow.g_user, user);
        :new.updated := current_timestamp;
        :new.updated_by := nvl(wwv_flow.g_user, user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := nvl(:old.row_version_number,
                                       1) + 1;
    end if;

    if inserting
    or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(wwv_flow.g_user, user);
    end if;

    if :new.display_yn is null then
        :new.display_yn := 'Y';
    end if;

end;
/

alter trigger biu_eba_cust_countries enable;

