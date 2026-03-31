-- FILE 1: 2-Table Join — Employee & Client
-- Displays ONE non-primary attribute from each table
-- 2 constraints from different tables using AND
-- Expected: 6 rows

-- This query is to find the base salary of each active employee and the annual contract value of their assigned client, 
-- where the employee employment status is 'Active' and the employee years of experience is more than 2 years. 
-- It helps the management team identify which experienced and currently active employees are handling client accounts, 
-- and evaluate whether higher-salaried employees are managing higher-value contracts for better resource planning 
-- and performance review purposes.

SELECT 
    e.base_salary,
    c.annual_contract_value
FROM Employee e
JOIN Client c ON e.employee_id = c.employee_id
WHERE e.employementStatus = 'Active'
AND e.years_of_experience > 2;         
