SELECT e_mentee.employee_id 
FROM employees e_mentee 
LEFT JOIN employees e_mentor
    ON e_mentee.manager_id = e_mentor.employee_id
WHERE e_mentee.salary < 30000 
    AND e_mentor.employee_id IS NULL 
    AND e_mentee.manager_id IS NOT NULL 
ORDER BY e_mentee.employee_id
