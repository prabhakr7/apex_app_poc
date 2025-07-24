-- liquibase formatted sql
-- changeset PRLNU:1753338767631 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_issue_statuses.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_issue_statuses.sql:null:03a3ab46844eaaed2950899a73444608aedb6a36:create

create or replace editionable trigger biu_eba_cust_issue_statuses before
    insert or update on eba_cust_issue_statuses
    for each row
begin
    if :new.id is null then
        :new.id := to_number ( sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' );
    end if;

    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    if inserting
    or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

end;
/

alter trigger biu_eba_cust_issue_statuses enable;

