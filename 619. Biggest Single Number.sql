select MAX(num) as num from ( select * from MyNumbers group by num having count(*) = 1 ) mynumb
