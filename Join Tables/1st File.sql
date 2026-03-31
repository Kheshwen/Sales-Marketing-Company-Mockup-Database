-- FILE 1: 2-Table Join — Employee & Client
-- Displays ONE non-primary attribute from each table
-- 2 constraints from different tables using AND
-- Expected: 6 rows

SELECT 
    e.salary,
    c.allocated_budget
FROM Employee e
JOIN Client c ON e.employee_id = c.employee_id
WHERE e.emp_status = 'Active'
AND c.client_tier = 'Gold';
