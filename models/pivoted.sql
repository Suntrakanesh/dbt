{%- set country = ['United States','Australia','Norway','Pakistan'] -%}
with address as (
    select 
        id,
       {% for coun in country -%}
       sum(case when billing_address_country = '{{coun}}' then total_price else 0 end) as {{coun}}_amount
       {%- if not loop.last -%}
       ,
       {% endif %}
       {%- endfor %}
       from {{ ref('order') }}
       group by 1
)
select * from address