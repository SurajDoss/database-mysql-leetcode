select q.query_name, 
ROUND(SUM(q.rating / q.position) / COUNT(*), 2) as quality,
ROUND((AVG( CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100 ), 2) as poor_query_percentage 
from Queries q group by q.query_name
