{{
    config(
        materialized='incremental',
        unique_key='id'
    )
}}

select * 
from RAW.GLOBALMART.employee_details


{% if is_incremental() %}

  
  where RECEIVED_AT >= (select max(RECEIVED_AT) from {{ this }})

{% endif %}