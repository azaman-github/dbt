
{{ config ( materialized = "view") }}

--
-- macro return upper(fname) and lower(lname)
--
SELECT empno, {{ local_utils.to_uppercase('fname' ) }} fname , 
              {{ local_utils.to_lowercase('lname' ) }} lname 
FROM scratch.workspace.emp

