--
-- Model file:tab_materialisation_not_null_test.sql
--
{{ config ( materialized = "table" ) }}

with source_cte 
as
(
SELECT  *
FROM  scratch.workspace.not_null_test 
)
--
SELECT *
FROM source_cte

