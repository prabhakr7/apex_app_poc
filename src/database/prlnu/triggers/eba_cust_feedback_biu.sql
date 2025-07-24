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


-- sqlcl_snapshot {"hash":"047b0c2ce04ecc8bbda081f6d84174beee745013","type":"TRIGGER","name":"EBA_CUST_FEEDBACK_BIU","schemaName":"PRLNU","sxml":""}