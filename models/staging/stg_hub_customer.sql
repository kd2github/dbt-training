{{
    config(
        materialized='table'
    )
}}


select  hash(customerid) HK_cust_id,customerid cust_id,'2024-05-30 12:01:00' load_dt,'dbt' src_rec
from 
{{ source('globalmart','customers')}}