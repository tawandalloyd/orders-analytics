with dim_names_cleansed as (
    select * from {{ref("src_name")}}
)
select
    restaurant_id,
    restaurant_name, 
    average_rating , 
    ratings_count , 
    restaurant_category
from
    dim_names_cleansed
where
    ratings_count is not null and restaurant_category is not null
