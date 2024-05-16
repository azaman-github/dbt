
{{ config ( materialized = "ephemeral") }}

with  sales_agg_cte as
(
select
    to_varchar(order_date,'MM-YYYY') as month,
    sum(sales_amt) as total_sales
from scratch.workspace.sales 
group by 1
),
final  as
(
SELECT *
FROM sales_agg_cte
)
SELECT *
FROM final
--

