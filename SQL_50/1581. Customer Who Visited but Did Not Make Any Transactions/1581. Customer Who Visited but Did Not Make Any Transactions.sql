# Write your MySQL query statement below
SELECT
    a.customer_id,
    count(distinct a.visit_id) as count_no_trans
FROM Visits a
LEFT JOIN Transactions b on a.visit_id = b.visit_id
WHERE b.transaction_id is null
GROUP BY a.customer_id