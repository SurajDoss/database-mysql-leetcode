SELECT start.machine_id, ROUND( AVG( end.timestamp - start.timestamp ), 3) as processing_time
FROM activity start
JOIN activity end ON start.machine_id = end.machine_id AND start.process_id = end.process_id
WHERE start.activity_type = 'start' AND end.activity_type = 'end'
GROUP BY machine_id
