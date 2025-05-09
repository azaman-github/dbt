--
-- with the append strategy, source records must be identified in the select statement
--
-- Model file:emp_incremental_append_with_stream_materialisation.sql
--
{{ config ( materialized = "incremental", incremental_strategy = "append" ) }}
--
--
WITH emp_cte as 
(
SELECT empno, fname, lname, created_dt
FROM scratch.workspace.emp_stream
)
--
SELECT  empno, fname, lname , created_dt
FROM emp_cte

