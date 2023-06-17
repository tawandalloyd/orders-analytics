{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}
with fa as (
    select * from {{ ref('fct_orders_cleansed')}}
),
ra as (
    select * from {{ref('dim_restaurants_address')}}
)
select
    fa.restaurant_id, 
    fa.order_category, 
    fa.order_name,
    fa.order_description,
    fa.order_price, 
    ra.restaurantcategory as restaurantCategory 
    from 
    fct_orders_cleansed fa inner join dim_restaurants_address ra
    on (fa.restaurant_id = ra.restaurant_id)