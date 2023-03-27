--  1A) dim_customers SQL

select 
    store_id || "-" || cast(id as string) as unique_id
    , id
    , store_id
    , name
    , email
    , pk
from {{ source('apjuice', 'users') }}  