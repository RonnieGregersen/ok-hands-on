{{ config(materialized='view') }}

with source_data as (

    select *
    from {{ source('stripe', 'payment') }}
)
select * from source_data