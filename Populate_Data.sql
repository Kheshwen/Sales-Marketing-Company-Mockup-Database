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

COMMIT;