-- liquibase formatted sql
-- changeset PRLNU:1753338766652 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/au_eba_cust_competitors.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/au_eba_cust_competitors.sql:null:a18d75c27916b9696da224187e48b9b18f8db9aa:create

create or replace editionable trigger au_eba_cust_competitors after
    update on eba_cust_competitors
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- NAME (default)
    if nvl(:old.name,
           '0') != nvl(:new.name,
                       '0') then
        insert into eba_cust_history (
            table_name,
            component_rowkey,
            component_id,
            column_name,
            old_value,
            new_value
        ) values ( 'COMPETITORS',
                   null,
                   :new.id,
                   'NAME',
                   substr(:old.name,
                          0,
                          4000),
                   substr(:new.name,
                          0,
                          4000) );

    end if;
    -- DESCRIPTION (default)
    if nvl(:old.description,
           '0') != nvl(:new.description,
                       '0') then
        insert into eba_cust_history (
            table_name,
            component_rowkey,
            component_id,
            column_name,
            old_value,
            new_value
        ) values ( 'COMPETITORS',
                   null,
                   :new.id,
                   'DESCRIPTION',
                   substr(:old.description,
                          0,
                          4000),
                   substr(:new.description,
                          0,
                          4000) );

    end if;
    -- WEBSITE (default)
    if nvl(:old.website,
           '0') != nvl(:new.website,
                       '0') then
        insert into eba_cust_history (
            table_name,
            component_rowkey,
            component_id,
            column_name,
            old_value,
            new_value
        ) values ( 'COMPETITORS',
                   null,
                   :new.id,
                   'WEBSITE',
                   substr(:old.website,
                          0,
                          4000),
                   substr(:new.website,
                          0,
                          4000) );

    end if;

    commit;
end au_eba_cust_competitors;
/

alter trigger au_eba_cust_competitors enable;

