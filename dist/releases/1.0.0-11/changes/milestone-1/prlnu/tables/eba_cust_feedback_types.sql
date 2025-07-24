-- liquibase formatted sql
-- changeset PRLNU:1753338765965 stripComments:false  logicalFilePath:milestone-1/prlnu/tables/eba_cust_feedback_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/tables/eba_cust_feedback_types.sql:null:d3533fddf16dbc604e527a8903186945852abec0:create

create table eba_cust_feedback_types (
    id            number
        constraint eba_cust_feedback_types_pk not null enable,
    feedback_type varchar2(30 byte),
    created       timestamp(6) with time zone,
    created_by    varchar2(255 byte),
    updated       timestamp(6) with time zone,
    updated_by    varchar2(255 byte)
);

alter table eba_cust_feedback_types add primary key ( id )
    using index enable;

