-- Deploy SnowProject:prj_by_id to snowflake

USE WAREHOUSE &warehouse;

-- XXX Add DDLs here.
CREATE OR REPLACE PROCEDURE GET_PROJECT_ID_NAME()
returns string not null
language javascript
as
$$
var sql_truncate = snowflake.createStatement({sqlText:"truncate table public.prj_id_name;"});
var truncate_result = sql_truncate.execute();
var insert_cmd = `
insert into public.prj_id_name
SELECT
    items.value:"projectId"::int                as id
  , items.value:"projectName"::varchar(1000)       as prjname
  
FROM public.all_projects
  , lateral flatten (parse_json(autonomiqtest('https://autonomiq-test.snowflake.com/platform/v1/getprojects',
                                     '{"Authorization":"Basic {{autonomiq}}"}'))
) as items;
`
var sql_insert = snowflake.createStatement({sqlText: insert_cmd});
var insert_result = sql_insert.execute();
return 'a';
$$;
