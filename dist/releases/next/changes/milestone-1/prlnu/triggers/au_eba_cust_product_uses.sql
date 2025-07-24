-- liquibase formatted sql
-- changeset PRLNU:1753338767058 stripComments:false  logicalFilePath:milestone-1/prlnu/triggers/au_eba_cust_product_uses.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/triggers/au_eba_cust_product_uses.sql:null:4c6571a3a7fc81321551ea085b327c2254c86f60:create

create or replace editionable trigger au_eba_cust_product_uses after
    update on eba_cust_product_uses
    for each row
declare
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- PRODUCT_ID (foreign key)
    if nvl(:old.product_id,
           -999) != nvl(:new.product_id,
                        -999) then
        ov := null;
        nv := null;
        for c1 in (
            select
                product_name val
            from
                eba_cust_products t
            where
                t.id = :old.product_id
        ) loop
            ov := c1.val;
        end loop;

        for c1 in (
            select
                product_name val
            from
                eba_cust_products t
            where
                t.id = :new.product_id
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
        ) values ( 'PRODUCT_USES',
                   null,
                   :new.customer_id,
                   'PRODUCT_ID',
                   ov,
                   nv );

    end if;
end au_eba_cust_product_uses;
/

alter trigger au_eba_cust_product_uses enable;

