
{% snapshot dim_customers_snapshot %}
    {{
        config(
            unique_key='unique_id',
            strategy='check',
            check_cols='all',
            invalidate_hard_deletes=True
        )
    }}

    select * from {{ref('dim_customers')}}

{% endsnapshot %}