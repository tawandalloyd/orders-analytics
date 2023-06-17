with src_order as (

    select * from {{ source('products', 'orders')}}
)
select
    RESTAURANT_ID as restaurant_id,
    CATEGORY as order_category,
    NAME as ORDER_NAME,
    description as order_description,
    price AS order_price
from
src_order