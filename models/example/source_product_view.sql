{{ config ( materialized = "view" ) }}

with source_cte 
as
(
SELECT pid,pdesc 
from {{ source ('products', 'product') }}   
),
final as
(
SELECT *
FROM  source_cte
)
SELECT *
FROM final

