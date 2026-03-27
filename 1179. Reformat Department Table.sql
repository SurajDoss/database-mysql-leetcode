select id, 
SUM(IF(month = 'jan', revenue, NULL) ) as Jan_Revenue,
SUM(IF(month = 'feb', revenue, NULL) )as Feb_Revenue,
SUM(IF(month = 'mar', revenue, NULL) ) as Mar_Revenue,
SUM(IF(month = 'apr', revenue, NULL) ) as Apr_Revenue,
SUM(IF(month = 'may', revenue, NULL) ) as May_Revenue,
SUM(IF(month = 'jun', revenue, NULL) ) as Jun_Revenue,
SUM(IF(month = 'jul', revenue, NULL) ) as Jul_Revenue,
SUM(IF(month = 'aug', revenue, NULL) ) as Aug_Revenue,
SUM(IF(month = 'sep', revenue, NULL) ) as Sep_Revenue,
SUM(IF(month = 'oct', revenue, NULL) ) as Oct_Revenue,
SUM(IF(month = 'nov', revenue, NULL) ) as Nov_Revenue,
SUM(IF(month = 'dec', revenue, NULL) ) as Dec_Revenue
from Department group by id
