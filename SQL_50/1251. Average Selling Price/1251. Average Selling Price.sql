# Write your MySQL query statement below
SELECT
    a.product_id,
    IFNULL(ROUND(SUM(a.price*b.units)/SUM(b.units),2), 0) as average_price
FROM Prices a
LEFT JOIN UnitsSold b on a.product_id = b.product_id and
                         b.purchase_date between a.start_date and a.end_date
GROUP BY a.product_id