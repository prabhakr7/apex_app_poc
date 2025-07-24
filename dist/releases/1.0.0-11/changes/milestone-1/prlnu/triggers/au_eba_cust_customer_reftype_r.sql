-- liquibase formatted sql
-- changeset PRLNU:1753338766850 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/au_eba_cust_customer_reftype_r.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/au_eba_cust_customer_reftype_r.sql:null:7e8999570e62260a3459826a84cd0e7c77e590c8:create

create or replace editionable trigger au_eba_cust_customer_reftype_r after
    insert or update or delete on eba_cust_customer_reftype_ref
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
            reference_type val
        from
            eba_cust_reference_types t
        where
            t.id = :old.reference_type_id
    ) loop
        ov := c1.val;
    end loop;

    for c1 in (
        select
            reference_type val
        from
            eba_cust_reference_types t
        where
            t.id = :new.reference_type_id
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
               'REFERENCE_TYPE_ID',
               ov,
               nv );

    commit;
end au_eba_cust_customer_reftype_r;
/

alter trigger au_eba_cust_customer_reftype_r enable;

