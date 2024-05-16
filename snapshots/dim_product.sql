--
-- with the append strategy, source records must be identified in the select statement
--
-- Model file:dim_product.sql
--
{% snapshot dim_product %}
    {{ config( target_database = 'scratch',
               target_schema="workspace" ,
               unique_key='pid', 
               strategy='timestamp',
               updated_at='updated_at'
              )
     }}

select * from product_stream

{% endsnapshot %}

