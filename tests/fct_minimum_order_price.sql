select usd_price from {{ref('fct_orders')}}
    where usd_price < 0.00