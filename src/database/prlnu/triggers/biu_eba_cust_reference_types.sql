create or replace editionable trigger biu_eba_cust_reference_types before
    insert or update on eba_cust_reference_types
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := to_number ( sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' );
        end if;

        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := nvl(:new.row_version_number,
                                       0) + 1;
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        v('APP_USER'),
        user
    );
end;
/

alter trigger biu_eba_cust_reference_types enable;


-- sqlcl_snapshot {"hash":"02b112520ea0d16ebaaf6dd3e50ffc0b67081046","type":"TRIGGER","name":"BIU_EBA_CUST_REFERENCE_TYPES","schemaName":"PRLNU","sxml":""}