{{
    config(
        materialized='table'
    )
}}

select * 
--from RAW.GLOBALMART.product
from {{ source('globalmart', 'product') }}
