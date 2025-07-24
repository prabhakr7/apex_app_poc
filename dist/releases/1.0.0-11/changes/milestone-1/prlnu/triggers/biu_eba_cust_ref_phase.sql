-- liquibase formatted sql
-- changeset PRLNU:1753338767754 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/biu_eba_cust_ref_phase.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/biu_eba_cust_ref_phase.sql:null:432d254009aa012080d82b4cc0a3d5c1e6eb83f0:create

create or replace editionable trigger biu_eba_cust_ref_phase before
    insert or update on eba_cust_ref_phase
    for each row
begin
    if inserting then
        if :new.id is null then
            select
                to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
            into :new.id
            from
                dual;

        end if;

        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    if updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

end;
/

alter trigger biu_eba_cust_ref_phase enable;

