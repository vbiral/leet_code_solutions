# Write your MySQL query statement below
SELECT
    a.name,
    b.bonus
FROM Employee as a
LEFT JOIN Bonus as b on a.empId = b.empId
WHERE b.bonus < 1000 OR
      b.bonus is null