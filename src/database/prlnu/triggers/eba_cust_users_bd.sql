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


-- sqlcl_snapshot {"hash":"fc2ca643b04da80efdc463e489cd1c007b6e7046","type":"TRIGGER","name":"EBA_CUST_USERS_BD","schemaName":"PRLNU","sxml":""}