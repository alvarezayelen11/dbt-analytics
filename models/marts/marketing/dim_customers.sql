with customers as (

    select * from {{ ref('stg_jaffle_shop__customers') }}

),

orders as (

    select * from {{ ref('stg_jaffle_shop__orders') }}

),

customer_orders as (

    select
        customer_id,
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders
    from orders
    group by 1

),

payments as (

    select * from {{ ref('stg_stripe__payments') }}

),

customer_lifetime as (

    select
        o.customer_id,
        sum(p.amount) as lifetime_value
    from payments p
    join orders o on p.order_id = o.order_id
    group by 1

),

final as (

    select
        c.customer_id,
        c.first_name,
        c.last_name,
        co.first_order_date,
        co.most_recent_order_date,
        coalesce(co.number_of_orders, 0) as number_of_orders,
        coalesce(cl.lifetime_value, 0) as lifetime_value
    from customers c
    left join customer_orders co using (customer_id)
    left join customer_lifetime cl using (customer_id)

)

select * from final