SELECT
    e.employee_id,
    COUNT(c.campaign_id) AS total_campaigns
FROM Employee e
JOIN Client cl
    ON e.contact_id = cl.contact_id
JOIN Campaign c
    ON cl.client_id = c.client_id
JOIN Management m
    ON e.employee_id = m.employee_id
WHERE 
    e.employment_status = 'Active'              -- Constraint 1 (Employee table)
AND cl.client_level = 'Gold'                    -- Constraint 2 (Client table)
AND c.version = 'V1'                            -- Constraint 3 (Campaign table)
GROUP BY 
    e.employee_id
FETCH FIRST 5 ROWS ONLY;