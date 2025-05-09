--
-- Model file:pre_hook_and_post_hook_test.sql
--

{{ config( materialized = 'view',
           pre_hook  = [ "INSERT INTO SCRATCH.WORKSPACE.AUDIT VALUES ('test_dbt_project_configurations',current_timestamp(), NULL)"] ,
           post_hook = [ "UPDATE  SCRATCH.WORKSPACE.AUDIT SET finish_time = current_timestamp() WHERE start_time is NULL " ]
         )
 }}
--
with cte as 
(
SELECT current_date()
),
 final  as
(
SELECT *
FROM cte)
--
SELECT *
FROM final 
--
--
--
