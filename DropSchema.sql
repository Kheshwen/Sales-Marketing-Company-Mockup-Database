-- Drop the many-to-many "Mapping" tables first
DROP TABLE KZFF_EmployeeWorkstation;
DROP TABLE KZFF_EmployeePerson;
DROP TABLE KZFF_PostCampaignRevenue;
DROP TABLE KZFF_EmployeeCertification;
DROP TABLE KZFF_MeetingAttendance;
DROP TABLE KZFF_EmployeeAssignment;

-- Drop the tables with the most dependencies next
DROP TABLE KZFF_Expenditure;
DROP TABLE KZFF_Revenue;
DROP TABLE KZFF_FinanceRecord;
DROP TABLE KZFF_Campaignideas;
DROP TABLE KZFF_PostCampaignReport;
DROP TABLE KZFF_CampaignStatus;
DROP TABLE KZFF_CampaignExecution;
DROP TABLE KZFF_Meeting;
DROP TABLE KZFF_WorkOrder;
DROP TABLE KZFF_Proposal;
DROP TABLE KZFF_PhysicalCampaign;
DROP TABLE KZFF_SocialMediaCampaign;
DROP TABLE KZFF_DigitalCampaign;
DROP TABLE KZFF_Campaign;
DROP TABLE KZFF_Certification;
DROP TABLE KZFF_SalesMarketing;
DROP TABLE KZFF_Finance;
DROP TABLE KZFF_Tech;
DROP TABLE KZFF_Management;
DROP TABLE KZFF_Client;
DROP TABLE KZFF_Employee;
DROP TABLE KZFF_Address;
DROP TABLE KZFF_WorkLocation;
DROP TABLE KZFF_Contact;
DROP TABLE KZFF_Person;

COMMIT;

-- PURGE RECYCLEBIN; -- Clears the recycle bin so your database stays clean