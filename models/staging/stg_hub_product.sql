{{
    config(
        materialized='table'
    )
}}


select  hash(productid) HK_prod_id,productid prod_id,'2024-05-30 12:01:00' load_dt,'dbt' src_rec
from 
{{ source('globalmart','product')}}