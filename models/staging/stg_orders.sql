select * , ordersellingprice - ordercostprice as orderprofit
from from {{ ref('raw_order') }}