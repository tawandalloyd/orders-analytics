with src_address as (

    select * from products.raw.raw_address
)
select
    FULL_ADDRESS as restaurant_address,
    ZIP_CODE as zipcode,
    lat as latitude,
    lng as langitude,
    GENERATE_IDS AS restaurant_id
from
src_address