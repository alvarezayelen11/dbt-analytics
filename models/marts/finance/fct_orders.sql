with orders as (
    select * from {{ ref('stg_jaffle_shop__orders') }}
),

payments as (
    select * from {{ ref('stg_stripe__payments') }}
),

final as (
    select
        o.order_id,
        o.customer_id,
        coalesce(p.amount, 0) as amount
    from orders o
    left join payments p using (order_id)
)

select * from final