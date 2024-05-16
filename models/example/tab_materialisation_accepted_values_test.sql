--
-- Model file:tab_materialisation_accepted_values_test.sql
--
{{ config ( materialized = "table" ) }}

with source_cte 
as
(
SELECT  *
FROM  scratch.workspace.accepted_values_test 
)
--
SELECT *
FROM source_cte

