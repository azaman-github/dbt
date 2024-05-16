
{{ config ( materialized = "view") }}

with use_ephemeral_model as
(
SELECT * 
FROM {{  ref ( 'sales_agg_ephemeral')  }}
WHERE month = '01-2024'
),
final as
(
SELECT *
FROM use_ephemeral_model
)
--
SELECT *
FROM final
--
