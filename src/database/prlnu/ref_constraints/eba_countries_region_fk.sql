alter table eba_cust_countries
    add constraint eba_countries_region_fk
        foreign key ( region_id )
            references eba_cust_geographies ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"b23343d9824b40ff7730f9455e9bc54ec925cb21","type":"REF_CONSTRAINT","name":"EBA_COUNTRIES_REGION_FK","schemaName":"PRLNU","sxml":""}