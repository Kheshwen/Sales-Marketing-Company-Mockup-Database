-- Drop the many-to-many "Mapping" tables first
DROP TABLE EmployeeWorkstation;
DROP TABLE EmployeePerson;
DROP TABLE PostCampaignRevenue;
DROP TABLE EmployeeCertification;
DROP TABLE MeetingAttendance;
DROP TABLE EmployeeAssignment;

-- Drop the tables with the most dependencies next
DROP TABLE Expenditure;
DROP TABLE Revenue;
DROP TABLE FinanceRecord;
DROP TABLE Campaignideas;
DROP TABLE PostCampaignReport;
DROP TABLE CampaignStatus;
DROP TABLE CampaignExecution;
DROP TABLE Meeting;
DROP TABLE WorkOrder;
DROP TABLE Proposal;
DROP TABLE PhysicalCampaign;
DROP TABLE SocialMediaCampaign;
DROP TABLE DigitalCampaign;
DROP TABLE Campaign;
DROP TABLE Certification;
DROP TABLE SalesMarketing;
DROP TABLE Finance;
DROP TABLE Tech;
DROP TABLE Management;
DROP TABLE Client;
DROP TABLE Employee;
DROP TABLE Address;
DROP TABLE WorkLocation;
DROP TABLE Contact;
DROP TABLE Person;

COMMIT;

-- PURGE RECYCLEBIN; -- Clears the recycle bin so your database stays clean