with payments as (

    select
        id as payment_id,
        orderid as order_id,
        created,
        status,
        amount,
        _batched_at
        
    from {{ source('stripe', 'payment') }}
)

select * from payments