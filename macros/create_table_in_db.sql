
{# run_query() is a built-in macro that executes SQL  #}

{% macro create_table_in_db() %}

{% set result = run_query('create or replace table scratch.workspace.test_macro (id number)') %}

{%  do result.print_table()  %}


{% endmacro %}


