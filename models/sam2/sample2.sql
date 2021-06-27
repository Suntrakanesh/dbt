with customerstt as (
select 
  accepts_marketing_updated_at as date,
  can_delete as deleteee,
  created_at
from shopify_schema.customer   
)

select * from customerstt