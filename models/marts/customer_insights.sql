{{config(materialized='table')}}

with customers as (
    select * from {{ref("stg_customers")}}
),

orders as (
    select * from {{ref("stg_orders")}}
),
payments as (
    select * from {{ref("stg_payments")}}
)

select o.*, c.*, p.* from orders o
join customers c on c.ID = o.USER_ID
join payments p on p.orderid = o.ID