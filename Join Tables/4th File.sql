-- FILE 4: 8-Table Join — 1 attribute from each of 8 tables
-- 5 constraints from different tables using AND
-- Results in descending order
-- Expected: 4 rows

-- This query is to find the base salary, client name, management position, 
-- sales region, goal achievement, impression count, meeting subject, 
-- and transaction status of employees in the 'Management' department, 
-- where the client priority tier is 'Gold', execution status is 'Complete', 
-- top performing channel is 'Instagram', and meeting type is 'Strategy', ordered by salary in descending order. 
-- It is to audit the full campaign trail across all key system entities

SELECT 
    e.salary,
    c.client_name,
    m.management_role,
    sm.region,
    pcr.goal_status,
    ce.total_reach,
    mt.meeting_title,
    fr.posting_status
FROM Employee e
JOIN Client c ON e.employee_id = c.employee_id
JOIN Management m ON e.employee_id = m.employee_id
JOIN SalesMarketing sm ON e.employee_id = sm.employee_id
JOIN PostCampaignReport pcr ON m.management_id = pcr.management_id
JOIN CampaignExecution ce ON pcr.execution_id = ce.execution_id
JOIN Meeting mt ON e.employee_id = mt.employee_id
JOIN FinancialRecord fr ON fr.finance_id = (
    SELECT f.finance_id FROM Finance f WHERE f.employee_id = e.employee_id
)
WHERE e.department = 'Management'
AND c.client_tier = 'Gold'
AND ce.execution_status = 'Complete'
AND pcr.platform_used = 'Instagram'
AND mt.meeting_type = 'Strategy'
ORDER BY e.salary DESC;
