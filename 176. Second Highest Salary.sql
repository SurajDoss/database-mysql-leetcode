SELECT MAX(salary) AS SecondHighestSalary
FROM employee
Where salary NOT IN (SELECT MAX(Salary) FROM employee)
