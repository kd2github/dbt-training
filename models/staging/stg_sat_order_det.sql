{{
    config(
        materialized='table'
    )
}}




select c.HK_order_id ,a.orderid orderid,'2024-05-30 12:01:00' load_dt,OrderDate,ShipDate,ShipMode	,'dbt' src_rec
from 
{{ source('globalmart','orders')}} a
 join {{ ref('stg_hub_order') }} as c
 --join ANALYTICS.dbt_kdalvi.STG_HUB_CUSTOMER as c
 on a.orderid=c.orderid 
