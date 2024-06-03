{{
    config(
        materialized='table'
    )
}}


select HK_cust_id ,customerid cust_id,'2024-05-30 12:01:00' load_dt,CustomerName,Segment,
    state	, Country,'dbt' src_rec
from 
{{ source('globalmart','customers')}} a
 join {{ ref('stg_hub_customer') }} as c
 --join ANALYTICS.dbt_kdalvi.STG_HUB_CUSTOMER as c
 on a.customerid=c.cust_id 
