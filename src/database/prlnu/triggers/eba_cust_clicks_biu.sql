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


-- sqlcl_snapshot {"hash":"cd0801028adddb8890711c0103cc11428c2e63b5","type":"TRIGGER","name":"EBA_CUST_CLICKS_BIU","schemaName":"PRLNU","sxml":""}