{{
    config(
        materialized="table"
    )
}}

with orders as (
    select 
       id as "ID",
       note as "Note",
       email as "Email",
       currency,
       shipping_address_name
    from shopify_schema.order   
)

select * from orders