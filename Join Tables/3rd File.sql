-- FILE 3: 7-Table Join — Employee, Contact, Client, Campaign, Execution, Report, & Management
-- Displays attributes from seven interconnected tables to analyze campaign success
-- 4 constraints across multiple tables using AND
-- Expected: 4 rows
-- This query is to retrieve comprehensive details for high-impact marketing campaigns, 
-- specifically those overseen by Senior Management for Gold or Silver tier clients.
-- It identifies campaigns where the Return on Investment (ROI) exceeded 230%.
-- This is used for executive performance reviews and identifying successful strategies 
-- for high-priority accounts.
SELECT
    e.employeeid, e.department,
    co.emailaddress, co.jobtitle,
    cl.clientid, cl.companyname,
    ca.campaignid, ca.campaignname,
    ce.executionid, ce.currexecutionstatus,
    pr.reportid, pr.roipercentage
FROM Employee e
JOIN Contact co ON e.contactid = co.contactid
JOIN Client cl ON e.employeeid = cl.employeeid
JOIN Campaign ca ON cl.clientid = ca.clientid
JOIN CampaignExecution ce ON ca.campaignid = ce.campaignid
JOIN PostCampaignReport pr ON ce.executionid = pr.executionid
JOIN Management m ON e.employeeid = m.employeeid
WHERE e.department = 'IT'
  AND cl.client_priority_tier = 'Gold'
  AND ca.campaign_name = 'Campaign_A'
  AND pr.roi_percentage = 100
