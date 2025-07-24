-- liquibase formatted sql
-- changeset PRLNU:1753338767097 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/bi_eba_cust_errors.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/bi_eba_cust_errors.sql:null:71d09062eba660a5566697234654370f0f207a8d:create

create or replace editionable trigger bi_eba_cust_errors before
    insert or update on eba_cust_errors
    for each row
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;
end;
/

alter trigger bi_eba_cust_errors enable;

