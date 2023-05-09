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

select o.USER_ID,
o.ORDER_DATE,
o.STATUS,
c.FIRST_NAME,
c.LAST_NAME,
p.paymentmethod as PAYMENT_METHOD,
p.status as PAYMENT_STATUS,
p.amount as AMOUNT

from orders o
join customers c on c.ID = o.USER_ID
join payments p on p.orderid = o.ID