{{ config(materialized='view') }}

select *,case when churn = false then 0
else 1
end as num_churn
from {{ ref('intg_raw_data') }}