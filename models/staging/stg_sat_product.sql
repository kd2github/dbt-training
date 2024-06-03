{{
    config(
        materialized='table'
    )
}}



select HK_prod_id ,prod_id,'2024-05-30 12:01:00' load_dt,PRODUCTNAME,CATEGORY,
    SUBCATEGORY,'dbt' src_rec
from 
{{ source('globalmart','product')}} a
 join {{ ref('stg_hub_product') }} as c
 --join ANALYTICS.dbt_kdalvi.STG_HUB_CUSTOMER as c
 on a.PRODUCTID=c.prod_id 