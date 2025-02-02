# Write your MySQL query statement below
SELECT
    a.project_id,
    ROUND(AVG(b.experience_years), 2) as average_years
FROM Project a
INNER JOIN Employee b on a.employee_id = b.employee_id
GROUP BY a.project_id