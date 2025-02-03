# Write your MySQL query statement below
SELECT
    r.contest_id,
    ROUND((1.0*count(r.user_id)/u.distinct_users)*100.0, 2) as percentage
FROM Register r
LEFT JOIN (SELECT COUNT(DISTINCT u.user_id) as distinct_users FROM Users u) u on 1=1
GROUP BY r.contest_id
ORDER BY 2 desc, 1 asc