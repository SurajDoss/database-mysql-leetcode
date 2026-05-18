select employee_id, department_id from Employee where primary_flag = 'N' and employee_id not in ( select employee_id from Employee where primary_flag = 'Y' )
UNION
select employee_id, department_id from Employee where primary_flag = 'Y'
