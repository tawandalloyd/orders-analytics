{{
    config(
        materialized = 'view',
        on_schema_change = 'fail'
    )
}}
with fct_orders_cleansed as (
    select * from {{ ref("src_orders")}}
)
    select 
    restaurant_id,
    order_category,
    order_name,
    order_description,
      CASE 
            WHEN  usd_price = 0.00 THEN 0.10
            ELSE usd_price
        END AS usd_price
    from
    fct_orders_cleansed
    where 
    usd_price is not null and order_description is not null