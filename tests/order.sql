select 
    id,
    sum(total_price) as total
from shopify_schema.order
group by 1
having not(total > 0 )
