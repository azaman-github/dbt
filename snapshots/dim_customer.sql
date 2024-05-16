--
-- Model file:dim_customer.sql
--
{% snapshot dim_customer %} 

  {{ config( target_database = 'scratch',
             target_schema   = "workspace" ,
             unique_key      = 'cid',
             strategy        = 'check',
             check_cols=['adr1', 'adr2','adr3','postcode'],
             updated_at='updated_at'
           )
   }}
--
-- select from product_stream to identify delta records
--
with cust_stream_cte as
(
SELECT *
FROM customer_stream
),
--
final as
(
SELECT *
FROM cust_stream_cte
)
--
SELECT *
FROM final
--
{% endsnapshot %}

