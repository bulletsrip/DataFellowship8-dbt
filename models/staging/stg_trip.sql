{{ config(materialized='view') }}

select
    {{ dbt_utils.surrogate_key(['vendorid', 'tpep_pickup_datetime']) }} as tripid,
    *
from {{ source('staginglayer','yellowtrip_data') }}