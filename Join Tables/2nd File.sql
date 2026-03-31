SELECT e.department, COUNT(c.campaign_id) AS total_campaigns
FROM Employee e
JOIN Client cl ON e.employee_id = cl.employee_id
JOIN Campaign c ON cl.client_id = c.client_id
JOIN Management m ON e.employee_id = m.employee_id
WHERE e.employementStatus = 'Active'
  AND cl.client_priority_tier IN ('Gold', 'Silver')
  AND c.version_tag = 'V1'
  AND m.annual_budget_allocation >= 200000
GROUP BY e.employee_id, e.department;