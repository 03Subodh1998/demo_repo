{{ config(materialized='view', tags=["30min"]) }}

select *
from {{ source('raw', 'DEPARTMENTS') }}