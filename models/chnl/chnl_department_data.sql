{{ config(materialized="view") }}
select
    emp.*,
    {{ combine_names('first_name', 'last_name') }} as full_name,
    dep.* exclude(department_id)
from {{ ref("intg_raw_employees") }} emp
left join {{ ref("intg_raw_departments") }} dep on emp.department_id = dep.department_id