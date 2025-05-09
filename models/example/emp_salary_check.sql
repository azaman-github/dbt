
{{ config (materialised = "view")    }}

with   emp_salary_check  as
(
SELECT   *
FROM scratch.workspace.emp
)
, final as
(
SELECT *
FROM emp_salary_check
)
SELECT *
FROM final

