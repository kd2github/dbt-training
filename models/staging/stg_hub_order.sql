{{
    config(
        materialized='table'
    )
}}


select  hash(orderid) HK_order_id,orderid orderid,'2024-05-30 12:01:00' load_dt,'dbt' src_rec
from 
{{ source('globalmart','orders')}}