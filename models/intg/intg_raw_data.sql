{{ config(materialized='view') }}

select *
from {{ source('raw', 'DEMO_RAW_DATA') }}