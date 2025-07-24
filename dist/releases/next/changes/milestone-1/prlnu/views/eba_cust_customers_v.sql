-- liquibase formatted sql
-- changeset PRLNU:1753338768040 stripComments:false  logicalFilePath:milestone-1/prlnu/views/eba_cust_customers_v.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/views/eba_cust_customers_v.sql:null:3845c672746fe5e6542bf71897e71ce541699821:create

create or replace force editionable view eba_cust_customers_v (
    row_key,
    id,
    customer_name,
    status,
    status_id,
    category,
    geography_name,
    referencable,
    number_of_users,
    summary,
    web_site,
    product_uses,
    industry,
    tags,
    created,
    created_by,
    updated,
    updated_by
) as
    select
        a.row_key,
        a.id,
        customer_name,
        status,
        a.status_id,
        category,
        geography_name,
        referencable,
        number_of_users,
        summary,
        web_site,
        (
            select
                listagg(p.product_name, ', ') within group(
                order by
                    p.product_name
                ) product_uses
            from
                eba_cust_customers    c,
                eba_cust_product_uses u,
                eba_cust_products     p
            where
                    c.id = u.customer_id
                and u.product_id = p.id
                and c.id = a.id
            group by
                c.customer_name
        )                 product_uses,
        nvl((
            select
                industry_name
            from
                eba_cust_industries i
            where
                i.id = a.industry_id
        ), 'Not Defined') industry,
        tags,
        a.created,
        a.created_by,
        a.updated,
        a.updated_by
    from
        eba_cust_customers   a,
        eba_cust_categories  b,
        eba_cust_status      c,
        eba_cust_geographies d
    where
            a.category_id = b.id (+)
        and a.status_id = c.id (+)
        and a.geography_id = d.id (+);

