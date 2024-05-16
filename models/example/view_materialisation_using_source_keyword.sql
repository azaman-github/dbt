--
-- Model file:view_materialisation_using_source_keyword.sql
--
{{ config ( materialisation = "view" ) }}

with source_cte 
as
(
SELECT  *
FROM {{ source ( 'products', 'product')   }}
)
--
SELECT*
from source_cte


