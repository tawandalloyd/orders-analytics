with src_name as (

    select * from {{source('products', 'name')}}
)
select
    ID as restaurant_id,
    NAME as restaurant_name,
    SCORE as average_rating,
    RATINGS as ratings_count,
    Category AS restaurant_category
from
src_name