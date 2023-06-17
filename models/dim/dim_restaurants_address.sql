with ra as (

    select * from {{ ref("dim_restaurant_address")}}
),
rn as (
    select * from {{ref("dim_restaurant_name")}}
)
select
    ra.restaurant_address, 
    ra.zipcode, 
    ra.latitude,
    ra.langitude,
    ra.restaurant_id, 
    rn.restaurant_category as restaurantCategory
from
    ra 
    inner join 
    rn     
    on (ra.restaurant_id = rn.restaurant_id)