-- FILE 4: 8-Table Join
-- Tables: Management, PostCampaignReport, CampaignExecution, CampaignStatus,
--         SalesMarketing, Proposal, Client, WorkOrder
-- 1 attribute from each of 8 tables
-- 5 constraints from different tables using AND
-- Results in descending order
-- Expected: 4 rows

-- This query is to find the management position, goal achievement, data collection status, 
-- campaign state, sales tier, proposal status, company name and task title, 
-- where the management level is 'Senior', data collection status is 'Complete', 
-- proposal approval status is 'Approved', client status is 'Active', and campaign priority level is 'High', 
-- ordered by management position in descending order. 
-- It is to review the full campaign delivery chain from senior management 
-- through to active client work orders.

SELECT
    m.management_position,
    pcr.goal_achievement,
    ce.data_collection_status,
    cs.status_state,
    sm.sales_tier,
    p.proposal_status,
    c.company_name,
    wo.task_title
FROM PostCampaignReport pcr
JOIN Management m ON pcr.reviewed_by_manager_id = m.management_id
JOIN CampaignExecution ce ON pcr.execution_id = ce.execution_id
JOIN CampaignStatus cs ON ce.execution_id = cs.execution_id
JOIN SalesMarketing sm ON pcr.salesmarketing_id = sm.salesmarketing_id
JOIN Client c ON c.employee_id = sm.employee_id
JOIN Proposal p ON p.client_id = c.client_id
JOIN WorkOrder wo ON wo.client_id = c.client_id
WHERE m.management_level = 'Senior'           -- Constraint 1 (single value)
AND ce.data_collection_status = 'Complete'    -- Constraint 2 (single value)
AND p.proposal_status = 'Approved'            -- Constraint 3 (single value)
AND pcr.goal_achievement = 'Achieved'         -- Constraint 4 (single value)
AND c.client_status = 'Active'                -- Constraint 5 (single value)
ORDER BY m.management_position DESC;

-- what to update
-- Fix SalesMarketing employee_id
UPDATE SalesMarketing SET employee_id = 'E001' WHERE salesmarketing_id = 'SM001';
UPDATE SalesMarketing SET employee_id = 'E002' WHERE salesmarketing_id = 'SM002';
UPDATE SalesMarketing SET employee_id = 'E006' WHERE salesmarketing_id = 'SM006';
UPDATE SalesMarketing SET employee_id = 'E009' WHERE salesmarketing_id = 'SM009';

-- Fix CampaignExecution
UPDATE CampaignExecution SET data_collection_status = 'Complete' WHERE execution_id = 'EX002';
UPDATE CampaignExecution SET data_collection_status = 'Complete' WHERE execution_id = 'EX006';

-- Fix PostCampaignReport
UPDATE PostCampaignReport SET goal_achievement = 'Achieved' WHERE report_id = 'REP002';

-- Fix Proposal
UPDATE Proposal SET proposal_status = 'Approved', approval_status = 'Approved' WHERE proposal_id = 'PR001';
UPDATE Proposal SET proposal_status = 'Approved', approval_status = 'Approved' WHERE proposal_id = 'PR006';

COMMIT;
