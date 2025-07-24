-- liquibase formatted sql
-- changeset PRLNU:1753338767909 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/eba_cust_feedback_types_biu.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/eba_cust_feedback_types_biu.sql:null:b85b365e7d20feb153db00e32489401d47bc6307:create

create or replace editionable trigger eba_cust_feedback_types_biu before
    insert or update on eba_cust_feedback_types
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

alter trigger eba_cust_feedback_types_biu enable;

