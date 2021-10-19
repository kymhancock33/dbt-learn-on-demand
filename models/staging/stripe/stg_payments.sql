with payments as (

    select 
        id as payment_id,
        orderid as order_id,
        created,
        status,
        amount,
        paymentmethod as payment_method,
        _batched_at
        
    from {{ source('stripe', 'payment') }}
)

select * from payments