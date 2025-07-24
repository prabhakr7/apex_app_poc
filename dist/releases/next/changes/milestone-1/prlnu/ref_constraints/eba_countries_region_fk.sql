-- liquibase formatted sql
-- changeset PRLNU:1753338765329 stripComments:false  logicalFilePath:milestone-1/prlnu/ref_constraints/eba_countries_region_fk.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/ref_constraints/eba_countries_region_fk.sql:null:b23343d9824b40ff7730f9455e9bc54ec925cb21:create

alter table eba_cust_countries
    add constraint eba_countries_region_fk
        foreign key ( region_id )
            references eba_cust_geographies ( id )
                on delete cascade
        enable;

