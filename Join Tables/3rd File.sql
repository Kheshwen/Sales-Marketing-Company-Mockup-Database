SELECT 
    E.employee_id, E.department,
    C.email_address, C.job_title,
    CL.client_id, CL.company_name,
    CA.campaign_id, CA.campaign_name,
    EX.execution_id, EX.curr_execution_status,
    R.report_id, R.roi_percentage
FROM Employee E
JOIN Contact C ON E.contact_id = C.contact_id
JOIN Client CL ON E.employee_id = CL.employee_id
JOIN Campaign CA ON CL.client_id = CA.client_id
JOIN CampaignExecution EX ON CA.campaign_id = EX.campaign_id
JOIN PostCampaignReport R ON EX.execution_id = R.execution_id
WHERE 
    E.department = 'Management'
    AND CL.client_priority_tier = 'Gold'
    AND CA.version_tag = 'V1'
    AND R.goal_achievement = 'Achieved';
