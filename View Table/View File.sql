-- FILE 5: CREATE VIEW — 3-Table Join
-- Tables: CampaignStatus, CampaignExecution, Campaign
-- 3 PRIMARY KEY attributes from 3 tables
-- 2 concatenated non-PK attributes from 2 tables
-- 1 constraint with single value
-- Expected: 7 rows

-- Scenario: This view is created to display the primary keys of the campaign status, 
-- campaign execution and campaign, alongside a concatenated status summary of state 
-- and priority level at time, and a concatenated execution summary of current execution 
-- status and data collection status, filtered where the campaign status automatics flag 
-- is 'FALSE'. It allows quick lookup of manually updated campaign statuses and their 
-- linked execution and campaign details.

CREATE OR REPLACE VIEW vw_StatusExecutionCampaign AS
SELECT
    cs.status_id,
    ce.execution_id,
    ca.campaign_id,
    cs.status_state || ' - ' || cs.priority_level_at_time AS status_summary,
    ce.curr_execution_status || ' - ' || ce.data_collection_status AS execution_summary
FROM CampaignStatus cs
JOIN CampaignExecution ce ON cs.execution_id = ce.execution_id
JOIN Campaign ca ON ce.campaign_id = ca.campaign_id
WHERE cs.automatics_flag = 'FALSE';

SELECT * FROM vw_StatusExecutionCampaign;