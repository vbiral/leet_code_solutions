# Write your MySQL query statement below
SELECT
    s.user_id,
    ROUND(IFNULL((SUM(CASE WHEN action = "confirmed" then 1 else 0 end)/NULLIF(count(s.user_id),0)),0),2) as confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c on s.user_id = c.user_id
GROUP BY s.user_id