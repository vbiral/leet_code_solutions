# Write your MySQL query statement below
SELECT
    a.product_name,
    b.year,
    b.price
from Product a
inner join Sales b on a.product_id = b.product_id