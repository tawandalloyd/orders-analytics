with rn as (
    select * from {{ ref("dim_restaurant_name") }}
),
ra as (
    select * from {{ ref("dim_restaurant_address")}}
)
select 
rn.restaurant_id,
rn.restaurant_name,
rn.average_rating as restaurantRating, 
ra.zipcode
from
rn
inner join 
ra     
on (rn.restaurant_id = ra.restaurant_id)