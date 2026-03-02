-- Create a new Relational table with 3 columns

-- PERSON TABLE
INSERT INTO Person VALUES (1, '010101-01-1234', 'Ali Ahmad', 'Ali', 'Ahmad', 'Male', TO_DATE('2001-01-01', 'YYYY-MM-DD'), 'Malaysian', 'Islam', 'Malay', 'Single');
INSERT INTO Person VALUES (2, '020202-02-2345', 'Siti Aminah', 'Siti', 'Aminah', 'Female', TO_DATE('2002-02-02', 'YYYY-MM-DD'), 'Malaysian', 'Islam', 'Malay', 'Single');
INSERT INTO Person VALUES (3, '030303-03-3456', 'John Lee', 'John', 'Lee', 'Male', TO_DATE('2000-03-03', 'YYYY-MM-DD'), 'Malaysian', 'Christian', 'Chinese', 'Married');
INSERT INTO Person VALUES (4, '040404-04-4567', 'Aisyah Noor', 'Aisyah', 'Noor', 'Female', TO_DATE('2001-04-04', 'YYYY-MM-DD'), 'Malaysian', 'Islam', 'Malay', 'Single');
INSERT INTO Person VALUES (5, '050505-05-5678', 'Daniel Tan', 'Daniel', 'Tan', 'Male', TO_DATE('1999-05-05', 'YYYY-MM-DD'), 'Malaysian', 'Buddhist', 'Chinese', 'Single');
INSERT INTO Person VALUES (6, '060606-06-6789', 'Nur Iman', 'Nur', 'Iman', 'Female', TO_DATE('2000-06-06', 'YYYY-MM-DD'), 'Malaysian', 'Islam', 'Malay', 'Married');
INSERT INTO Person VALUES (7, '070707-07-7890', 'Arjun Kumar', 'Arjun', 'Kumar', 'Male', TO_DATE('1998-07-07', 'YYYY-MM-DD'), 'Malaysian', 'Hindu', 'Indian', 'Single');
INSERT INTO Person VALUES (8, '080808-08-8901', 'Sarah Lim', 'Sarah', 'Lim', 'Female', TO_DATE('2001-08-08', 'YYYY-MM-DD'), 'Malaysian', 'Christian', 'Chinese', 'Single');
INSERT INTO Person VALUES (9, '090909-09-9012', 'Adam Zainal', 'Adam', 'Zainal', 'Male', TO_DATE('2002-09-09', 'YYYY-MM-DD'), 'Malaysian', 'Islam', 'Malay', 'Single');
INSERT INTO Person VALUES (10, '941010-10-0123', 'Hannah Wong', 'Hannah', 'Wong', 'Female', TO_DATE('1999-10-10', 'YYYY-MM-DD'), 'Malaysian', 'Buddhist', 'Chinese', 'Married');

-- CONTACT TABLE
-- Mapping: Stripped '+' and used numeric IDs
INSERT INTO Contact VALUES (1, 'CT001', 60123456789, 'ali@gmail.com', 'ali@technova.com', 60129876543, 'linkedin.com/in/ali', 'Email', 'English', 'CEO');
INSERT INTO Contact VALUES (2, 'CT002', 60129876543, 'siti@gmail.com', 'siti@greenenergy.com', 60123456789, 'linkedin.com/in/siti', 'Phone', 'Malay', 'Manager');
INSERT INTO Contact VALUES (3, 'CT003', 60121234567, 'daniel@gmail.com', 'daniel@fastlogistics.com', 60127654321, 'linkedin.com/in/daniel', 'Email', 'English', 'Director');
INSERT INTO Contact VALUES (4, 'CT004', 60122334455, 'aisyah@gmail.com', 'aisyah@healthplus.com', 60128765432, 'linkedin.com/in/aisyah', 'Email', 'Malay', 'HR Lead');
INSERT INTO Contact VALUES (5, 'CT005', 60123455678, 'arjun@gmail.com', 'arjun@buildit.com', 60126543210, 'linkedin.com/in/arjun', 'Phone', 'English', 'Project Manager');
INSERT INTO Contact VALUES (6, 'CT006', 60126789012, 'hannah@gmail.com', 'hannah@marketmakers.com', 60127890123, 'linkedin.com/in/hannah', 'Email', 'English', 'Marketing Lead');
INSERT INTO Contact VALUES (7, 'CT007', 60123456701, 'john@gmail.com', 'john@fintech.com', 60127654321, 'linkedin.com/in/john', 'Phone', 'English', 'CFO');
INSERT INTO Contact VALUES (8, 'CT008', 60127890145, 'sarah@gmail.com', 'sarah@edusmart.com', 60123456789, 'linkedin.com/in/sarah', 'Email', 'English', 'Coordinator');
INSERT INTO Contact VALUES (9, 'CT009', 60124567890, 'adam@gmail.com', 'adam@agrolife.com', 60127654321, 'linkedin.com/in/adam', 'Phone', 'Malay', 'Operations Manager');
INSERT INTO Contact VALUES (10, 'CT010', 60125678901, 'nurul@gmail.com', 'nurul@creativeminds.com', 60128765432, 'linkedin.com/in/nurul', 'Email', 'Malay', 'Designer');

-- WORKLOCATION TABLE
-- Mapping: Infra levels (High=3, Med=2, Low=1) | Access Tier (Tier 1=1, etc.)
INSERT INTO WorkLocation VALUES (1, 'BLK-A1', 'HQ Office 1', 'Office', 50, 3, 1, 'Operational', TO_DATE('2026-02-01 08:00', 'YYYY-MM-DD HH24:MI'), NULL);
INSERT INTO WorkLocation VALUES (2, 'BLK-A2', 'HQ Office 2', 'Office', 40, 2, 2, 'Operational', TO_DATE('2026-02-01 09:00', 'YYYY-MM-DD HH24:MI'), NULL);
INSERT INTO WorkLocation VALUES (3, 'BLK-B3', 'Server Room', 'Lab', 10, 4, 1, 'Operational', TO_DATE('2026-01-30 18:00', 'YYYY-MM-DD HH24:MI'), NULL);
INSERT INTO WorkLocation VALUES (4, 'BLK-B4', 'Conference Hall', 'Meeting Room', 100, 2, 2, 'Operational', TO_DATE('2026-01-31 10:00', 'YYYY-MM-DD HH24:MI'), NULL);
INSERT INTO WorkLocation VALUES (5, 'BLK-C5', 'Cafeteria', 'Office', 150, 1, 3, 'Operational', TO_DATE('2026-02-01 07:30', 'YYYY-MM-DD HH24:MI'), NULL);


INSERT INTO Employee VALUES ('E001', 1, TO_DATE('2022-01-10', 'YYYY-MM-DD'), 4500.00, 8.5, 2, 'Management', 'Active', 'Available', 'CO001');
INSERT INTO Employee VALUES ('E002', 2, TO_DATE('2021-03-15', 'YYYY-MM-DD'), 5200.00, 5.0, 4, 'Management', 'Active', 'On Leave', 'CO002');
INSERT INTO Employee VALUES ('E003', 3, TO_DATE('2020-06-20', 'YYYY-MM-DD'), 6000.00, 7.5, 3, 'Management', 'Active', 'Available', 'C003');
INSERT INTO Employee VALUES ('E004', 1, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 4200.00, 6.0, 1, 'Management', 'Active', 'Available', 'C004');
INSERT INTO Employee VALUES ('E005', 4, TO_DATE('2019-09-10', 'YYYY-MM-DD'), 7000.00, 8.5, 4, 'Management', 'Active', 'Available', 'C005');
INSERT INTO Employee VALUES ('E006', 2, TO_DATE('2022-11-05', 'YYYY-MM-DD'), 4800.00, 9.0, 2, 'Management', 'Active', 'On Leave', 'C006');
INSERT INTO Employee VALUES ('E007', 1, TO_DATE('2021-07-19', 'YYYY-MM-DD'), 4600.00, 4.5, 1, 'Management', 'Resigned', 'N/A', 'C007');
INSERT INTO Employee VALUES ('E008', 3, TO_DATE('2018-04-12', 'YYYY-MM-DD'), 8000.00, 5.5, 3, 'Management', 'Active', 'Available', 'C008');
INSERT INTO Employee VALUES ('E009', 4, TO_DATE('2020-10-30', 'YYYY-MM-DD'), 6500.00, 7.5, 4, 'Management', 'Active', 'Available', 'C009');
INSERT INTO Employee VALUES ('E010', 2, TO_DATE('2023-01-08', 'YYYY-MM-DD'), 5000.00, 9.5, 2, 'Management', 'Active', 'Available', 'C010');
INSERT INTO Employee VALUES ('E011', 1, TO_DATE('2018-01-25', 'YYYY-MM-DD'), 4500.00, 5.5, 1, 'Tech', 'Active', 'Available', 'C011');
INSERT INTO Employee VALUES ('E012', 2, TO_DATE('2018-06-18', 'YYYY-MM-DD'), 5200.00, 9.5, 2, 'Tech', 'Active', 'On Leave', 'C012');
INSERT INTO Employee VALUES ('E013', 3, TO_DATE('2019-02-14', 'YYYY-MM-DD'), 6000.00, 7.5, 3, 'Tech', 'Active', 'Available', 'C013');
INSERT INTO Employee VALUES ('E014', 1, TO_DATE('2021-01-04', 'YYYY-MM-DD'), 4200.00, 8.5, 1, 'Tech', 'Active', 'Available', 'C014');
INSERT INTO Employee VALUES ('EO15', 4, TO_DATE('2022-04-09', 'YYYY-MM-DD'), 7000.00, 7.0, 8, 'Tech', 'Active', 'Available', 'CO015');
INSERT INTO Employee VALUES ('EO16', 2, TO_DATE('2022-07-21', 'YYYY-MM-DD'), 4800.00, 8.0, 3, 'Tech', 'Active', 'Available', 'CO016');
INSERT INTO Employee VALUES ('EO17', 1, TO_DATE('2019-02-14', 'YYYY-MM-DD'), 4600.00, 9.5, 4, 'Tech', 'Resigned', 'Available', 'CO017');
INSERT INTO Employee VALUES ('EO18', 3, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 8000.00, 5.5, 10, 'Tech', 'Active', 'Available', 'CO018');
INSERT INTO Employee VALUES ('EO19', 4, TO_DATE('2024-11-30', 'YYYY-MM-DD'), 4500.00, 7.5, 2, 'Tech', 'Active', 'On Leave', 'CO019');
INSERT INTO Employee VALUES ('EO20', 2, TO_DATE('2021-09-13', 'YYYY-MM-DD'), 5200.00, 9.0, 4, 'Tech', 'Active', 'Available', 'CO020');
INSERT INTO Employee VALUES ('EO21', 1, TO_DATE('2025-12-12', 'YYYY-MM-DD'), 6000.00, 9.5, 6, 'Finance', 'Active', 'Available', 'CO021');
INSERT INTO Employee VALUES ('EO22', 2, TO_DATE('2024-11-30', 'YYYY-MM-DD'), 4200.00, 5.5, 1, 'Finance', 'Active', 'Available', 'CO022');
INSERT INTO Employee VALUES ('EO23', 3, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 7000.00, 6.5, 8, 'Finance', 'Active', 'Available', 'CO023');
INSERT INTO Employee VALUES ('EO24', 1, TO_DATE('2025-07-09', 'YYYY-MM-DD'), 4800.00, 6.0, 3, 'Finance', 'Active', 'On Leave', 'CO024');
INSERT INTO Employee VALUES ('EO25', 4, TO_DATE('2019-02-14', 'YYYY-MM-DD'), 4600.00, 7.5, 4, 'Finance', 'Resigned', 'Available', 'CO025');
INSERT INTO Employee VALUES ('EO26', 2, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 8000.00, 7.0, 10, 'Finance', 'Active', 'Available', 'CO026');
INSERT INTO Employee VALUES ('EO27', 1, TO_DATE('2024-09-23', 'YYYY-MM-DD'), 4500.00, 7.0, 2, 'Finance', 'Active', 'Available', 'CO027');
INSERT INTO Employee VALUES ('EO28', 3, TO_DATE('2025-09-26', 'YYYY-MM-DD'), 5200.00, 8.5, 4, 'Finance', 'Active', 'Available', 'CO028');
INSERT INTO Employee VALUES ('EO29', 4, TO_DATE('2022-02-18', 'YYYY-MM-DD'), 6000.00, 9.5, 6, 'Finance', 'Active', 'Available', 'CO029');
INSERT INTO Employee VALUES ('EO30', 2, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 4200.00, 9.0, 1, 'Finance', 'Active', 'Available', 'CO030');
INSERT INTO Employee VALUES ('EO31', 1, TO_DATE('2025-02-07', 'YYYY-MM-DD'), 7000.00, 7.0, 8, 'Sales/Marketing', 'Active', 'Available', 'CO031');
INSERT INTO Employee VALUES ('EO32', 2, TO_DATE('2022-04-09', 'YYYY-MM-DD'), 4800.00, 8.5, 3, 'Sales/Marketing', 'Active', 'Available', 'CO032');
INSERT INTO Employee VALUES ('EO33', 3, TO_DATE('2024-06-11', 'YYYY-MM-DD'), 4600.00, 9.0, 4, 'Sales/Marketing', 'Resigned', 'Available', 'CO033');
INSERT INTO Employee VALUES ('EO34', 1, TO_DATE('2025-09-26', 'YYYY-MM-DD'), 8000.00, 8.5, 10, 'Sales/Marketing', 'Active', 'Available', 'CO034');
INSERT INTO Employee VALUES ('EO35', 4, TO_DATE('2022-02-18', 'YYYY-MM-DD'), 4500.00, 9.0, 2, 'Sales/Marketing', 'Active', 'Available', 'CO035');
INSERT INTO Employee VALUES ('EO36', 2, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 5200.00, 5.5, 4, 'Sales/Marketing', 'Active', 'Available', 'CO036');
INSERT INTO Employee VALUES ('EO37', 1, TO_DATE('2024-11-30', 'YYYY-MM-DD'), 6000.00, 7.5, 6, 'Sales/Marketing', 'Active', 'Available', 'CO037');
INSERT INTO Employee VALUES ('EO38', 3, TO_DATE('2021-09-13', 'YYYY-MM-DD'), 4200.00, 9.0, 1, 'Sales/Marketing', 'Active', 'Available', 'CO038');
INSERT INTO Employee VALUES ('EO39', 4, TO_DATE('2025-09-26', 'YYYY-MM-DD'), 7000.00, 8.5, 8, 'Sales/Marketing', 'Active', 'Available', 'CO039');
INSERT INTO Employee VALUES ('EO40', 2, TO_DATE('2024-06-11', 'YYYY-MM-DD'), 4800.00, 9.0, 3, 'Sales/Marketing', 'Active', 'N/A', 'CO040');



INSERT INTO Management VALUES ('M001', 1001, 'Senior', 500000.00, 'CEO', 'Active', 'Revenue Growth 15%', 'Full', 'Expand Market 2026', 'Eligible', 'E001');
INSERT INTO Management VALUES ('M002', 1002, 'Senior', 400000.00, 'CFO', 'Active', 'Cost Reduction 10%', 'Full', 'Optimize Budget', 'Eligible', 'E002');
INSERT INTO Management VALUES ('M003', 1003, 'Middle', 300000.00, 'IT Director', 'Active', 'System Uptime 99%', 'Limited', 'Implement ERP', 'Eligible', 'E003');
INSERT INTO Management VALUES ('M004', 1004, 'Middle', 250000.00, 'HR Manager', 'Active', 'Employee Retention 95%', 'Full', 'Leadership Training', 'Eligible', 'E004');
INSERT INTO Management VALUES ('M005', 1005, 'Junior', 200000.00, 'Sales Manager', 'Active', 'Monthly Sales 500K', 'Limited', 'Campaign Launch', 'Eligible', 'E005');
INSERT INTO Management VALUES ('M006', 1006, 'Senior', 450000.00, 'COO', 'Active', 'Process Efficiency 20%', 'Full', 'Operational Overhaul', 'Eligible', 'E006');
INSERT INTO Management VALUES ('M007', 1007, 'Middle', 320000.00, 'Marketing Director', 'Active', 'Brand Awareness 25%', 'Limited', 'Social Media Expansion', 'Eligible', 'E007');
INSERT INTO Management VALUES ('M008', 1008, 'Junior', 180000.00, 'Project Manager', 'Active', 'On-time Delivery 90%', 'Limited', 'Project Planning', 'Eligible', 'E008');
INSERT INTO Management VALUES ('M009', 1009, 'Senior', 550000.00, 'CTO', 'Active', 'Tech Innovation Index', 'Full', 'R&D Strategy', 'Eligible', 'E009');
INSERT INTO Management VALUES ('M010', 1010, 'Middle', 270000.00, 'Finance Manager', 'Active', 'Budget Accuracy 98%', 'Limited', 'Audit Improvements', 'Eligible', 'E010');




INSERT INTO Tech VALUES ('T301', 5001, 'Software Engineer', 'Backend', 'github.com/ali', 'Python', 'Inventory System', 'HW001', 'High', 'Full', 'Admin', 'E011');
INSERT INTO Tech VALUES ('T302', 5002, 'Software Engineer', 'Frontend', 'github.com/siti', 'JavaScript', 'E-Commerce Site', 'HW002', 'Medium', 'Limited', 'Developer', 'E012');
INSERT INTO Tech VALUES ('T303', 5003, 'DevOps Engineer', 'CI/CD', 'github.com/john', 'Python', 'ERP Deployment', 'HW003', 'High', 'Full', 'Admin', 'E013');
INSERT INTO Tech VALUES ('T304', 5004, 'QA Engineer', 'Automation Testing', 'github.com/aisyah', 'Java', 'QA Suite', 'HW004', 'Medium', 'Limited', 'Tester', 'E014');
INSERT INTO Tech VALUES ('T305', 5005, 'Security Engineer', 'Network Security', 'github.com/daniel', 'Python', 'Firewall Upgrade', 'HW005', 'Very High', 'Full', 'Admin', 'E015');
INSERT INTO Tech VALUES ('T306', 5006, 'Full Stack Developer', 'Web Apps', 'github.com/nuriman', 'Python/JS', 'Client Portal', 'HW006', 'High', 'Full', 'Admin', 'E016');
INSERT INTO Tech VALUES ('T307', 5007, 'Backend Developer', 'Database', 'github.com/arjun', 'SQL', 'Data Warehouse', 'HW007', 'Medium', 'Limited', 'Developer', 'E017');
INSERT INTO Tech VALUES ('T308', 5008, 'Frontend Developer', 'UI/UX', 'github.com/sarah', 'JavaScript', 'Marketing Site', 'HW008', 'Low', 'Limited', 'Developer', 'E018');
INSERT INTO Tech VALUES ('T309', 5009, 'Cloud Engineer', 'AWS', 'github.com/adam', 'Python', 'Cloud Migration', 'HW009', 'High', 'Full', 'Admin', 'E019');
INSERT INTO Tech VALUES ('T310', 5010, 'Software Engineer', 'Mobile Apps', 'github.com/hannah', 'Kotlin', 'Mobile App', 'HW010', 'Medium', 'Limited', 'Developer', 'E020');



INSERT INTO Finance VALUES ('F401', 'FRC001', 'Accountant', 50000.00, 100000.00, 'Level 1', 'Dept Budget', 'GST', 'Revenue Accuracy 98%', 'Full', TO_DATE('2026-03-31','YYYY-MM-DD'), 'EO21');
INSERT INTO Finance VALUES ('F402', 'FRC002', 'Senior Accountant', 100000.00, 200000.00, 'Level 2', 'Division Budget', 'Corporate Tax', 'Cost Reduction 10%', 'Full', TO_DATE('2026-06-30','YYYY-MM-DD'), 'EO22');
INSERT INTO Finance VALUES ('F403', 'FRC003', 'Finance Manager', 250000.00, 500000.00, 'Level 3', 'Company Budget', 'Income Tax', 'Budget Accuracy 99%', 'Full', TO_DATE('2026-12-31','YYYY-MM-DD'), 'EO23');
INSERT INTO Finance VALUES ('F404', 'FRC004', 'Auditor', 50000.00, 150000.00, 'Level 2', 'Dept Budget', 'GST', 'Audit Compliance 100%', 'Limited', TO_DATE('2026-05-31','YYYY-MM-DD'), 'EO24');
INSERT INTO Finance VALUES ('F405', 'FRC005', 'Payroll Officer', 30000.00, 80000.00, 'Level 1', 'Payroll', 'Payroll Tax', 'On-time Salary 100%', 'Limited', TO_DATE('2026-02-28','YYYY-MM-DD'), 'EO25');
INSERT INTO Finance VALUES ('F406', 'FRC006', 'Assistant Accountant', 20000.00, 50000.00, 'Level 1', 'Dept Budget', 'GST', 'Expense Accuracy 95%', 'Limited', TO_DATE('2026-04-30','YYYY-MM-DD'), 'EO26');
INSERT INTO Finance VALUES ('F407', 'FRC007', 'Finance Analyst', 70000.00, 120000.00, 'Level 2', 'Division Budget', 'Corporate Tax', 'ROI 15%', 'Full', TO_DATE('2026-09-30','YYYY-MM-DD'), 'EO27');
INSERT INTO Finance VALUES ('F408', 'FRC008', 'Treasury Officer', 80000.00, 150000.00, 'Level 2', 'Company Budget', 'Income Tax', 'Cashflow Accuracy 99%', 'Full', TO_DATE('2026-11-30','YYYY-MM-DD'), 'EO28');
INSERT INTO Finance VALUES ('F409', 'FRC009', 'Senior Auditor', 150000.00, 300000.00, 'Level 3', 'Company Budget', 'GST & Corporate Tax', 'Compliance 100%', 'Full', TO_DATE('2026-12-31','YYYY-MM-DD'), 'E029');
INSERT INTO Finance VALUES ('F410', 'FRC010', 'Chief Accountant', 300000.00, 600000.00, 'Level 3', 'Entire Company', 'Corporate Tax', 'Financial Accuracy 100%', 'Full', TO_DATE('2026-12-31','YYYY-MM-DD'), 'E030');



INSERT INTO SalesMarketing VALUES ('SM001', 3001, 'Gold', 100000.00, 'Full', 'Tier 1', 'ClientA, ClientB', 50000.00, 85.5, 'Kuala Lumpur', 'E031');
INSERT INTO SalesMarketing VALUES ('SM002', 3002, 'Silver', 80000.00, 'Limited', 'Tier 2', 'ClientC, ClientD', 30000.00, 78.0, 'Selangor', 'E032');
INSERT INTO SalesMarketing VALUES ('SM003', 3003, 'Gold', 120000.00, 'Full', 'Tier 1', 'ClientE, ClientF', 60000.00, 90.0, 'Penang', 'E033');
INSERT INTO SalesMarketing VALUES ('SM004', 3004, 'Bronze', 50000.00, 'Limited', 'Tier 3', 'ClientG', 20000.00, 70.0, 'Johor', 'E034');
INSERT INTO SalesMarketing VALUES ('SM005', 3005, 'Gold', 150000.00, 'Full', 'Tier 1', 'ClientH, ClientF', 75000.00, 88.5, 'Kuala Lumpur', 'E035');
INSERT INTO SalesMarketing VALUES ('SM006', 3006, 'Silver', 90000.00, 'Full', 'Tier 2', 'ClientJ', 40000.00, 82.0, 'Selangor', 'E036');
INSERT INTO SalesMarketing VALUES ('SM007', 3007, 'Gold', 110000.00, 'Full', 'Tier 1', 'ClientK, ClientL', 55000.00, 87.0, 'Penang', 'E037');
INSERT INTO SalesMarketing VALUES ('SM008', 3008, 'Bronze', 60000.00, 'Limited', 'Tier 3', 'ClientM', 25000.00, 72.5, 'Johor', 'E038');
INSERT INTO SalesMarketing VALUES ('SM009', 3009, 'Silver', 85000.00, 'Full', 'Tier 2', 'ClientN, ClientO', 42000.00, 80.0, 'Kuala Lumpur', 'E039');
INSERT INTO SalesMarketing VALUES ('SM010', 3010, 'Gold', 130000.00, 'Full', 'Tier 1', 'ClientP', 65000.00, 89.0, 'Selangor', 'E040');



INSERT INTO Certification VALUES ('CR001', 'PMP', 'PMI', 36, 75.00, 'Renew via 60 PDUs', 'https://pmi.org/cert', 'Hard', 'Project Management', 'CERT-2024-0001');
INSERT INTO Certification VALUES ('CR002', 'CFA Level 1', 'CFA Institute', 36, 70.00, 'Retake exam if expired', 'https://cfainstitute.org', 'Hard', 'Finance', 'CERT-2024-0002');
INSERT INTO Certification VALUES ('CR003', 'AWS Certified Solutions Architect', 'Amazon', 24, 72.00, 'Renew via exam', 'https://aws.amazon.com/cert', 'Medium', 'Cloud Computing', 'CERT-2024-0003');
INSERT INTO Certification VALUES ('CR004', 'Certified ScrumMaster', 'Scrum Alliance', 24, 70.00, 'Renew via 20 SEUs', 'https://www.scrumalliance.org', 'Medium', 'Agile', 'CERT-2024-0004');
INSERT INTO Certification VALUES ('CR005', 'CPA', 'AICPA', 36, 75.00, 'Renew via CPE credits', 'https://www.aicpa.org', 'Hard', 'Accounting', 'CERT-2024-0005');
INSERT INTO Certification VALUES ('CR006', 'CISSP', 'ISC2', 36, 70.00, 'Renew via 120 CPE', 'https://www.isc2.org', 'Hard', 'Security', 'CERT-2024-0006');
INSERT INTO Certification VALUES ('CR007', 'Microsoft Azure Administrator', 'Microsoft', 24, 70.00, 'Retake exam every 2 years', 'https://docs.microsoft.com', 'Medium', 'Cloud Computing', 'CERT-2024-0007');
INSERT INTO Certification VALUES ('CR008', 'ITIL Foundation', 'AXELOS', 36, 65.00, 'Retake exam', 'https://www.axelos.com', 'Easy', 'IT Service Management', 'CERT-2024-0008');
INSERT INTO Certification VALUES ('CR009', 'Google Data Analytics', 'Google', 24, 70.00, 'Retake exam', 'https://cloud.google.com/certification', 'Medium', 'Data Analytics', 'CERT-2024-0009');
INSERT INTO Certification VALUES ('CR010', 'Six Sigma Green Belt', 'ASQ', 36, 70.00, 'Retake exam or project', 'https://asq.org', 'Medium', 'Process Improvement', 'CERT-2024-0010');


INSERT INTO Address VALUES ('A001', 'Office', '10-1', 'Jalan Tun Razak', 'KLCC', 'Kuala Lumpur', 'Kuala Lumpur', 50450, 'Malaysia', 'KL', 'CO001');
INSERT INTO Address VALUES ('A002', 'Home', '5-2', 'Jalan Ipoh', 'Taman Maluri', 'Kuala Lumpur', 'Kuala Lumpur', 55100, 'Malaysia', 'KL', 'CO002');
INSERT INTO Address VALUES ('A003', 'Office', '12-3', 'Persiaran Cyberjaya', 'Cyber Square', 'Cyberjaya', 'Selangor', 63000, 'Malaysia', 'Sepang', 'CO003');
INSERT INTO Address VALUES ('A004', 'Home', '8-7', 'Jalan Sultan Ismail', 'Bukit Bintang', 'Kuala Lumpur', 'Kuala Lumpur', 50250, 'Malaysia', 'KL', 'CO004');
INSERT INTO Address VALUES ('A005', 'Office', '3-10', 'Jalan Teknologi', 'Innovation Park', 'Shah Alam', 'Selangor', 40000, 'Malaysia', 'Klang', 'CO005');
INSERT INTO Address VALUES ('A006', 'Home', '2-5', 'Jalan Ipoh', 'Taman Maluri', 'Kuala Lumpur', 'Kuala Lumpur', 55100, 'Malaysia', 'KL', 'CO006');
INSERT INTO Address VALUES ('A007', 'Office', '7-6', 'Jalan Tun Razak', 'KL Tower', 'Kuala Lumpur', 'Kuala Lumpur', 50450, 'Malaysia', 'KL', 'CO007');
INSERT INTO Address VALUES ('A008', 'Home', '9-3', 'Jalan Bukit Bintang', 'Pavilion', 'Kuala Lumpur', 'Kuala Lumpur', 55100, 'Malaysia', 'KL', 'CO008');
INSERT INTO Address VALUES ('A009', 'Office', '1-8', 'Persiaran Cyberjaya', 'Cyber Hub', 'Cyberjaya', 'Selangor', 63000, 'Malaysia', 'Sepang', 'CO009');
INSERT INTO Address VALUES ('A010', 'Home', '6-4', 'Jalan Sultan Ismail', 'Bukit Bintang', 'Kuala Lumpur', 'Kuala Lumpur', 50250, 'Malaysia', 'KL', 'CO010');



INSERT INTO Client VALUES ('CL001', 'TechNova Sdn Bhd', 'IT01', 500000.00, 'Gold', 'Ali Rahman', 'Active', 'Ongoing', '123456-A', 'Invoice', 'Referral');
INSERT INTO Client VALUES ('CL002', 'GreenEnergy Co', 'EN02', 300000.00, 'Silver', 'Siti Nur', 'Active', 'Ongoing', '654321-B', 'Invoice', 'Website');
INSERT INTO Client VALUES ('CL003', 'FastLogistics', 'LO03', 200000.00, 'Bronze', 'Daniel Tan', 'Active', 'Ongoing', '789012-C', 'Online Payment', 'Referral');
INSERT INTO Client VALUES ('CL004', 'HealthPlus', 'HE04', 400000.00, 'Gold', 'Nur Aisyah', 'Active', 'Ongoing', '345678-D', 'Invoice', 'Event');
INSERT INTO Client VALUES ('CL005', 'BuildIt Construction', 'CO05', 350000.00, 'Silver', 'Arjun Singh', 'Active', 'Ongoing', '901234-E', 'Invoice', 'Referral');
INSERT INTO Client VALUES ('CL006', 'MarketMakers', 'MA06', 250000.00, 'Bronze', 'Hannah Lee', 'Active', 'Ongoing', '567890-F', 'Online Payment', 'Website');
INSERT INTO Client VALUES ('CL007', 'FinTech Solutions', 'FI07', 600000.00, 'Gold', 'John Lim', 'Active', 'Ongoing', '234567-G', 'Invoice', 'Referral');
INSERT INTO Client VALUES ('CL008', 'EduSmart', 'ED08', 150000.00, 'Bronze', 'Sarah Wong', 'Active', 'Ongoing', '890123-H', 'Online Payment', 'Event');
INSERT INTO Client VALUES ('CL009', 'AgroLife', 'AG09', 300000.00, 'Silver', 'Adam Khalid', 'Active', 'Ongoing', '345901-I', 'Invoice', 'Referral');
INSERT INTO Client VALUES ('CL010', 'Creative Minds', 'CR10', 200000.00, 'Bronze', 'Nurul Izzah', 'Active', 'Ongoing', '678901-J', 'Online Payment', 'Website');



INSERT INTO Campaign VALUES ('CA001', 'V1', 'LaunchTech2026', 'Increase brand awareness in IT sector', 'CL001');
INSERT INTO Campaign VALUES ('CA002', 'V1', 'GreenEnergyPromo', 'Promote sustainable energy solutions', 'CL002');
INSERT INTO Campaign VALUES ('CA003', 'V2', 'FastLogisticsBoost', 'Expand logistics services to Penang', 'CL003');
INSERT INTO Campaign VALUES ('CA004', 'V1', 'HealthPlusCare', 'Increase customer engagement for health products', 'CL004');
INSERT INTO Campaign VALUES ('CA005', 'V3', 'BuildItCampaign', 'Attract new construction projects in Selangor', 'CL005');
INSERT INTO Campaign VALUES ('CA006', 'V2', 'MarketMakersPush', 'Boost digital marketing services sales', 'CL006');
INSERT INTO Campaign VALUES ('CA007', 'V1', 'FinTechGrowth', 'Increase fintech product adoption', 'CL007');
INSERT INTO Campaign VALUES ('CA008', 'V2', 'EduSmartDrive', 'Promote e-learning programs nationwide', 'CL008');
INSERT INTO Campaign VALUES ('CA009', 'V1', 'AgroLifeExpansion', 'Expand agricultural services to Johor', 'CL009');
INSERT INTO Campaign VALUES ('CA010', 'V1', 'CreativeMindsPromo', 'Promote creative services to SMEs', 'CL010');
INSERT INTO Campaign VALUES ('CA011', 'V1', 'MimiTech', 'To enhance tech culture', 'CL001');
INSERT INTO Campaign VALUES ('CA012', 'V1', 'BrightFutureHub', 'Promote future tech in Kedah', 'CL002');
INSERT INTO Campaign VALUES ('CA013', 'V2', 'GreenHarvestGlobal', 'Encourage Green Use', 'CL003');
INSERT INTO Campaign VALUES ('CA014', 'V1', 'NovaSkillWorks', 'Promote skills in KL', 'CL004');
INSERT INTO Campaign VALUES ('CA015', 'V3', 'InspireEdgeSolutions', 'Encourage students tech solution', 'CL005');
INSERT INTO Campaign VALUES ('CA016', 'V2', 'EcoSmart', 'Promote green tech around nation', 'CL006');
INSERT INTO Campaign VALUES ('CA017', 'V1', 'EduProConnect', 'Tech enchance program in Perak', 'CL007');
INSERT INTO Campaign VALUES ('CA018', 'V1', 'HarvestLink', 'To improve agricultural supply chain efficiency.', 'CL008');
INSERT INTO Campaign VALUES ('CA019', 'V1', 'BrightMinds', 'To provide innovative education and skill development.', 'CL009');
INSERT INTO Campaign VALUES ('CA020', 'V2', 'MiraTech', 'To deliver reliable and efficient tech solutions.', 'CL010');
INSERT INTO Campaign VALUES ('CA021', 'V1', 'SparkWave', 'To enhance brand visibility through digital marketing.', 'CL001');
INSERT INTO Campaign VALUES ('CA022', 'V3', 'MindShift', 'To promote personal and leadership growth', 'CL002');
INSERT INTO Campaign VALUES ('CA023', 'V2', 'NextWaveDynamics', 'To drive future-focused business innovation.', 'CL003');
INSERT INTO Campaign VALUES ('CA024', 'V1', 'AgriNova', 'To modernize farming with smart technology.', 'CL004');
INSERT INTO Campaign VALUES ('CA025', 'V1', 'SmartBridge', 'To connect businesses with digital solutions.', 'CL005');
INSERT INTO Campaign VALUES ('CA026', 'V1', 'InnovatePlus', 'To support innovation and business growth.', 'CL006');
INSERT INTO Campaign VALUES ('CA027', 'V2', 'BrightMinds', 'To connect businesses with digital solutions.', 'CL007');
INSERT INTO Campaign VALUES ('CA028', 'V1', 'UrbanBloom', 'To promote sustainable urban development.', 'CL008');
INSERT INTO Campaign VALUES ('CA029', 'V3', 'ZenithEdge', 'To provide strategic and competitive business solutions', 'CL009');
INSERT INTO Campaign VALUES ('CA030', 'V2', 'AlphaCore', 'To build strong and scalable technology systems', 'CL010');



INSERT INTO DigitalCampaign VALUES ('DI001', 'Google Ads', 'launchtech2026', 'tech solutions', 'LaunchTech 2026 Now', 'Discover the latest tech solutions', 'EA001', 30, 80, 'https://launchtech.com', 'CA001');
INSERT INTO DigitalCampaign VALUES ('DI002', 'Facebook Ads', 'greenenergypromo', 'sustainable energy', 'Green Energy Promo', 'Go green with our energy solutions', 'EA002', 45, 45, 75, 'https://greenenergy.com', 'CA002');
INSERT INTO DigitalCampaign VALUES ('DI003', 'Instagram Ads', 'fastlogisticsboost', 'logistics services', 'Fast Logistics Boost', 'Expand your delivery coverage', 'EA003', 60, 60, 70, 'https://fastlogistics.com', 'CA003');
INSERT INTO DigitalCampaign VALUES ('DI004', 'Google Ads', 'healthpluscare', 'health care', 'HealthPlus Care', 'Improve your wellness today', 'EA004', 30, 30, 78, 'https://healthplus.com', 'CA004');
INSERT INTO DigitalCampaign VALUES ('DI005', 'LinkedIn Ads', 'builditcampaign', 'construction projects', 'BuildIt Campaign', 'Attract new projects easily', 'EA005', 90, 90, 85, 'https://buildit.com', 'CA005');
INSERT INTO DigitalCampaign VALUES ('DI006', 'Email Marketing', 'marketmakerspush', 'digital marketing', 'Market Makers Push', 'Boost your sales with marketing', 'EA006', 30, 30, 80, 'https://marketmakers.com', 'CA006');
INSERT INTO DigitalCampaign VALUES ('DI007', 'Google Ads', 'fintechgrowth', 'fintech products', 'FinTech Growth', 'Adopt fintech products today', 'EA007', 60, 60, 82, 'https://fintechsolutions.com', 'CA007');
INSERT INTO DigitalCampaign VALUES ('DI008', 'Facebook Ads', 'edusmartdrive', 'e-learning', 'EduSmart Drive', 'Promote online learning', 'EA008', 45, 45, 77, 'https://edusmart.com', 'CA008');
INSERT INTO DigitalCampaign VALUES ('DI009', 'Instagram Ads', 'agrolifeexpansion', 'agriculture services', 'AgroLife Expansion', 'Expand your farm business', 'EA009', 30, 30, 70, 'https://agrolife.com', 'CA009');
INSERT INTO DigitalCampaign VALUES ('DI010', 'LinkedIn Ads', 'creativemindspromo', 'creative services', 'Creative Minds Promo', 'Promote your creative agency', 'EA010', 60, 60, 75, 'https://creativeminds.com', 'CA010');



INSERT INTO SocialMediaCampaign VALUES ('SOC001', 'Instagram', 105, 'Gold', '#LaunchTech2026', 'Image/Video', 8.5, '3 posts/week', 'Respond within 24h', 501, 'CA011');
INSERT INTO SocialMediaCampaign VALUES ('SOC002', 'Facebook', 106, 'Silver', '#GreenEnergyPromo', 'Video', 7.2, '2 posts/week', 'Respond within 48h', 502, 'CA012');
INSERT INTO SocialMediaCampaign VALUES ('SOC003', 'Twitter', 107, 'Gold', '#FastLogisticsBoost', 'Text/Image', 6.8, '5 posts/week', 'Respond within 12h', 503, 'CA013');
INSERT INTO SocialMediaCampaign VALUES ('SOC004', 'TikTok', 108, 'Bronze', '#HealthPlusCare', 'Video', 9.0, '2 posts/week', 'Respond within 24h', 504, 'CA014');
INSERT INTO SocialMediaCampaign VALUES ('SOC005', 'LinkedIn', 109, 'Gold', '#BuildItCampaign', 'Article/Image', 7.5, '1 post/week', 'Respond within 48h', 505, 'CA015');
INSERT INTO SocialMediaCampaign VALUES ('SOC006', 'Instagram', 110, 'Silver', '#MarketMakersPush', 'Image/Video', 8.0, '3 posts/week', 'Respond within 24h', 506, 'CA016');
INSERT INTO SocialMediaCampaign VALUES ('SOC007', 'Facebook', 105, 'Gold', '#FinTechGrowth', 'Video', 7.8, '2 posts/week', 'Respond within 12h', 507, 'CA017');
INSERT INTO SocialMediaCampaign VALUES ('SOC008', 'Twitter', 106, 'Bronze', '#EduSmartDrive', 'Text/Image', 6.5, '4 posts/week', 'Respond within 24h', 508, 'CA018');
INSERT INTO SocialMediaCampaign VALUES ('SOC009', 'TikTok', 107, 'Silver', '#AgroLifeExpansion', 'Video', 8.2, '2 posts/week', 'Respond within 24h', 509, 'CA019');
INSERT INTO SocialMediaCampaign VALUES ('SOC010', 'LinkedIn', 108, 'Gold', '#CreativeMindsPromo', 'Article/Image', 7.9, '1 post/week', 'Respond within 48h', 510, 'CA020');


INSERT INTO PhysicalCampaign VALUES ('PY001', 'EV001', 500, 'Projector, Sound System', 601, 701, 'iPad', 801, 'Kuala Lumpur Convention Centre', 20, 'CA001');
INSERT INTO PhysicalCampaign VALUES ('PY002', 'EV002', 300, 'Microphone, Banner', 602, 702, 'QR Scanner', 802, 'Mid Valley Exhibition Hall', 15, 'CA002');
INSERT INTO PhysicalCampaign VALUES ('PY003', 'EV003', 450, 'LED Screen, Podium', 603, 703, 'Tablet', 803, 'Penang International Expo', 18, 'CA003');
INSERT INTO PhysicalCampaign VALUES ('PY004', 'EV004', 600, 'Sound System, Lights', 604, 704, 'Laptop', 804, 'Putrajaya International Convention', 25, 'CA004');
INSERT INTO PhysicalCampaign VALUES ('PY005', 'EV005', 350, 'Projector, Microphone', 605, 705, 'iPad', 805, 'Shah Alam Convention Centre', 12, 'CA005');
INSERT INTO PhysicalCampaign VALUES ('PY006', 'EV006', 400, 'LED Screen, Sound', 606, 706, 'Tablet', 806, 'Cyberjaya Event Hall', 18, 'CA006');
INSERT INTO PhysicalCampaign VALUES ('PY007', 'EV007', 550, 'Podium, Microphone', 607, 707, 'iPad', 807, 'Johor Bahru Exhibition Hall', 22, 'CA007');
INSERT INTO PhysicalCampaign VALUES ('PY008', 'EV008', 300, 'Banner, Sound System', 608, 708, 'QR Scanner', 808, 'Melaka International Expo', 10, 'CA008');
INSERT INTO PhysicalCampaign VALUES ('PY009', 'EV009', 500, 'Projector, LED Screen', 609, 709, 'Laptop', 809, 'Kuching Convention Centre', 20, 'CA009');
INSERT INTO PhysicalCampaign VALUES ('PY010', 'EV010', 450, 'Lights, Sound System', 610, 710, 'Tablet', 810, 'Kota Kinabalu Event Hall', 16, 'CA010');


INSERT INTO Proposal VALUES ('PR001', 'PR001', 'Pending', 'LaunchTech2026 Proposal', 'Increase brand awareness in IT sector', 500000.00, '50% upfront, 50% on delivery', TO_DATE('2026-03-31','YYYY-MM-DD'), '3 months', 'Pending', 'CL001', 'SM001');
INSERT INTO Proposal VALUES ('PR002', 'PR002', 'Approved', 'GreenEnergy Promo Proposal', 'Promote sustainable energy solutions', 300000.00, '30% upfront, 70% on completion', TO_DATE('2026-04-15','YYYY-MM-DD'), '2 months', 'Approved', 'CL002', 'SM002');
INSERT INTO Proposal VALUES ('PR003', 'PR003', 'Rejected', 'FastLogistics Boost Proposal', 'Expand logistics services to Penang', 200000.00, 'Full payment on delivery', TO_DATE('2026-05-01','YYYY-MM-DD'), '1 month', 'Rejected', 'CL003', 'SM003');
INSERT INTO Proposal VALUES ('PR004', 'PR004', 'Pending', 'HealthPlusCare Proposal', 'Increase customer engagement for health products', 400000.00, '40% upfront, 60% on completion', TO_DATE('2026-03-30','YYYY-MM-DD'), '3 months', 'Pending', 'CL004', 'SM004');
INSERT INTO Proposal VALUES ('PR005', 'PR005', 'Approved', 'BuildItCampaign Proposal', 'Attract new construction projects in Selangor', 350000.00, '50% upfront, 50% on delivery', TO_DATE('2026-04-20','YYYY-MM-DD'), '3 months', 'Approved', 'CL005', 'SM005');
INSERT INTO Proposal VALUES ('PR006', 'PR006', 'Pending', 'MarketMakersPush Proposal', 'Boost digital marketing services sales', 250000.00, '30% upfront, 70% on completion', TO_DATE('2026-05-05','YYYY-MM-DD'), '2 months', 'Pending', 'CL006', 'SM006');
INSERT INTO Proposal VALUES ('PR007', 'PR007', 'Approved', 'FinTechGrowth Proposal', 'Increase fintech product adoption', 600000.00, '50% upfront, 50% on delivery', TO_DATE('2026-04-10','YYYY-MM-DD'), '4 months', 'Approved', 'CL007', 'SM007');
INSERT INTO Proposal VALUES ('PR008', 'PR008', 'Pending', 'EduSmartDrive Proposal', 'Promote e-learning programs nationwide', 150000.00, 'Full payment on delivery', TO_DATE('2026-03-25','YYYY-MM-DD'), '2 months', 'Pending', 'CL008', 'SM008');
INSERT INTO Proposal VALUES ('PR009', 'PR009', 'Approved', 'AgroLifeExpansion Proposal', 'Expand agricultural services to Johor', 300000.00, '40% upfront, 60% on completion', TO_DATE('2026-04-30','YYYY-MM-DD'), '3 months', 'Approved', 'CL009', 'SM009');
INSERT INTO Proposal VALUES ('PR010', 'PR010', 'Pending', 'CreativeMindsPromo Proposal', 'Promote creative services to SMEs', 200000.00, '30% upfront, 70% on completion', TO_DATE('2026-05-15','YYYY-MM-DD'), '2 months', 'Pending', 'CL010', 'SM010');


INSERT INTO WorkOrder VALUES ('WK001', 'PH001', 'Setup Booth', 'Setup exhibition booth at KLCC', 'High', 'Pending', TO_DATE('2026-02-20','YYYY-MM-DD'), TO_TIMESTAMP('2026-02-25 17:00:00','YYYY-MM-DD HH24:MI:SS'), 40.00, 0.00, 'CL001', 'T301');
INSERT INTO WorkOrder VALUES ('WK002', 'PH002', 'Design Ad', 'Create digital ads for GreenEnergyPromo', 'Medium', 'In Progress', TO_DATE('2026-02-22','YYYY-MM-DD'), TO_TIMESTAMP('2026-02-28 18:00:00','YYYY-MM-DD HH24:MI:SS'), 20.00, 5.50, 'CL002', 'T302');
INSERT INTO WorkOrder VALUES ('WK003', 'PH003', 'Collect Leads', 'Capture client data at FastLogistics event', 'High', 'Pending', TO_DATE('2026-03-01','YYYY-MM-DD'), TO_TIMESTAMP('2026-03-05 17:00:00','YYYY-MM-DD HH24:MI:SS'), 16.00, 0.00, 'CL003', 'T303');
INSERT INTO WorkOrder VALUES ('WK004', 'PH004', 'Social Media Content', 'Create Instagram posts for HealthPlusCare', 'Medium', 'In Progress', TO_DATE('2026-02-21','YYYY-MM-DD'), TO_TIMESTAMP('2026-02-27 18:00:00','YYYY-MM-DD HH24:MI:SS'), 12.00, 4.00, 'CL004', 'T304');
INSERT INTO WorkOrder VALUES ('WK005', 'PH005', 'Campaign Reporting', 'Generate report for BuildItCampaign', 'Low', 'Pending', TO_DATE('2026-03-05','YYYY-MM-DD'), TO_TIMESTAMP('2026-03-10 17:00:00','YYYY-MM-DD HH24:MI:SS'), 8.00, 0.00, 'CL005', 'T305');
INSERT INTO WorkOrder VALUES ('WK006', 'PH006', 'Email Sequence', 'Setup email automation for MarketMakersPush', 'Medium', 'Completed', TO_DATE('2026-02-20','YYYY-MM-DD'), TO_TIMESTAMP('2026-02-26 18:00:00','YYYY-MM-DD HH24:MI:SS'), 10.00, 10.50, 'CL006', 'T306');
INSERT INTO WorkOrder VALUES ('WK007', 'PH007', 'ROI Analysis', 'Analyze FinTechGrowth campaign ROI', 'High', 'In Progress', TO_DATE('2026-02-25','YYYY-MM-DD'), TO_TIMESTAMP('2026-03-02 17:00:00','YYYY-MM-DD HH24:MI:SS'), 15.00, 5.00, 'CL007', 'T307');
INSERT INTO WorkOrder VALUES ('WK008', 'PH008', 'Video Production', 'Produce video ads for EduSmartDrive', 'Medium', 'Pending', TO_DATE('2026-02-28','YYYY-MM-DD'), TO_TIMESTAMP('2026-03-07 18:00:00','YYYY-MM-DD HH24:MI:SS'), 25.00, 0.00, 'CL008', 'T308');
INSERT INTO WorkOrder VALUES ('WK009', 'PH009', 'Client Follow-up', 'Contact clients after AgroLifeExpansion', 'High', 'Pending', TO_DATE('2026-03-01','YYYY-MM-DD'), TO_TIMESTAMP('2026-03-05 17:00:00','YYYY-MM-DD HH24:MI:SS'), 12.00, 0.00, 'CL009', 'T309');
INSERT INTO WorkOrder VALUES ('WK010', 'PH010', 'Graphic Design', 'Design promo materials for CreativeMindsPromo', 'Medium', 'In Progress', TO_DATE('2026-02-23','YYYY-MM-DD'), TO_TIMESTAMP('2026-03-01 18:00:00','YYYY-MM-DD HH24:MI:SS'), 18.00, 7.50, 'CL010', 'T310');


INSERT INTO Meeting VALUES ('ME001', TO_DATE('2026-02-20','YYYY-MM-DD'), 'LaunchTech Strategy', '09:00', '11:00', 'Strategy', 'Discuss campaign objectives', 'https://docs.com/mtg1701', 'Campaign', 1101, 'TRUE', 'E001', 'L001');
INSERT INTO Meeting VALUES ('ME002', TO_DATE('2026-02-21','YYYY-MM-DD'), 'GreenEnergy Planning', '14:00', '16:00', 'Planning', 'Plan digital campaign', 'https://docs.com/mtg1702', 'Campaign', 1102, 'TRUE', 'E002', 'L002');
INSERT INTO Meeting VALUES ('ME003', TO_DATE('2026-02-22','YYYY-MM-DD'), 'Logistics Coordination', '10:00', '12:00', 'Coordination', 'Align event tasks', 'https://docs.com/mtg1703', 'WorkOrder', 1603, 'TRUE', 'E003', 'L003');
INSERT INTO Meeting VALUES ('ME004', TO_DATE('2026-02-23','YYYY-MM-DD'), 'HealthPlus Creative Review', '13:00', '15:00', 'Review', 'Review content and creatives', 'https://docs.com/mtg1704', 'Campaign', 1104, 'FALSE', 'E004', 'L004');
INSERT INTO Meeting VALUES ('ME005', TO_DATE('2026-02-24','YYYY-MM-DD'), 'BuildIt Budget Meeting', '11:00', '12:30', 'Budget', 'Discuss budget allocation', 'https://docs.com/mtg1705', 'Proposal', 1505, 'TRUE', 'E005', 'L005');
INSERT INTO Meeting VALUES ('ME006', TO_DATE('2026-02-25','YYYY-MM-DD'), 'MarketMakers Progress', '15:00', '16:30', 'Progress', 'Track campaign KPIs', 'https://docs.com/mtg1706', 'Campaign', 1106, 'TRUE', 'E006', 'L006');
INSERT INTO Meeting VALUES ('ME007', TO_DATE('2026-02-26','YYYY-MM-DD'), 'FinTech Growth Review', '09:30', '11:00', 'Review', 'Analyze previous campaign results', 'https://docs.com/mtg1707', 'Campaign', 1107, 'TRUE', 'E007', 'L007');
INSERT INTO Meeting VALUES ('ME008', TO_DATE('2026-02-27','YYYY-MM-DD'), 'EduSmart Email Setup', '14:00', '15:30', 'Setup', 'Configure email sequences', 'https://docs.com/mtg1708', 'WorkOrder', 1608, 'FALSE', 'E008', 'L008');
INSERT INTO Meeting VALUES ('ME009', TO_DATE('2026-02-28','YYYY-MM-DD'), 'AgroLife Expansion Check', '10:00', '11:30', 'Progress', 'Review lead generation progress', 'https://docs.com/mtg1709', 'Campaign', 1109, 'TRUE', 'E009', 'L009');
INSERT INTO Meeting VALUES ('ME010', TO_DATE('2026-03-01','YYYY-MM-DD'), 'CreativeMinds Promo', '13:00', '14:30', 'Planning', 'Plan creative campaign rollout', 'https://docs.com/mtg1710', 'Campaign', 1110, 'TRUE', 'E010', 'L010');


INSERT INTO CampaignStatus VALUES ('STA001', 1, 'Pending', TO_TIMESTAMP('2026-02-20 09:00:00','YYYY-MM-DD HH24:MI:SS'), 'CR001', 'Initial approval pending', 'FALSE', 'High', NULL, TO_DATE('2026-02-20','YYYY-MM-DD'), TO_DATE('2026-02-25','YYYY-MM-DD'), 'EX001', 'SM001');
INSERT INTO CampaignStatus VALUES ('STA002', 2, 'Approved', TO_TIMESTAMP('2026-02-21 10:30:00','YYYY-MM-DD HH24:MI:SS'), 'CR002', 'Manager approved campaign', 'FALSE', 'High', 1801, TO_DATE('2026-02-21','YYYY-MM-DD'), TO_DATE('2026-02-26','YYYY-MM-DD'), 'EX002', 'SM002');
INSERT INTO CampaignStatus VALUES ('STA003', 3, 'In Progress', TO_TIMESTAMP('2026-02-22 14:00:00','YYYY-MM-DD HH24:MI:SS'), 'CR003', 'Campaign started', 'TRUE', 'Medium', 1802, TO_DATE('2026-02-22','YYYY-MM-DD'), TO_DATE('2026-03-01','YYYY-MM-DD'), 'EX003', 'SM003');
INSERT INTO CampaignStatus VALUES ('STA004', 4, 'On Hold', TO_TIMESTAMP('2026-02-23 11:00:00','YYYY-MM-DD HH24:MI:SS'), 'CR004', 'Pending client feedback', 'FALSE', 'Medium', 1803, TO_DATE('2026-02-23','YYYY-MM-DD'), TO_DATE('2026-03-05','YYYY-MM-DD'), 'EX004', 'SM004');
INSERT INTO CampaignStatus VALUES ('STA005', 5, 'Completed', TO_TIMESTAMP('2026-02-24 16:00:00','YYYY-MM-DD HH24:MI:SS'), 'CR005', 'Campaign finished successfully', 'FALSE', 'High', 1803, TO_DATE('2026-02-24','YYYY-MM-DD'), NULL, 'EX005', 'SM005');
INSERT INTO CampaignStatus VALUES ('STA006', 6, 'Cancelled', TO_TIMESTAMP('2026-02-25 09:30:00','YYYY-MM-DD HH24:MI:SS'), 'CR006', 'Campaign cancelled by client', 'FALSE', 'High', 1802, TO_DATE('2026-02-25','YYYY-MM-DD'), NULL, 'EX006', 'SM006');
INSERT INTO CampaignStatus VALUES ('STA007', 7, 'Pending', TO_TIMESTAMP('2026-02-26 10:00:00','YYYY-MM-DD HH24:MI:SS'), 'CR007', 'Resuming campaign', 'TRUE', 'Medium', 1804, TO_DATE('2026-02-26','YYYY-MM-DD'), TO_DATE('2026-03-02','YYYY-MM-DD'), 'EX007', 'SM007');
INSERT INTO CampaignStatus VALUES ('STA008', 8, 'Approved', TO_TIMESTAMP('2026-02-27 15:00:00','YYYY-MM-DD HH24:MI:SS'), 'CR008', 'Manager re-approval', 'FALSE', 'High', 1807, TO_DATE('2026-02-27','YYYY-MM-DD'), TO_DATE('2026-03-05','YYYY-MM-DD'), 'EX008', 'SM008');
INSERT INTO CampaignStatus VALUES ('STA009', 9, 'In Progress', TO_TIMESTAMP('2026-02-28 13:00:00','YYYY-MM-DD HH24:MI:SS'), 'CR009', 'Active campaign execution', 'TRUE', 'Medium', 1808, TO_DATE('2026-02-28','YYYY-MM-DD'), TO_DATE('2026-03-10','YYYY-MM-DD'), 'EX009', 'SM009');
INSERT INTO CampaignStatus VALUES ('STA010', 10, 'Completed', TO_TIMESTAMP('2026-03-01 12:00:00','YYYY-MM-DD HH24:MI:SS'), 'CR010', 'Final completion', 'FALSE', 'High', 1809, TO_DATE('2026-03-01','YYYY-MM-DD'), NULL, 'EX010', 'SM010');


INSERT INTO CampaignExecution VALUES ('EX001', 'Live', TO_TIMESTAMP('2026-02-20 09:00:00','YYYY-MM-DD HH24:MI:SS'), 15000.00, 500000, 2.50, 1250, 12.00, 'None', TO_TIMESTAMP('2026-02-20 12:00:00','YYYY-MM-DD HH24:MI:SS'), 'Complete', 'CA001');
INSERT INTO CampaignExecution VALUES ('EX002', 'Paused', TO_TIMESTAMP('2026-02-21 10:00:00','YYYY-MM-DD HH24:MI:SS'), 8000.00, 200000, 3.00, 600, 13.33, 'Technical issues', TO_TIMESTAMP('2026-02-21 13:00:00','YYYY-MM-DD HH24:MI:SS'), 'In Progress', 'CA002');
INSERT INTO CampaignExecution VALUES ('EX003', 'Live', TO_TIMESTAMP('2026-02-22 14:00:00','YYYY-MM-DD HH24:MI:SS'), 12000.00, 300000, 2.80, 840, 14.29, 'None', TO_TIMESTAMP('2026-02-22 17:00:00','YYYY-MM-DD HH24:MI:SS'), 'Complete', 'CA003');
INSERT INTO CampaignExecution VALUES ('EX004', 'Completed', TO_TIMESTAMP('2026-02-23 11:00:00','YYYY-MM-DD HH24:MI:SS'), 10000.00, 250000, 2.40, 600, 16.67, 'None', TO_TIMESTAMP('2026-02-23 15:00:00','YYYY-MM-DD HH24:MI:SS'), 'Complete', 'CA004');
INSERT INTO CampaignExecution VALUES ('EX005', 'Live', TO_TIMESTAMP('2026-02-24 16:00:00','YYYY-MM-DD HH24:MI:SS'), 18000.00, 600000, 3.10, 1860, 9.68, 'None', TO_TIMESTAMP('2026-02-24 19:00:00','YYYY-MM-DD HH24:MI:SS'), 'Complete', 'CA005');
INSERT INTO CampaignExecution VALUES ('EX006', 'Paused', TO_TIMESTAMP('2026-02-25 09:30:00','YYYY-MM-DD HH24:MI:SS'), 5000.00, 150000, 1.90, 285, 17.54, 'Client request pause', TO_TIMESTAMP('2026-02-25 12:00:00','YYYY-MM-DD HH24:MI:SS'), 'In Progress', 'CA006');
INSERT INTO CampaignExecution VALUES ('EX007', 'Live', TO_TIMESTAMP('2026-02-26 10:00:00','YYYY-MM-DD HH24:MI:SS'), 14000.00, 450000, 2.75, 1237, 11.33, 'None', TO_TIMESTAMP('2026-02-26 13:00:00','YYYY-MM-DD HH24:MI:SS'), 'Complete', 'CA007');
INSERT INTO CampaignExecution VALUES ('EX008', 'Live', TO_TIMESTAMP('2026-02-27 15:00:00','YYYY-MM-DD HH24:MI:SS'), 16000.00, 520000, 2.95, 1534, 10.44, 'None', TO_TIMESTAMP('2026-02-27 18:00:00','YYYY-MM-DD HH24:MI:SS'), 'Complete', 'CA008');
INSERT INTO CampaignExecution VALUES ('EX009', 'Completed', TO_TIMESTAMP('2026-02-28 13:00:00','YYYY-MM-DD HH24:MI:SS'), 11000.00, 310000, 2.70, 837, 13.14, 'None', TO_TIMESTAMP('2026-02-28 16:00:00','YYYY-MM-DD HH24:MI:SS'), 'Complete', 'CA009');
INSERT INTO CampaignExecution VALUES ('EX010', 'Live', TO_TIMESTAMP('2026-03-01 12:00:00','YYYY-MM-DD HH24:MI:SS'), 13000.00, 400000, 3.00, 1200, 10.83, 'None', TO_TIMESTAMP('2026-03-01 15:00:00','YYYY-MM-DD HH24:MI:SS'), 'Complete', 'CA010');



INSERT INTO PostCampaignReport VALUES ('REP001', 'AV1', 500000.00, 150000.00, 233.33, 'Achieved', 'Instagram', 'Positive', 'None', TO_DATE('2026-02-28','YYYY-MM-DD'), 'https://docs.com/report2001', 'EX001', 'SM001');
INSERT INTO PostCampaignReport VALUES ('REP002', 'AV1', 300000.00, 80000.00, 275.00, 'Exceeded', 'Facebook', 'Positive', 'Minor delays', TO_DATE('2026-02-28','YYYY-MM-DD'), 'https://docs.com/report2002', 'EX002', 'SM002');
INSERT INTO PostCampaignReport VALUES ('REP003', 'AV1', 400000.00, 120000.00, 233.33, 'Achieved', 'Google Ads', 'Neutral', 'None', TO_DATE('2026-02-28','YYYY-MM-DD'), 'https://docs.com/report2003', 'EX003', 'SM003');
INSERT INTO PostCampaignReport VALUES ('REP004', 'AV1', 200000.00, 50000.00, 300.00, 'Exceeded', 'LinkedIn', 'Positive', 'None', TO_DATE('2026-02-28','YYYY-MM-DD'), 'https://docs.com/report2004', 'EX004', 'SM004');
INSERT INTO PostCampaignReport VALUES ('REP005', 'AV1', 350000.00, 100000.00, 250.00, 'Achieved', 'Instagram', 'Neutral', 'Minor technical issues', TO_DATE('2026-02-28','YYYY-MM-DD'), 'https://docs.com/report2005', 'EX005', 'SM005');
INSERT INTO PostCampaignReport VALUES ('REP006', 'AV1', 250000.00, 70000.00, 257.14, 'Achieved', 'Facebook', 'Positive', 'None', TO_DATE('2026-02-28','YYYY-MM-DD'), 'https://docs.com/report2006', 'EX006', 'SM006');
INSERT INTO PostCampaignReport VALUES ('REP007', 'AV1', 600000.00, 150000.00, 300.00, 'Exceeded', 'LinkedIn', 'Positive', 'None', TO_DATE('2026-02-28','YYYY-MM-DD'), 'https://docs.com/report2007', 'EX007', 'SM007');
INSERT INTO PostCampaignReport VALUES ('REP008', 'AV1', 150000.00, 50000.00, 200.00, 'Achieved', 'Google Ads', 'Neutral', 'None', TO_DATE('2026-02-28','YYYY-MM-DD'), 'https://docs.com/report2008', 'EX008', 'SM008');
INSERT INTO PostCampaignReport VALUES ('REP009', 'AV1', 300000.00, 90000.00, 233.33, 'Achieved', 'Instagram', 'Positive', 'None', TO_DATE('2026-02-28','YYYY-MM-DD'), 'https://docs.com/report2009', 'EX009', 'SM009');
INSERT INTO PostCampaignReport VALUES ('REP010', 'AV1', 200000.00, 70000.00, 185.71, 'Achieved', 'Facebook', 'Neutral', 'None', TO_DATE('2026-02-28','YYYY-MM-DD'), 'https://docs.com/report2010', 'EX010', 'SM010');



INSERT INTO CampaignIdeas VALUES ('IDE001', 'LaunchTech Idea', 'Digital', 'Increase IT brand awareness', 'IT Professionals', 'Draft', 50000.00, 'Video ad + social media', 20.00, TO_TIMESTAMP('2026-02-01 09:00:00','YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-02-05 12:00:00','YYYY-MM-DD HH24:MI:SS'), 'CL001');
INSERT INTO CampaignIdeas VALUES ('IDE002', 'GreenEnergy Concept', 'Digital', 'Promote sustainable energy', 'General Public', 'Draft', 30000.00, 'Infographics + social posts', 25.00, TO_TIMESTAMP('2026-02-02 10:00:00','YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-02-06 11:00:00','YYYY-MM-DD HH24:MI:SS'), 'CL002');
INSERT INTO CampaignIdeas VALUES ('IDE003', 'FastLogistics Boost', 'Physical', 'Expand logistics services', 'Businesses', 'Draft', 40000.00, 'Booth + event promo', 15.00, TO_TIMESTAMP('2026-02-03 09:30:00','YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-07-10 10:30:00','YYYY-MM-DD HH24:MI:SS'), 'CL003');
INSERT INTO CampaignIdeas VALUES ('IDE004', 'HealthPlus Care Plan', 'Digital', 'Increase customer engagement', 'Health-conscious clients', 'Draft', 35000.00, 'Video + email sequence', 18.00, TO_TIMESTAMP('2026-02-04 11:00:00','YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-02-08 12:00:00','YYYY-MM-DD HH24:MI:SS'), 'CL004');
INSERT INTO CampaignIdeas VALUES ('IDE005', 'BuildIt Campaign', 'Physical', 'Attract new construction projects', 'Contractors', 'Draft', 45000.00, 'Booth + event demo', 20.00, TO_TIMESTAMP('2026-02-05 09:45:00','YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-02-09 11:00:00','YYYY-MM-DD HH24:MI:SS'), 'CL005');
INSERT INTO CampaignIdeas VALUES ('IDE006', 'MarketMakers Push', 'Digital', 'Boost marketing sales', 'SMEs', 'Draft', 30000.00, 'Social media + ads', 22.00, TO_TIMESTAMP('2026-02-06 10:15:00','YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-02-10 12:00:00','YYYY-MM-DD HH24:MI:SS'), 'CL006');
INSERT INTO CampaignIdeas VALUES ('IDE007', 'FinTech Growth', 'Digital', 'Increase fintech adoption', 'Finance sector', 'Draft', 60000.00, 'Webinar + social posts', 25.00, TO_TIMESTAMP('2026-02-07 09:00:00','YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-02-11 11:00:00','YYYY-MM-DD HH24:MI:SS'), 'CL007');
INSERT INTO CampaignIdeas VALUES ('IDE008', 'EduSmart Drive', 'Digital', 'Promote e-learning', 'Students', 'Draft', 25000.00, 'Video + email', 18.00, TO_TIMESTAMP('2026-02-08 10:30:00','YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-02-12 12:30:00','YYYY-MM-DD HH24:MI:SS'), 'CL008');
INSERT INTO CampaignIdeas VALUES ('IDE009', 'AgroLife Expansion', 'Physical', 'Expand agricultural services', 'Farmers', 'Draft', 40000.00, 'Booth + flyers', 17.00, TO_TIMESTAMP('2026-02-09 09:15:00','YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-02-13 10:45:00','YYYY-MM-DD HH24:MI:SS'), 'CL009');
INSERT INTO CampaignIdeas VALUES ('IDE010', 'CreativeMinds Promo', 'Digital', 'Promote creative services', 'SMEs', 'Draft', 35000.00, 'Video + social posts', 20.00, TO_TIMESTAMP('2026-02-10 09:30:00','YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-02-14 11:15:00','YYYY-MM-DD HH24:MI:SS'), 'CL010');




INSERT INTO FinancialReport VALUES ('TR001', 2026, TO_DATE('2026-02-20','YYYY-MM-DD'), 'Posted', 'MYR', 'GL001', 10000.00, 600.00, 10600.00, 'AUTH01', 1.0000, 'F401');
INSERT INTO FinancialReport VALUES ('TR002', 2026, TO_DATE('2026-02-21','YYYY-MM-DD'), 'Posted', 'MYR', 'GL002', 5000.00, 300.00, 5300.00, 'AUTH02', 1.0000, 'F402');
INSERT INTO FinancialReport VALUES ('TR003', 2026, TO_DATE('2026-02-22','YYYY-MM-DD'), 'Posted', 'MYR', 'GL003', 20000.00, 1200.00, 21200.00, 'AUTH03', 1.0000, 'F403');
INSERT INTO FinancialReport VALUES ('TR004', 2026, TO_DATE('2026-02-23','YYYY-MM-DD'), 'Posted', 'MYR', 'GL004', 15000.00, 900.00, 15900.00, 'AUTH04', 1.0000, 'F404');
INSERT INTO FinancialReport VALUES ('TR005', 2026, TO_DATE('2026-02-24','YYYY-MM-DD'), 'Pending', 'MYR', 'GL005', 8000.00, 480.00, 8480.00, 'AUTH05', 1.0000, 'F405');
INSERT INTO FinancialReport VALUES ('TR006', 2026, TO_DATE('2026-02-25','YYYY-MM-DD'), 'Posted', 'MYR', 'GL006', 12000.00, 720.00, 12720.00, 'AUTH06', 1.0000, 'F406');
INSERT INTO FinancialReport VALUES ('TR007', 2026, TO_DATE('2026-02-26','YYYY-MM-DD'), 'Posted', 'MYR', 'GL007', 10000.00, 600.00, 10600.00, 'AUTH07', 1.0000, 'F407');
INSERT INTO FinancialReport VALUES ('TR008', 2026, TO_DATE('2026-02-27','YYYY-MM-DD'), 'Pending', 'MYR', 'GL008', 7000.00, 420.00, 7420.00, 'AUTH08', 1.0000, 'F408');
INSERT INTO FinancialReport VALUES ('TR009', 2026, TO_DATE('2026-02-28','YYYY-MM-DD'), 'Posted', 'MYR', 'GL009', 5000.00, 300.00, 5300.00, 'AUTH09', 1.0000, 'F409');
INSERT INTO FinancialReport VALUES ('TR010', 2026, TO_DATE('2026-03-01','YYYY-MM-DD'), 'Posted', 'MYR', 'GL010', 9000.00, 540.00, 9540.00, 'AUTH10', 1.0000, 'F410');
INSERT INTO FinancialReport VALUES ('TR011', 2026, TO_DATE('2026-02-20','YYYY-MM-DD'), 'Posted', 'MYR', 'GL001', 10000.00, 600.00, 10600.00, 'AUTH01', 1.0000, 'F401');
INSERT INTO FinancialReport VALUES ('TR012', 2026, TO_DATE('2026-02-21','YYYY-MM-DD'), 'Posted', 'MYR', 'GL002', 5000.00, 300.00, 5300.00, 'AUTH02', 1.0000, 'F402');
INSERT INTO FinancialReport VALUES ('TR013', 2026, TO_DATE('2026-02-22','YYYY-MM-DD'), 'Posted', 'MYR', 'GL003', 20000.00, 1200.00, 21200.00, 'AUTH03', 1.0000, 'F403');
INSERT INTO FinancialReport VALUES ('TR014', 2026, TO_DATE('2026-02-23','YYYY-MM-DD'), 'Posted', 'MYR', 'GL004', 15000.00, 900.00, 15900.00, 'AUTH04', 1.0000, 'F404');
INSERT INTO FinancialReport VALUES ('TR015', 2026, TO_DATE('2026-02-24','YYYY-MM-DD'), 'Pending', 'MYR', 'GL005', 8000.00, 480.00, 8480.00, 'AUTH05', 1.0000, 'F405');
INSERT INTO FinancialReport VALUES ('TR016', 2026, TO_DATE('2026-02-25','YYYY-MM-DD'), 'Posted', 'MYR', 'GL006', 12000.00, 720.00, 12720.00, 'AUTH06', 1.0000, 'F406');
INSERT INTO FinancialReport VALUES ('TR017', 2026, TO_DATE('2026-02-26','YYYY-MM-DD'), 'Posted', 'MYR', 'GL007', 10000.00, 600.00, 10600.00, 'AUTH07', 1.0000, 'F407');
INSERT INTO FinancialReport VALUES ('TR018', 2026, TO_DATE('2026-02-27','YYYY-MM-DD'), 'Pending', 'MYR', 'GL008', 7000.00, 420.00, 7420.00, 'AUTH08', 1.0000, 'F408');
INSERT INTO FinancialReport VALUES ('TR019', 2026, TO_DATE('2026-02-28','YYYY-MM-DD'), 'Posted', 'MYR', 'GL009', 5000.00, 300.00, 5300.00, 'AUTH09', 1.0000, 'F409');
INSERT INTO FinancialReport VALUES ('TR020', 2026, TO_DATE('2026-03-01','YYYY-MM-DD'), 'Posted', 'MYR', 'GL010', 9000.00, 540.00, 9540.00, 'AUTH10', 1.0000, 'F410');




INSERT INTO Revenue VALUES ('REV001', 'RS001', 'Credit Card', 'INV001', 100.00, 'TRUE', 30, TO_DATE('2024-01-05','YYYY-MM-DD'), 'Yes', 95000, 'TR001', 'CL001');
INSERT INTO Revenue VALUES ('REV002', 'RS002', 'Bank Transfer', 'INV002', 50.00, 'FALSE', 0, TO_DATE('2024-01-18','YYYY-MM-DD'), 'No', 63200, 'TR002', 'CL002');
INSERT INTO Revenue VALUES ('REV003', 'RS003', 'Online Payment', 'INV003', 0.00, 'TRUE', 30, TO_DATE('2024-02-02','YYYY-MM-DD'), 'No', 118400, 'TR003', 'CL003');
INSERT INTO Revenue VALUES ('REV004', 'RS004', 'Credit Card', 'INV004', 200.00, 'FALSE', 0, TO_DATE('2024-02-20','YYYY-MM-DD'), 'Yes', 50150, 'TR004', 'CL004');
INSERT INTO Revenue VALUES ('REV005', 'RS005', 'Bank Transfer', 'INV005', 0.00, 'TRUE', 30, TO_DATE('2024-03-06','YYYY-MM-DD'), 'No', 162750, 'TR005', 'CL005');
INSERT INTO Revenue VALUES ('REV006', 'RS006', 'Online Payment', 'INV006', 50.00, 'TRUE', 30, TO_DATE('2024-03-22','YYYY-MM-DD'), 'Yes', 74600, 'TR006', 'CL006');
INSERT INTO Revenue VALUES ('REV007', 'RS007', 'Credit Card', 'INV007', 0.00, 'FALSE', 0, TO_DATE('2024-04-09','YYYY-MM-DD'), 'No', 102300, 'TR007', 'CL007');
INSERT INTO Revenue VALUES ('REV008', 'RS008', 'Bank Transfer', 'INV008', 25.00, 'TRUE', 30, TO_DATE('2024-04-27','YYYY-MM-DD'), 'No', 41500, 'TR008', 'CL008');
INSERT INTO Revenue VALUES ('REV009', 'RS009', 'Online Payment', 'INV009', 0.00, 'FALSE', 0, TO_DATE('2024-05-11','YYYY-MM-DD'), 'Yes', 139800, 'TR009', 'CL009');
INSERT INTO Revenue VALUES ('REV010', 'RS010', 'Credit Card', 'INV010', 75.00, 'TRUE', 30, TO_DATE('2024-05-29','YYYY-MM-DD'), 'No', 83450, 'TR010', 'CL010');



INSERT INTO Expenditure VALUES ('EXP001', 'EC001', 'Monthly', 5000.00, 200.00, 10000.00, 'Salary', 'Approved', 12, 500.00, 'WF001', 'TR011');
INSERT INTO Expenditure VALUES ('EXP002', 'EC002', 'Monthly', 6000.00, 250.00, 12000.00, 'Salary', 'Approved', 12, 600.00, 'WF002', 'TR012');
INSERT INTO Expenditure VALUES ('EXP003', 'EC003', 'Quarterly', 15000.00, 500.00, 30000.00, 'Project', 'Pending', 6, 1000.00, 'WF003', 'TR013');
INSERT INTO Expenditure VALUES ('EXP004', 'EC004', 'Monthly', 4500.00, 180.00, 9000.00, 'Salary', 'Approved', 12, 450.00, 'WF004', 'TR014');
INSERT INTO Expenditure VALUES ('EXP005', 'EC005', 'Monthly', 7000.00, 300.00, 15000.00, 'Salary', 'Approved', 12, 700.00, 'WF005', 'TR015');
INSERT INTO Expenditure VALUES ('EXP006', 'EC006', 'Monthly', 8000.00, 320.00, 16000.00, 'Project', 'Approved', 6, 800.00, 'WF006', 'TR016');
INSERT INTO Expenditure VALUES ('EXP007', 'EC007', 'Quarterly', 12000.00, 450.00, 24000.00, 'Project', 'Pending', 6, 600.00, 'WF007', 'TR017');
INSERT INTO Expenditure VALUES ('EXP008', 'EC008', 'Monthly', 5500.00, 250.00, 11000.00, 'Salary', 'Approved', 12, 550.00, 'WF008', 'TR018');
INSERT INTO Expenditure VALUES ('EXP009', 'EC009', 'Monthly', 6000.00, 270.00, 12000.00, 'Salary', 'Approved', 12, 600.00, 'WF009', 'TR019');
INSERT INTO Expenditure VALUES ('EXP010', 'EC010', 'Monthly', 6500.00, 300.00, 13000.00, 'Salary', 'Approved', 12, 650.00, 'WF010', 'TR020');





COMMIT;
