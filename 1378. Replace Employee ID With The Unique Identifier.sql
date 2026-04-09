select uid.unique_id, e.name from Employees e left join EmployeeUNI uid on e.id = uid.id
