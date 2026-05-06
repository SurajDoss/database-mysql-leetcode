SELECT b.employee_id,
b.name,
count(*) AS reports_count,
ROUND((SUM(a.age)) / count(*) ) AS average_age
FROM
employees a
INNER JOIN 
employees b
ON a.reports_to = b.employee_id
GROUP BY a.reports_to
ORDER BY b.employee_id
