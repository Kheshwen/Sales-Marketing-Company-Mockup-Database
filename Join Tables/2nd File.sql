-- FILE 3: 4-Table Join — Active Employees, Priority Clients & Campaign Performance
-- Displays ONE aggregated metric and ONE descriptive attribute
-- Multiple constraints from different tables using AND
-- Expected: One row per active employee department

-- This query is to calculate the total number of Version 1 campaigns handled
-- by active employees, grouped by their department.
-- It filters only high-priority clients (Gold and Silver),
-- ensures employees are currently active,
-- includes only campaigns tagged as 'V1',
-- and restricts results to employees who manage a minimum annual budget
-- allocation of 200,000 or more.
-- The result helps management analyze campaign workload distribution
-- across departments with significant budget responsibility.

SELECT
    e.department,
    COUNT(c.campaign_id) AS total_campaigns
FROM Employee e
JOIN Client cl
    ON e.employee_id = cl.employee_id
JOIN Campaign c
    ON cl.client_id = c.client_id
JOIN Management m
    ON e.employee_id = m.employee_id
WHERE e.employementStatus = 'Active'
  AND cl.client_priority_tier IN ('Gold', 'Silver')
  AND c.version_tag = 'V1'
  AND m.annual_budget_allocation >= 200000
GROUP BY
    e.employee_id,
    e.department;
``
