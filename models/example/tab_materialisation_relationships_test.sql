--
-- Model file:tab_materialisation_relationships_test.sql
--
{{ config ( materialisation = "table" ) }}

with source_cte 
as
(
SELECT  *
FROM  scratch.workspace.emp
)
--
SELECT *
FROM source_cte

