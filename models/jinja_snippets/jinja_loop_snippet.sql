{{ config (materialized = 'view') }}

--
-- Model file:jinja_loop_snippet.sql
--

{% for i in range(10)    %}
  select {{i}} as number
  {% if not loop.last %}
      union all
  {% endif %}
{% endfor %}

