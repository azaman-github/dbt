{{  config ( materialized = "view", schema = "workspace" ) }}

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