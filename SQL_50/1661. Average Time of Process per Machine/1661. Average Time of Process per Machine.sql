# Write your MySQL query statement below
SELECT
    machine_id,
    ROUND(avg(processing_time), 3) as processing_time
FROM (
    SELECT
        machine_id,
        process_id,
        max(timestamp) - min(timestamp) as processing_time
    FROM Activity
    GROUP BY machine_id, process_id
) x
group by machine_id