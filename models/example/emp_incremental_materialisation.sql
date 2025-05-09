--
-- Model file:emp_incremental_materialisation.sql
--
{{ config ( materialized = "incremental" ) }}
--
--
WITH emp_cte as 
(
SELECT empno, fname, lname
FROM scratch.workspace.emp
)
--
SELECT  empno, fname, lname 
FROM emp_cte

