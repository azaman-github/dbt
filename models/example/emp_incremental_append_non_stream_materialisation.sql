--
-- with the append strategy, source records must be identified in the select statement
--
-- Model file:emp_incremental_append_non_stream_materialisation.sql
--
{{ config ( materialized = "incremental", incremental_strategy = "append" ) }}
--
--
WITH emp_cte as 
(
SELECT empno, fname, lname, created_dt
FROM scratch.workspace.emp
)
--
SELECT  empno, fname, lname , created_dt
FROM emp_cte
{% if is_incremental() %}
    where created_dt  = current_date() 
{% endif %}

