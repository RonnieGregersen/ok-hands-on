{{ config(materialized='view') }}

with source_data as (

    select *
    from {{ source('jaffle_shop', 'customers') }}
)
select * from source_data