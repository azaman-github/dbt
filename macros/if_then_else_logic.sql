{# This macro demonstrates if-then-else logic #}

{% macro if_then_else_logic(i_age) %}
  
{#  automatic conversion from string to integer  #}

{% set age_num =  i_age    %} 

 {% if age_num  == 18  %}
    {% set retval = "Allowd to enter disco"  %}

 {% elif age_num  < 18  %}
    {% set retval = "Under age for disco"  %}

 {% elif age_num  > 18    %}
    {% set retval = "Overage for disco"  %}
  {% endif %}

   {{ print  (retval) }}
   {{ return (retval) }}

{% endmacro %}

