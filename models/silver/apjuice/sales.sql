
with records as (
    select
        saleID as id,
        from_unixtime(ts) as ts,
        Location as store_id,
        customerid as customer_id,
        location || "-" || cast(customerid as string) as unique_customer_id,
        OrderSource as order_source,
        STATE as order_state,
        SaleItems as sale_items
    from
        {{ source('apjuice', 'sales2021') }}
)

select
    *
from
records