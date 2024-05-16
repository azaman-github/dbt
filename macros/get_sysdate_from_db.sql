
{# run_query() is a built-in macro that executes SQL  #}

{% macro get_sysdate_from_db() %}

{% set result = run_query('select current_date()') %}

{%  do result.print_table()  %}

{% set current_date = result.columns[0].values()  %}

 {{ return (current_date) }}   


{% endmacro %}

