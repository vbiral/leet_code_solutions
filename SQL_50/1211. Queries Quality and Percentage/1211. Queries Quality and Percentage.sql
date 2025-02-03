# Write your MySQL query statement below
SELECT
    query_name,
    ROUND(AVG(1.0*rating/position),2) as quality,
    ROUND((100.0*SUM(CASE WHEN rating < 3 then 1 else 0 end)/COUNT(1)),2) as poor_query_percentage
FROM Queries
GROUP BY query_name