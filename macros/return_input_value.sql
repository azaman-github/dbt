{# This macro simple returns the value that is given as parameter #}

{% macro return_input_value(i_param) %}
  
{% set returned_string =  "You've supplied the string->" +  i_param   %} 

        {{ print  (returned_string) }}
        {{ return (returned_string) }}

{% endmacro %}

