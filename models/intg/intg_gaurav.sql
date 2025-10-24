{{ config(materialized='view', tags= '30min') }}

select *
from {{ source('raw', 'DEMO_RAW_DATA') }}