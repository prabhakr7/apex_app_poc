-- liquibase formatted sql
-- changeset PRLNU:1753338765323 stripComments:false  logicalFilePath:milestone-1/prlnu/procedures/eba_cust_tz_init.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/prlnu/procedures/eba_cust_tz_init.sql:null:6bfd1916b2b18210dbc0fc3e383c9bb01ad856f7:create

create or replace procedure eba_cust_tz_init as
    c          integer := 0;
    l_app_user varchar2(255);
begin
    l_app_user := nvl(
        v('APP_USER'),
        user
    );
    for c1 in (
        select
            timezone_preference
        from
            eba_cust_tz_pref
        where
            userid = l_app_user
    ) loop
   --
        if c1.timezone_preference is not null then
            c := c + 1;
            apex_util.set_session_time_zone(p_time_zone => c1.timezone_preference);
        end if;

        exit;
    end loop;

    if c = 0 then
        if apex_util.get_session_time_zone is null then
            apex_util.set_session_time_zone(p_time_zone => 'US/Pacific');
        end if;
    end if;

end;
/

