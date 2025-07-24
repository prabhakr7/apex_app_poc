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


-- sqlcl_snapshot {"hash":"04c4447a609b7c7aa1b3582d5278a42be3e4c86c","type":"TRIGGER","name":"BIU_EBA_CUST_ISSUE_STATUSES","schemaName":"PRLNU","sxml":""}