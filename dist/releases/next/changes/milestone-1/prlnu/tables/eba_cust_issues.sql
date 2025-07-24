-- liquibase formatted sql
-- changeset PRLNU:1753338766087 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_issues.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_issues.sql:null:0f5f392e5577f27db860d0be335dce7a4197773a:create

create table eba_cust_issues (
    id          number,
    customer_id number not null enable,
    name        varchar2(255 byte) not null enable,
    issue_type  varchar2(10 byte) not null enable,
    status_id   number not null enable,
    product_id  number,
    details     varchar2(4000 byte),
    resolution  varchar2(4000 byte),
    created     timestamp(6) with time zone,
    created_by  varchar2(255 byte),
    updated     timestamp(6) with time zone,
    updated_by  varchar2(255 byte)
);

alter table eba_cust_issues add primary key ( id )
    using index enable;

