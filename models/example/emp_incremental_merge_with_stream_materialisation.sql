--
-- with the append strategy, source records must be identified in the select statement
--
-- Model file:emp_incremental_merge_with_stream_materialisation.sql
--
{{ config ( materialized = "incremental", incremental_strategy = "merge", unique_key = "empno" ) }}
--
--
WITH emp_cte as 
(
SELECT empno, fname, lname, job,sal,created_dt
FROM scratch.workspace.emp_stream
)
--
SELECT  empno, fname, lname , job,sal, created_dt
FROM emp_cte

