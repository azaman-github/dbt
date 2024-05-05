{{  config ( materialized = "view" ) }}

with  cte  as
(
     select  *
     from scratch.workspace.emp
),
final as (
    select *
    from cte
)
select *
from final