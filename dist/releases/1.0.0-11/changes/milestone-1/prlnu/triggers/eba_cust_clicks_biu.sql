-- liquibase formatted sql
-- changeset PRLNU:1753338767884 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/eba_cust_clicks_biu.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/eba_cust_clicks_biu.sql:null:b48dd1c31ecf6ff5b7afeded7a1b1475de2fe43b:create

create or replace editionable trigger eba_cust_clicks_biu before
    insert on eba_cust_clicks
    for each row
begin
    if :new.id is null then
        :new.id := eba_cust_seq.nextval;
    end if;

    :new.view_timestamp := current_timestamp;
    :new.app_username := nvl(
        v('APP_USER'),
        user
    );
    :new.app_session := v('APP_SESSION');
end;
/

alter trigger eba_cust_clicks_biu enable;

