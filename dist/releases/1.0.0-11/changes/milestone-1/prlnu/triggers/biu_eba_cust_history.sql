-- liquibase formatted sql
-- changeset PRLNU:1753338767586 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_history.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_history.sql:null:05063b5e60c3c77475271f03d0f18e656f6e954b:create

create or replace editionable trigger biu_eba_cust_history before
    insert or update on eba_cust_history
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
        :new.change_date := current_timestamp;
        :new.changed_by := nvl(wwv_flow.g_user, user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := :new.row_version_number + 1;
    end if;

end;
/

alter trigger biu_eba_cust_history enable;

