# Write your MySQL query statement below
SELECT
    id
FROM (
SELECT
    id,
    recordDate,
    LAG(recordDate, 1) OVER (order by recordDate asc) as yesterday_date,
    temperature,
    LAG(temperature, 1) OVER (order by recordDate asc) as yesterday_temperature
FROM Weather
) x
WHERE yesterday_temperature < temperature and
      datediff(recordDate, yesterday_date) = 1