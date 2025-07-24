-- liquibase formatted sql
-- changeset PRLNU:1753338766811 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/au_eba_cust_cust_competitor_re.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/au_eba_cust_cust_competitor_re.sql:null:78b006066f60ffcfd8fbd755b20d18942d61d361:create

create or replace editionable trigger au_eba_cust_cust_competitor_re after
    insert or update or delete on eba_cust_cust_competitor_ref
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    ov := null;
    nv := null;
    for c1 in (
        select
            name val
        from
            eba_cust_competitors t
        where
            t.id = :old.competitor_id
    ) loop
        ov := c1.val;
    end loop;

    for c1 in (
        select
            name val
        from
            eba_cust_competitors t
        where
            t.id = :new.competitor_id
    ) loop
        nv := c1.val;
    end loop;

    insert into eba_cust_history (
        table_name,
        component_rowkey,
        component_id,
        column_name,
        old_value,
        new_value
    ) values ( 'CUSTOMERS',
               null,
               nvl(:new.customer_id,
                   :old.customer_id),
               'COMPETITOR_ID',
               ov,
               nv );

    commit;
end au_eba_cust_cust_competitor_re;
/

alter trigger au_eba_cust_cust_competitor_re enable;

