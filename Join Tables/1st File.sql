-- FILE 1: 2-Table Join — Employee & Client
-- Displays ONE non-primary attribute from each table
-- 2 constraints from different tables using AND
-- Expected: 6 rows

-- Scenario: This query is to find the salary of each active employee and 
-- the budget allocated to their assigned client, where the employee status is 'Active' and the client tier is 'Gold'. 
-- It helps management identify high-value client relationships handled by currently active staff.

SELECT 
    e.salary,
    c.allocated_budget
FROM Employee e
JOIN Client c ON e.employee_id = c.employee_id
WHERE e.emp_status = 'Active'
AND c.client_tier = 'Gold';
