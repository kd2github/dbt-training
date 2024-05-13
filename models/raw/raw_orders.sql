{{
    config(
        materialized='table'
    )
}}

select * 
--from RAW.GLOBALMART.ORDERS
from  {{ source('globalmart', 'orders') }}