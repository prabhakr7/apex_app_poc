-- liquibase formatted sql
-- changeset PRLNU:1753338767770 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_reference_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_reference_types.sql:null:3c5e68209e6698e06e2bba7e97bcc412beac0ef1:create

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

