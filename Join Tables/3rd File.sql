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
WHERE e.department = 'Management'                     
  AND co.preferred_comm_channel = 'Email'           
  AND cl.client_status = 'Active'                     
  AND pr.roi_percentage BETWEEN 230 AND 310;         
