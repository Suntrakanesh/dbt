{{
    config(
        materialized: 'ephemeral'
    )
}}
select * from shopify_schema.customer
