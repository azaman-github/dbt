
{% macro parse_timestamp(parse_for_what) %}
    {% if parse_for_what == 'date' %}
        {{ print ('24/04/2024') }}
        {{ return ('24/04/2024') }}
    {% endif %}

{% endmacro %}



