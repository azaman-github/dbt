--
-- with the append strategy, source records must be identified in the select statement
--
-- Model file:emp_incremental_materialisation_with_merge_strategy_updating_specific_columns.sql
--
{{ config ( materialized = "incremental", incremental_strategy = "merge", unique_key = "empno", merge_update_columns=['job','sal'] ) }}
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

