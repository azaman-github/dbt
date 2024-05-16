--
-- Model file:emp_table_materialisation.sql
--
{{ config ( materialized = "table" ) }}
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

