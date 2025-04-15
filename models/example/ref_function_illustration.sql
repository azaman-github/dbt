--
-- Model file:ref_function_illustration.sql
--
{{ config ( materialized = "view" ) }}

with ref_cte 
as
(
SELECT  *
from {{ ref ('emp_table_materialisation') }}   
),
final as
(
SELECT *
FROM  ref_cte
)
SELECT *
FROM final

