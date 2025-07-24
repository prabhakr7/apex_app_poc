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


-- sqlcl_snapshot {"hash":"6b0d5daaf0431f6a3ac624abc5cc7bd7462f3426","type":"TRIGGER","name":"EBA_CUST_FEEDBACK_TYPES_BIU","schemaName":"PRLNU","sxml":""}