--
-- Model file:view_materialisation_new_macro.sql
-- Macro file:parse_timestamp.sql
--
{{ config ( materialized = "view" ) }}

with source_cte as
(
{% set day = parse_timestamp('date')  %} 
SELECT  '{{  day }}'  as sysdate
),
final  as 
(
SELECT *
FROM source_cte
)
SELECT *
FROM final


