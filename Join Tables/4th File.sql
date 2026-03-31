-- FILE 4: 8-Table Join
-- Tables: Management, PostCampaignReport, CampaignExecution, CampaignStatus,
--         SalesMarketing, Proposal, Client, WorkOrder
-- 1 attribute from each of 8 tables
-- 5 constraints from different tables using AND
-- Results in descending order
-- Expected: 4 rows

-- This query is to find the management position, goal achievement, 
-- data collection status, campaign state, sales tier, proposal status, 
-- company name and task title, where the management level is 'Senior', 
-- goal achievement is 'Achieved', execution data collection status is 'Complete', 
-- proposal status is 'Approved', and client status is 'Active', 
-- ordered by management position in descending order.
-- It is to review the full campaign delivery chain from management down to client work orders.

SELECT
    m.management_position,
    pcr.goal_achievement,
    ce.data_collection_status,
    cs.status_state,
    sm.sales_tier,
    p.proposal_status,
    c.company_name,
    wo.task_title
FROM Management m
JOIN PostCampaignReport pcr ON m.management_id = pcr.reviewed_by_manager_id
JOIN CampaignExecution ce ON pcr.execution_id = ce.execution_id
JOIN CampaignStatus cs ON cs.execution_id = ce.execution_id
JOIN SalesMarketing sm ON pcr.salesmarketing_id = sm.salesmarketing_id
JOIN Proposal p ON sm.salesmarketing_id = p.salesmarketing_id
JOIN Client c ON p.client_id = c.client_id
JOIN WorkOrder wo ON c.client_id = wo.client_id
WHERE m.management_level = 'Senior'
AND pcr.goal_achievement = 'Achieved'
AND ce.data_collection_status = 'Complete'
AND p.proposal_status = 'Approved'
AND c.client_status = 'Active'
ORDER BY m.management_position DESC;
