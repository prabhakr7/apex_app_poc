-- liquibase formatted sql
-- changeset PRLNU:1753338766830 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/au_eba_cust_cust_partner_ref.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/au_eba_cust_cust_partner_ref.sql:null:73d77a87d83216def703d88379e59517ef9e9fc5:create

create or replace editionable trigger au_eba_cust_cust_partner_ref after
    insert or update or delete on eba_cust_cust_partner_ref
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
            eba_cust_impl_partners t
        where
            t.id = :old.partner_id
    ) loop
        ov := c1.val;
    end loop;

    for c1 in (
        select
            name val
        from
            eba_cust_impl_partners t
        where
            t.id = :new.partner_id
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
               'PARTNER_ID',
               ov,
               nv );

    commit;
end au_eba_cust_cust_partner_ref;
/

alter trigger au_eba_cust_cust_partner_ref enable;

