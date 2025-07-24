-- liquibase formatted sql
-- changeset PRLNU:1753338767529 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_email_log.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_email_log.sql:null:f021fd3ab161d92764a5c3e43e6082390bd78fbb:create

create or replace editionable trigger biu_eba_cust_email_log before
    insert or update on eba_cust_email_log
    for each row
begin
    if :new.id is null then
        :new.id := to_number ( sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' );
    end if;

    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user, user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := nvl(:old.row_version_number,
                                       1) + 1;
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user, user);
    :new.email_first_to := lower(:new.email_first_to);
    :new.email_from := lower(:new.email_from);
end;
/

alter trigger biu_eba_cust_email_log enable;

