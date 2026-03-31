-- FILE 5: CREATE VIEW — 3-Table Join
-- 3 PRIMARY KEY attributes from 3 tables
-- 2 concatenated non-PK attributes from 2 tables
-- 1 constraint with single value
-- Expected: 7 rows

-- Scenario: This view is created to display the primary keys of the employee, client, 
-- and post-campaign report alongside a concatenated full name of the employee 
-- and a concatenated client contact summary, filtered for reports 
-- where the goal status is 'Achieved'.
-- It allows quick lookup of who handled which client's campaign and what the outcome was.

CREATE VIEW vw_CampaignSummary AS
SELECT 
    e.employee_id,
    c.client_id,
    pcr.report_id,
    e.first_name || ' ' || e.last_name AS employee_fullname,
    c.client_name || ' (' || c.client_tier || ')' AS client_summary
FROM Employee e
JOIN Client c ON e.employee_id = c.employee_id
JOIN PostCampaignReport pcr ON e.employee_id = pcr.employee_id
WHERE pcr.goal_status = 'Achieved';

-- To display the view:
SELECT * FROM vw_CampaignSummary;
