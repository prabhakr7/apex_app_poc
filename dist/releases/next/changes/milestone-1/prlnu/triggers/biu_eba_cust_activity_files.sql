-- liquibase formatted sql
-- changeset PRLNU:1753338767145 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_activity_files.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_activity_files.sql:null:77492c6bdc7d4994653055d1a46e5a0afb58eff2:create

create or replace editionable trigger biu_eba_cust_activity_files before
    insert or update on eba_cust_activity_files
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
    else
        :new.row_version_number := nvl(:new.row_version_number,
                                       0) + 1;
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        v('APP_USER'),
        user
    );
end biu_eba_cust_activity_files;
/

alter trigger biu_eba_cust_activity_files enable;

