
{{ config (materialized = 'view') }}

--
-- Model file:jinja_list_snippet.sql
--

{% set names=('Arif', 'Zara','Zaim','Kamrun')    %}
{% set numb1=('1','2','3','4')    %}
{% set numb2=(66,31,29)    %}

SELECT '{{ names[0] }} is {{ numb2[0]  }} years old'  as name
UNION ALL
SELECT '{{ names[1] }} is {{ numb2[1]  }} years old'  as name
UNION ALL
SELECT '{{ names[2] }} is {{ numb2[2]  }} years old'  as name
