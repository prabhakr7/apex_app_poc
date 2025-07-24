-- liquibase formatted sql
-- changeset PRLNU:1753338765953 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_feedback.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_feedback.sql:null:66700c21602b4475af8495764179b595ca1579c7:create

create table eba_cust_feedback (
    id             number
        constraint eba_cust_feedback_pk not null enable,
    application_id number not null enable,
    page_id        number not null enable,
    feedback       varchar2(4000 byte),
    response       varchar2(4000 byte),
    type_id        number,
    status         varchar2(30 byte),
    created        timestamp(6) with time zone,
    created_by     varchar2(255 byte),
    updated        timestamp(6) with time zone,
    updated_by     varchar2(255 byte)
);

alter table eba_cust_feedback add primary key ( id )
    using index enable;

