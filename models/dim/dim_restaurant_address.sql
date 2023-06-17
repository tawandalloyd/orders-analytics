with dim_address_cleansed as (
    select * from {{ ref("src_address")}}
)
    select 
    restaurant_address,
    zipcode,
    latitude,
    langitude,
    restaurant_id
    from
    dim_address_cleansed
    where 
    restaurant_address is not  null and zipcode is not null