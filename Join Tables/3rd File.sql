SELECT 
    e.employee_id, e.department,
    co.email_address, co.job_title,
    cl.client_id, cl.company_name,
    ca.campaign_id, ca.campaign_name,
    ce.execution_id, ce.curr_execution_status,
    pr.report_id, pr.roi_percentage
FROM Employee e
JOIN Contact co ON e.contact_id = co.contact_id
JOIN Client cl ON e.employee_id = cl.employee_id
JOIN Campaign ca ON cl.client_id = ca.client_id
JOIN CampaignExecution ce ON ca.campaign_id = ce.campaign_id
JOIN PostCampaignReport pr ON ce.execution_id = pr.execution_id
JOIN Management m ON e.employee_id = m.employee_id
WHERE e.department = 'Management'            
  AND m.management_level = 'Senior'          
  AND cl.client_priority_tier IN ('Gold', 'Silver') 
  AND pr.roi_percentage > 230;              