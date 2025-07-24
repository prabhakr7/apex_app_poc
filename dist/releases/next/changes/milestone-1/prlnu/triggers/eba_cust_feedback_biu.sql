-- liquibase formatted sql
-- changeset PRLNU:1753338767897 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/eba_cust_feedback_biu.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/eba_cust_feedback_biu.sql:null:cb409698c0cc4f12fd987aba5832931021120607:create

create or replace editionable trigger eba_cust_feedback_biu before
    insert or update on eba_cust_feedback
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

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        v('APP_USER'),
        user
    );
end;
/

alter trigger eba_cust_feedback_biu enable;

