{% snapshot scd_raw_listings %}
    {{
        config(
            target_schema='dev',
            unique_key='restaurant_id',
            strategy='check',
            check_cols=['usd_price'],
            invalidate_hard_deletes=True
        )
    }}
    select * FROM {{ ref('fct_orders') }}
{% endsnapshot %}