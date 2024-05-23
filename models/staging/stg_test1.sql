select
--from raw_orders
orderid,
orderdate,
shipdate,
shipmode,
o.customerid,
o.productid,
ordersellingprice,
ordercostprice,
ordersellingprice - ordercostprice as orderprofit
from {{ ref('raw_orders') }} as o