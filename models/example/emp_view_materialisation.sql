--
-- Model file:emp_view_materialisation.sql
--
{{ config ( materialized = "view" ) }}
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

