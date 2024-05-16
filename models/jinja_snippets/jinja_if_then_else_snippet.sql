{{ config (materialized = 'view') }}

--
-- Model file:jinja_if_then_else_snippet.sql
--

{% for i in range(10)    %}

  {% if i == 0  %}
    {% set i = 1 %}

  {% elif  i == 1  %}
    {% set i  = 2 %}
 
  {% else %}
    {% set i = 100  %}

  {% endif %}

  select {{i}} as number
  {% if not loop.last %}
      union all
  {% endif %}
{% endfor %}

