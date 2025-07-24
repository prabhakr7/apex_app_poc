-- liquibase formatted sql
-- changeset PRLNU:1753338767984 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/eba_cust_users_bd.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/eba_cust_users_bd.sql:null:1e2a093859710696a37c6c803a878c47491f8365:create

create or replace editionable trigger eba_cust_users_bd before
    delete on eba_cust_users
    for each row
begin
    -- Disallow deletes to a user's own record.
    if v('APP_USER') = upper(:old.username) then
        raise_application_error(-20002, 'Delete disallowed, you cannot delete your own access control details.');
    end if;
end;
/

alter trigger eba_cust_users_bd enable;

