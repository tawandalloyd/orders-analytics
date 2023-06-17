{{
    config(
        materialized = 'incremental',
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
    order_price
    from
    fct_orders_cleansed
    where 
    order_price is not null and order_description is not null