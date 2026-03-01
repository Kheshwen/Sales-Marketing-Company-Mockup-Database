-- 1. Independent Tables
CREATE TABLE Person (
    person_id NUMBER PRIMARY KEY,
    ic_number VARCHAR2(20) UNIQUE NOT NULL,
    full_name VARCHAR2(100) NOT NULL CHECK (LENGTH(full_name) > 0),
    first_name VARCHAR2(50) NOT NULL CHECK (LENGTH(first_name) > 0),
    surname_name VARCHAR2(50) NOT NULL CHECK (LENGTH(surname_name) > 0),
    gender VARCHAR2(10) CHECK (gender IN ('Male', 'Female')),
    date_of_birth DATE NOT NULL,
    nationality VARCHAR2(50) NOT NULL CHECK (LENGTH(nationality) > 0),
    religion VARCHAR2(50) NOT NULL CHECK (LENGTH(religion) > 0),
    race VARCHAR2(50) NOT NULL CHECK (LENGTH(race) > 0),
    marital_status VARCHAR2(20) CHECK (marital_status IN ('Single', 'Married', 'Divorced', 'Widowed'))
);

CREATE TABLE Contact (
    Contact_id NUMBER PRIMARY KEY,
    Contact_type_code VARCHAR2(10) UNIQUE NOT NULL,
    Phone_number NUMBER NOT NULL CHECK (Phone_number > 0),
    Email_address VARCHAR2(50) NOT NULL CHECK (Email_address LIKE '%@%.%'),
    Professional_email VARCHAR2(50) NOT NULL CHECK (Professional_email LIKE '%@%.%'),
    Emergency_contact NUMBER NOT NULL CHECK (Emergency_contact > 0),
    Linkedin_profile_url VARCHAR2(50) NOT NULL CHECK (Linkedin_profile_url LIKE 'https://%'),
    Preferred_communication_channel VARCHAR2(20) NOT NULL CHECK (Preferred_communication_channel IN ('Email', 'Phone', 'WhatsApp')),
    Language_preference VARCHAR2(20) NOT NULL CHECK (Language_preference IN ('English', 'Malay', 'Chinese', 'Other')),
    Job_title VARCHAR2(20) NOT NULL CHECK (LENGTH(Job_title) > 0)
);

CREATE TABLE WorkLocation (
    Location_id NUMBER PRIMARY KEY,
    Building_section_code VARCHAR2(10) UNIQUE NOT NULL,
    Location_name VARCHAR2(50) NOT NULL,
    Location_type VARCHAR2(50) NOT NULL CHECK (Location_type IN ('Office', 'Lab', 'Warehouse', 'Meeting Room')),
    Maximum_occupancy NUMBER NOT NULL CHECK (Maximum_occupancy > 0),
    IT_infrastructure_level NUMBER NOT NULL CHECK (IT_infrastructure_level BETWEEN 1 AND 5),
    Access_security_tier NUMBER NOT NULL CHECK (Access_security_tier BETWEEN 1 AND 4),
    Current_operational_status VARCHAR2(50) NOT NULL CHECK (Current_operational_status IN ('Active', 'Maintenance', 'Closed')),
    Last_sanitization_timestamp DATE NOT NULL CHECK (Last_sanitization_timestamp <= SYSDATE),
    Emergency_exit_proximity NUMBER NOT NULL CHECK (Emergency_exit_proximity >= 0)
);

-- 2. Tables dependent on Contact
CREATE TABLE Address (
    Address_id NUMBER PRIMARY KEY,
    Address_type VARCHAR2(50) UNIQUE NOT NULL,
    Unit_no NUMBER CHECK (Unit_no > 0),
    Address_line1 VARCHAR2(100) NOT NULL,
    Address_line2 VARCHAR2(100) NOT NULL,
    City VARCHAR2(20) NOT NULL CHECK (LENGTH(city) > 1),
    state VARCHAR2(20) NOT NULL CHECK (LENGTH(state) > 1),
    postcode VARCHAR2(10) NOT NULL CHECK (LENGTH(postcode) >= 4),
    country VARCHAR2(10) NOT NULL CHECK (LENGTH(country) > 1),
    district VARCHAR2(10),
    contact_id NUMBER NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contact(Contact_id)
);

CREATE TABLE Employee (
    employee_id NUMBER PRIMARY KEY,
    role_id NUMBER UNIQUE NOT NULL,
    hire_date DATE NOT NULL,
    base_salary NUMBER CHECK (base_salary > 0),
    performance_rating NUMBER CHECK (performance_rating BETWEEN 1 AND 5),
    years_of_experience NUMBER CHECK (years_of_experience >= 0),
    department VARCHAR2(50) NOT NULL CHECK (LENGTH(department) > 0),
    employementStatus VARCHAR2(50) NOT NULL CHECK (LENGTH(employementStatus) > 0),
    Leave_status VARCHAR2(50) NOT NULL CHECK (LENGTH(Leave_status) > 0),
    contact_id NUMBER NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contact(Contact_id)
);

-- 3. Tables dependent on Employee and Contact
CREATE TABLE Client (
    Client_id NUMBER PRIMARY KEY,
    Company_name VARCHAR2(50) NOT NULL CHECK (LENGTH(Company_name) > 0),
    Industry_sector_code VARCHAR2(10) NOT NULL CHECK (LENGTH(Industry_sector_code) > 0),
    Annual_contract_value NUMBER NOT NULL CHECK (Annual_contract_value >= 0),
    Client_priority_tier NUMBER NOT NULL CHECK (Client_priority_tier BETWEEN 1 AND 5),
    Primary_contact_person NUMBER NOT NULL,
    Client_status VARCHAR2(20) NOT NULL CHECK (Client_status IN ('Active', 'Inactive', 'Prospect', 'Suspended')),
    Client_activity VARCHAR2(20) NOT NULL CHECK (Client_activity IN ('High', 'Medium', 'Low', 'Dormant')),
    Company_SSM_no NUMBER UNIQUE NOT NULL CHECK (Company_SSM_no > 0),
    Preferred_billing_method VARCHAR2(20) NOT NULL CHECK (Preferred_billing_method IN ('Credit Card', 'Bank Transfer', 'Invoice', 'PayPal')),
    Referral_source VARCHAR2(20) NOT NULL CHECK (LENGTH(Referral_source) > 0),
    contact_ID NUMBER NOT NULL,
    Employee_ID NUMBER NOT NULL,
    FOREIGN KEY (contact_ID) REFERENCES Contact(Contact_id),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(employee_id)
);

-- 4. Employee Subclasses
CREATE TABLE Management (
    Management_id NUMBER PRIMARY KEY,
    Board_member_id NUMBER UNIQUE NOT NULL,
    Management_level VARCHAR2(50) NOT NULL CHECK (LENGTH(Management_level) > 0),
    Annual_budget_allocation VARCHAR2(100) NOT NULL CHECK (LENGTH(Annual_budget_allocation) > 0),
    Management_position VARCHAR2(50) NOT NULL CHECK (LENGTH(Management_position) > 0),
    Board_member_status VARCHAR2(50) NOT NULL CHECK (LENGTH(Board_member_status) > 0),
    KPI_target VARCHAR2(50) NOT NULL CHECK (LENGTH(KPI_target) > 0),
    Employee_leave_approval NUMBER(1) NOT NULL CHECK (Employee_leave_approval IN (0,1)),
    Strategic_initiative_plan VARCHAR2(100) NOT NULL CHECK (LENGTH(Strategic_initiative_plan) > 0),
    Bonus_eligibility NUMBER(1) NOT NULL CHECK (Bonus_eligibility IN (0,1)),
    Employee_ID NUMBER NOT NULL,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(employee_id)
);

CREATE TABLE Tech (
    Tech_ID NUMBER PRIMARY KEY,
    Tech_Specialization_Code VARCHAR2(10) UNIQUE NOT NULL,
    Tech_Role VARCHAR2(50) NOT NULL CHECK (LENGTH(Tech_Role) > 0),
    Legacy_System_Access_Flag NUMBER(1) DEFAULT 0 NOT NULL CHECK (Legacy_System_Access_Flag IN (0,1)),
    Github_Username VARCHAR2(100) NOT NULL CHECK (LENGTH(Github_Username) > 0),
    Primary_Programming_Language VARCHAR2(30) NOT NULL CHECK (LENGTH(Primary_Programming_Language) > 0),
    Jira_Ticket_Quota VARCHAR2(50) NOT NULL CHECK (TO_NUMBER(Jira_Ticket_Quota) >= 0),
    Hardware_Asset_Tag VARCHAR2(50) UNIQUE NOT NULL CHECK (LENGTH(Hardware_Asset_Tag) > 0),
    Security_Clearance_Level NUMBER DEFAULT 1 NOT NULL CHECK (Security_Clearance_Level >= 1),
    VCS_Branch_Access VARCHAR2(50) NOT NULL CHECK (LENGTH(VCS_Branch_Access) > 0),
    API_Access_Key_Level VARCHAR2(20) NOT NULL CHECK (LENGTH(API_Access_Key_Level) > 0),
    Last_Skill_Assessment_Date DATE NOT NULL,
    Employee_ID NUMBER NOT NULL,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(employee_id)
);

CREATE TABLE Finance (
    Finance_id NUMBER PRIMARY KEY,
    Fiscal_role_code NUMBER NOT NULL CHECK (Fiscal_role_code > 0),
    Accounting_designation VARCHAR2(50) NOT NULL CHECK (LENGTH(Accounting_designation) > 0),
    Signing_authority_limit NUMBER NOT NULL CHECK (Signing_authority_limit >= 0),
    Audit_license_limit NUMBER NOT NULL CHECK (Audit_license_limit >= 0),
    Payroll_authorization_level NUMBER NOT NULL CHECK (Payroll_authorization_level > 0),
    Expense_approval_scope VARCHAR2(100) NOT NULL CHECK (LENGTH(Expense_approval_scope) > 0),
    Tax_jurisdiction_speciality VARCHAR2(50) NOT NULL CHECK (LENGTH(Tax_jurisdiction_speciality) > 0),
    Fiscal_KPI VARCHAR2(50) NOT NULL CHECK (LENGTH(Fiscal_KPI) <= 5),
    Ledger_access_type VARCHAR2(20) NOT NULL CHECK (LENGTH(Ledger_access_type) > 0),
    Reporting_cycle_deadline DATE NOT NULL,
    Employee_ID NUMBER NOT NULL,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(employee_id)
);

CREATE TABLE SalesMarketing (
    SalesMarketing_id NUMBER PRIMARY KEY,
    Market_segment_id NUMBER NOT NULL CHECK (Market_segment_id > 0),
    Sales_tier NUMBER CHECK (Sales_tier BETWEEN 1 AND 5),
    Month_sales_quota NUMBER CHECK (Month_sales_quota >= 0),
    CRM_access_profile VARCHAR2(50) NOT NULL,
    Commission_tier_level NUMBER CHECK (Commission_tier_level >= 0),
    Potential_client_list VARCHAR2(100) CHECK (LENGTH(Potential_client_list) > 0),
    Campaign_budget_authority VARCHAR2(100) NOT NULL,
    Public_relation_score NUMBER CHECK (Public_relation_score BETWEEN 0 AND 100),
    Assigned_geographical_territory VARCHAR2(50) NOT NULL,
    Employee_ID NUMBER NOT NULL,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(employee_id)
);

CREATE TABLE Certification (
    Certification_id NUMBER PRIMARY KEY,
    Certification_name VARCHAR2(100) NOT NULL CHECK (LENGTH(Certification_name) > 0),
    Issuing_organization VARCHAR2(100) NOT NULL,
    Standard_validity_duration DATE NOT NULL CHECK (Standard_validity_duration > SYSDATE),
    Passing_score_treshold NUMBER NOT NULL CHECK (Passing_score_treshold >= 0),
    Renewal_requirement_description VARCHAR2(100) NOT NULL,
    Official_verification_url VARCHAR2(100) NOT NULL CHECK (Official_verification_url LIKE 'http%'),
    Difficulty_level NUMBER NOT NULL CHECK (Difficulty_level BETWEEN 1 AND 5),
    Global_skill_category VARCHAR2(50) NOT NULL CHECK (Global_skill_category IN ('Technical', 'Leadership', 'Communication', 'Finance', 'Operations')),
    Employee_ID NUMBER NOT NULL,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(employee_id)
);

-- 5. Campaign & Operations
CREATE TABLE Campaign (
    Campaign_id NUMBER PRIMARY KEY,
    Version_tag VARCHAR2(10) NOT NULL CHECK (Version_tag LIKE 'v%'),
    Campaign_name VARCHAR2(20) NOT NULL CHECK (LENGTH(Campaign_name) >= 3),
    Strategic_objective VARCHAR2(100) NOT NULL CHECK (LENGTH(Strategic_objective) > 10),
    Employee_ID NUMBER NOT NULL,
    client_ID NUMBER NOT NULL,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(employee_id),
    FOREIGN KEY (client_ID) REFERENCES Client(Client_id)
);

CREATE TABLE DigitalCampaign (
    Digital_id NUMBER PRIMARY KEY,
    Digital_channel_type VARCHAR2(20) NOT NULL CHECK (Digital_channel_type IN ('Social', 'Search', 'Email', 'Display', 'Video')),
    Target_URL_slug VARCHAR2(50) NOT NULL CHECK (Target_URL_slug NOT LIKE '% %'),
    SEO_keyword_primary VARCHAR2(10) CHECK (LENGTH(SEO_keyword_primary) > 0),
    Ad_copy_headline VARCHAR2(50) NOT NULL CHECK (LENGTH(Ad_copy_headline) <= 50),
    Meta_description_snippet VARCHAR2(1000) NOT NULL CHECK (LENGTH(Meta_description_snippet) BETWEEN 50 AND 160),
    Email_automation_sequence_ID NUMBER NOT NULL CHECK (Email_automation_sequence_ID > 0),
    Cookie_duration_days NUMBER NOT NULL CHECK (Cookie_duration_days BETWEEN 1 AND 90),
    Domain_authority_target NUMBER NOT NULL CHECK (Domain_authority_target BETWEEN 1 AND 100),
    Canonical_link_referance VARCHAR2(50) NOT NULL CHECK (Canonical_link_referance LIKE 'http%'),
    campaign_id NUMBER NOT NULL,
    FOREIGN KEY (campaign_id) REFERENCES Campaign(Campaign_id)
);

CREATE TABLE SocialMediaCampaign (
    SocialMedia_id NUMBER PRIMARY KEY,
    Platform_name VARCHAR2(20) NOT NULL CHECK (Platform_name IN ('Facebook', 'Instagram', 'TikTok', 'X', 'LinkedIn')),
    Handle_owner_id NUMBER NOT NULL CHECK (Handle_owner_id > 0),
    Influencer_partnership_level NUMBER NOT NULL CHECK (Influencer_partnership_level BETWEEN 1 AND 5),
    Primary_campaign_hashtag VARCHAR2(20) NOT NULL CHECK (Primary_campaign_hashtag LIKE '#%'),
    Content_format VARCHAR2(20) NOT NULL CHECK (Content_format IN ('Video', 'Image', 'Story', 'Carousel')),
    Engagement_rate_benchmark VARCHAR2(50) NOT NULL CHECK (LENGTH(Engagement_rate_benchmark) > 0),
    Post_frequency_schedule DATE NOT NULL,
    Community_management_protocol VARCHAR2(100) NOT NULL CHECK (LENGTH(Community_management_protocol) > 10),
    Influencer_contract_id NUMBER UNIQUE CHECK (Influencer_contract_id > 0),
    campaign_id NUMBER NOT NULL,
    FOREIGN KEY (campaign_id) REFERENCES Campaign(Campaign_id)
);

CREATE TABLE PhysicalCampaign (
    Physical_id NUMBER PRIMARY KEY,
    Event_type_code VARCHAR2(10) NOT NULL CHECK (Event_type_code IN ('CONF', 'EXPO', 'ROAD', 'FAIR')),
    Booth_square_footage VARCHAR2(10) NOT NULL CHECK (LENGTH(Booth_square_footage) > 0),
    Technical_equipment_list VARCHAR2(50) NOT NULL CHECK (LENGTH(Technical_equipment_list) > 0),
    Print_vendor_acc_id NUMBER NOT NULL CHECK (Print_vendor_acc_id > 0),
    Logistic_carrier_id NUMBER NOT NULL CHECK (Logistic_carrier_id > 0),
    Onsite_lead_capture_tool VARCHAR2(50) NOT NULL CHECK (LENGTH(Onsite_lead_capture_tool) > 0),
    Insurance_coverage_id NUMBER NOT NULL CHECK (Insurance_coverage_id > 0),
    Venue_location VARCHAR2(50) NOT NULL CHECK (LENGTH(Venue_location) > 0),
    Event_staffing_count NUMBER NOT NULL CHECK (Event_staffing_count >= 1),
    campaign_id NUMBER NOT NULL,
    FOREIGN KEY (campaign_id) REFERENCES Campaign(Campaign_id)
);

CREATE TABLE Proposal (
    Proposal_id NUMBER PRIMARY KEY,
    Proposal_reference_no NUMBER UNIQUE NOT NULL,
    Proposal_status VARCHAR2(20) NOT NULL CHECK (Proposal_status IN ('Draft', 'Sent', 'Accepted', 'Revised', 'Rejected')),
    Proposal_title VARCHAR2(50) NOT NULL CHECK (LENGTH(Proposal_title) > 0),
    Executive_summary VARCHAR2(1000) NOT NULL CHECK (LENGTH(Executive_summary) > 50),
    Total_investment_value NUMBER NOT NULL CHECK (Total_investment_value >= 0),
    Payment_terms VARCHAR2(50) NOT NULL CHECK (LENGTH(Payment_terms) > 0),
    Validity_period_end DATE NOT NULL CHECK (Validity_period_end > SYSDATE),
    Estimated_timeline VARCHAR2(20) NOT NULL CHECK (LENGTH(Estimated_timeline) > 0),
    Approval_status NUMBER(1) NOT NULL CHECK (Approval_status IN (0, 1)),
    client_id NUMBER NOT NULL,
    SalesMarketing_id NUMBER NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Client(Client_id),
    FOREIGN KEY (SalesMarketing_id) REFERENCES SalesMarketing(SalesMarketing_id)
);

CREATE TABLE WorkOrder (
    WorkOrder_id NUMBER PRIMARY KEY,
    Project_phase_order VARCHAR2(50) UNIQUE NOT NULL,
    Task_title VARCHAR2(20) NOT NULL CHECK (LENGTH(Task_title) <= 20),
    Task_detailed_description VARCHAR2(100) NOT NULL CHECK (LENGTH(Task_detailed_description) <= 100),
    Priority_level VARCHAR2(50) NOT NULL CHECK (Priority_level IN ('Low','Medium','High','Critical')),
    Execution_status NUMBER(1) NOT NULL CHECK (Execution_status IN (0, 1)),
    Scheduled_start_date DATE NOT NULL,
    Hard_deadline_stamp DATE NOT NULL,
    Estimated_hours DATE NOT NULL,
    Actual_hours DATE NOT NULL,
    client_id NUMBER NOT NULL,
    tech_id NUMBER NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Client(Client_id),
    FOREIGN KEY (tech_id) REFERENCES Tech(Tech_ID)
);

CREATE TABLE Meeting (
    Meeting_id NUMBER PRIMARY KEY,
    Meeting_date DATE UNIQUE NOT NULL,
    Meeting_subject VARCHAR2(20) NOT NULL CHECK (LENGTH(Meeting_subject) <= 20),
    Start_time DATE NOT NULL,
    End_time DATE NOT NULL CHECK (End_time > Start_time),
    Meeting_type VARCHAR2(50) NOT NULL CHECK (Meeting_type IN ('Internal','Client','Board','Training','Other')),
    Agenda_summary VARCHAR2(1000) NOT NULL CHECK (LENGTH(Agenda_summary) <= 1000),
    Minute_of_meeting_link VARCHAR2(1000) UNIQUE CHECK (LENGTH(Minute_of_meeting_link) <= 1000),
    Related_entity_type VARCHAR2(20) NOT NULL CHECK (Related_entity_type IN ('Project','Task','WorkOrder','Campaign')),
    Related_entity_ID NUMBER NOT NULL CHECK (Related_entity_ID > 0),
    Follow_up_action_flag VARCHAR2(10) NOT NULL CHECK (Follow_up_action_flag IN ('Yes','No')),
    Security_requirement_level VARCHAR2(50) NOT NULL CHECK (Security_requirement_level IN ('Low','Medium','High','Confidential')),
    employee_id NUMBER NOT NULL,
    Location_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (Location_id) REFERENCES WorkLocation(Location_id)
);

CREATE TABLE CampaignExecution (
    Execution_id NUMBER PRIMARY KEY,
    Curr_execution_status VARCHAR2(50) UNIQUE NOT NULL,
    Actual_launch_timestamp VARCHAR2(50) NOT NULL CHECK (LENGTH(Actual_launch_timestamp) > 0),
    Real_time_spend NUMBER NOT NULL CHECK (Real_time_spend >= 0),
    Impression_count NUMBER NOT NULL CHECK (Impression_count >= 0),
    Click_through_rate NUMBER NOT NULL CHECK (Click_through_rate BETWEEN 0 AND 100),
    Leads_generated_count NUMBER NOT NULL CHECK (Leads_generated_count >= 0),
    Cost_per_lead VARCHAR2(20) NOT NULL CHECK (LENGTH(Cost_per_lead) > 0),
    Incident_log_summary VARCHAR2(50) NOT NULL CHECK (LENGTH(Incident_log_summary) > 0),
    Last_performance_update VARCHAR2(1000) NOT NULL CHECK (LENGTH(Last_performance_update) > 0),
    Data_collection_status VARCHAR2(100) NOT NULL CHECK (Data_collection_status IN ('Active', 'Partial', 'Synchronizing', 'Archived')),
    campaign_id NUMBER NOT NULL,
    FOREIGN KEY (campaign_id) REFERENCES Campaign(Campaign_id)
);

CREATE TABLE CampaignStatus (
    Status_id NUMBER PRIMARY KEY,
    Status_change_id NUMBER UNIQUE NOT NULL,
    Status_state VARCHAR2(20) NOT NULL CHECK (Status_state IN ('Pending', 'Active', 'On Hold', 'Completed', 'Cancelled')),
    Status_update_timestamp VARCHAR2(50) NOT NULL CHECK (LENGTH(Status_update_timestamp) > 0),
    Change_reason_code VARCHAR2(20) NOT NULL CHECK (LENGTH(Change_reason_code) > 0),
    Manager_comments VARCHAR2(50) NOT NULL CHECK (LENGTH(Manager_comments) > 5),
    Automatics_flag VARCHAR2(50) NOT NULL CHECK (Automatics_flag IN ('Yes', 'No', 'True', 'False')),
    Priority_level_at_time VARCHAR2(50) NOT NULL CHECK (Priority_level_at_time IN ('Low', 'Medium', 'High', 'Critical')),
    Previous_state_id NUMBER NOT NULL CHECK (Previous_state_id >= 0),
    Notification_sent_date DATE NOT NULL CHECK (Notification_sent_date <= SYSDATE),
    Estimated_resume_date DATE NOT NULL CHECK (Estimated_resume_date >= SYSDATE),
    Workflow_step_number NUMBER NOT NULL CHECK (Workflow_step_number > 0),
    execution_id NUMBER NOT NULL,
    salesmarketing_id NUMBER NOT NULL,
    FOREIGN KEY (execution_id) REFERENCES CampaignExecution(Execution_id),
    FOREIGN KEY (salesmarketing_id) REFERENCES SalesMarketing(SalesMarketing_id)
);

CREATE TABLE PostCampaignReport (
    Report_id NUMBER PRIMARY KEY,
    Audit_version NUMBER UNIQUE NOT NULL,
    Final_revenue_generated VARCHAR2(50) NOT NULL CHECK (LENGTH(Final_revenue_generated) > 0),
    Total_actual_spend VARCHAR2(50) NOT NULL CHECK (LENGTH(Total_actual_spend) > 0),
    ROI_percentage NUMBER NOT NULL CHECK (ROI_percentage >= -100),
    Goal_achievement VARCHAR2(50) NOT NULL CHECK (Goal_achievement IN ('Exceeded', 'Met', 'Partial', 'Not Met')),
    Top_performing_channel VARCHAR2(50) NOT NULL CHECK (LENGTH(Top_performing_channel) > 0),
    Client_feedback_summary VARCHAR2(50) NOT NULL CHECK (LENGTH(Client_feedback_summary) > 0),
    Incident_impact_assessment VARCHAR2(50) NOT NULL CHECK (LENGTH(Incident_impact_assessment) > 0),
    Report_generation_date DATE NOT NULL CHECK (Report_generation_date <= SYSDATE),
    Presentation_Link VARCHAR2(50) NOT NULL CHECK (Presentation_Link LIKE 'http%'),
    Reviewed_by_Manager_id VARCHAR2(50) NOT NULL CHECK (LENGTH(Reviewed_by_Manager_id) > 0),
    execution_id NUMBER NOT NULL,
    salesmarketing_id NUMBER NOT NULL,
    FOREIGN KEY (execution_id) REFERENCES CampaignExecution(Execution_id),
    FOREIGN KEY (salesmarketing_id) REFERENCES SalesMarketing(SalesMarketing_id)
);

CREATE TABLE Campaignideas (
    Idea_id NUMBER PRIMARY KEY,
    Idea_title VARCHAR2(50) UNIQUE NOT NULL,
    Campaign_type VARCHAR2(50) NOT NULL CHECK (Campaign_type IN ('Digital', 'Physical', 'Hybrid', 'Social')),
    Strategic_objectives VARCHAR2(50) NOT NULL CHECK (LENGTH(Strategic_objectives) > 10),
    Target_audience NUMBER NOT NULL CHECK (Target_audience > 0),
    Draft_status VARCHAR2(50) NOT NULL CHECK (Draft_status IN ('Draft', 'Under Review', 'Approved', 'Rejected')),
    Estimated_budget_requirement VARCHAR2(20) NOT NULL CHECK (LENGTH(Estimated_budget_requirement) > 0),
    Creative_concpet_brief VARCHAR2(100) NOT NULL CHECK (LENGTH(Creative_concpet_brief) > 20),
    Project_ROI_metric VARCHAR2(100) NOT NULL CHECK (LENGTH(Project_ROI_metric) > 0),
    Creation_timestamp NUMBER NOT NULL CHECK (Creation_timestamp > 0),
    Last_modified_date DATE,
    salesmarketing_id NUMBER NOT NULL,
    client_id NUMBER NOT NULL,
    FOREIGN KEY (salesmarketing_id) REFERENCES SalesMarketing(SalesMarketing_id),
    FOREIGN KEY (client_id) REFERENCES Client(Client_id)
);

-- 6. Financial Tables
CREATE TABLE FinanceRecord (
    Transaction_id NUMBER PRIMARY KEY,
    Fiscal_year NUMBER UNIQUE NOT NULL CHECK (Fiscal_year BETWEEN 2020 AND 2100),
    Posting_date DATE NOT NULL CHECK (Posting_date <= SYSDATE),
    Transaction_status VARCHAR2(50) NOT NULL CHECK (Transaction_status IN ('Pending', 'Posted', 'Reversed', 'Void')),
    Currency_code VARCHAR2(50) NOT NULL CHECK (Currency_code IN ('MYR', 'USD', 'EUR', 'SGD')),
    General_ledger_code VARCHAR2(50) NOT NULL CHECK (LENGTH(General_ledger_code) >= 4),
    Base_amount NUMBER NOT NULL CHECK (Base_amount >= 0),
    Tax_amount NUMBER NOT NULL CHECK (Tax_amount >= 0),
    Total_net_value VARCHAR2(50) NOT NULL CHECK (LENGTH(Total_net_value) > 0),
    Authorization_code VARCHAR2(50) NOT NULL CHECK (LENGTH(Authorization_code) > 0), -- Replaced duplicate Total_net_value length check from doc
    Exchange_rate VARCHAR2(50) NOT NULL CHECK (LENGTH(Exchange_rate) > 0),
    finance_id NUMBER NOT NULL,
    FOREIGN KEY (finance_id) REFERENCES Finance(Finance_id)
);

CREATE TABLE Revenue (
    Revenue_id NUMBER PRIMARY KEY,
    Revenue_stream_id NUMBER UNIQUE NOT NULL,
    Payment_method VARCHAR2(50) NOT NULL CHECK (Payment_method IN ('Credit Card', 'Wire Transfer', 'Cash', 'Cheque')),
    Invoice_reference_number NUMBER UNIQUE NOT NULL CHECK (Invoice_reference_number > 0),
    Discount_applied NUMBER NOT NULL CHECK (Discount_applied >= 0),
    Recurring_revenue_flag VARCHAR2(20) NOT NULL CHECK (Recurring_revenue_flag IN ('Yes', 'No')),
    Collection_cycle_days NUMBER NOT NULL CHECK (Collection_cycle_days BETWEEN 0 AND 365),
    Tax_exempt_status VARCHAR2(20) NOT NULL CHECK (Tax_exempt_status IN ('Exempt', 'Taxable', 'Zero-Rated')),
    Recognition_date DATE NOT NULL CHECK (Recognition_date <= SYSDATE),
    Revenue_net_amount NUMBER NOT NULL CHECK (Revenue_net_amount >= 0), 
    client_id NUMBER NOT NULL,
    transaction_id NUMBER NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Client(Client_id),
    FOREIGN KEY (transaction_id) REFERENCES FinanceRecord(Transaction_id)
);

CREATE TABLE Expenditure (
    Expenditure_id NUMBER PRIMARY KEY,
    Expense_category_id NUMBER UNIQUE NOT NULL,
    Pay_period_cycle VARCHAR2(50) NOT NULL CHECK (Pay_period_cycle IN ('Weekly', 'Bi-Weekly', 'Monthly', 'Quarterly')),
    Gross_salary_amount NUMBER NOT NULL CHECK (Gross_salary_amount >= 0),
    Insurance_cost NUMBER NOT NULL CHECK (Insurance_cost >= 0),
    Departmental_budget NUMBER NOT NULL CHECK (Departmental_budget > 0),
    Spending_type VARCHAR2(50) NOT NULL CHECK (Spending_type IN ('Fixed', 'Variable', 'Capital', 'Operational')),
    Reimbursement_status VARCHAR2(50) NOT NULL CHECK (Reimbursement_status IN ('Pending', 'Approved', 'Paid', 'Rejected')),
    Amortization_period VARCHAR2(50) NOT NULL CHECK (LENGTH(Amortization_period) > 0),
    Budget_variance_amount NUMBER NOT NULL, 
    Approval_workflow_id NUMBER NOT NULL CHECK (Approval_workflow_id > 0),
    transaction_id NUMBER NOT NULL,
    FOREIGN KEY (transaction_id) REFERENCES FinanceRecord(Transaction_id)
);

-- 7. Explosion / Mapping Tables
CREATE TABLE MeetingAttendance (
    meeting_id NUMBER NOT NULL,
    employee_id NUMBER NOT NULL,
    PRIMARY KEY (meeting_id, employee_id),
    FOREIGN KEY (meeting_id) REFERENCES Meeting(Meeting_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE EmployeeCertification (
    employee_id NUMBER NOT NULL,
    Certification_id NUMBER NOT NULL,
    PRIMARY KEY (employee_id, Certification_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (Certification_id) REFERENCES Certification(Certification_id)
);

CREATE TABLE PostCampaignRevenue (
    report_id NUMBER NOT NULL,
    revenue_id NUMBER NOT NULL,
    PRIMARY KEY (report_id, revenue_id),
    FOREIGN KEY (report_id) REFERENCES PostCampaignReport(Report_id),
    FOREIGN KEY (revenue_id) REFERENCES Revenue(Revenue_id)
);

CREATE TABLE EmployeePerson (
    employee_id NUMBER NOT NULL,
    person_id NUMBER NOT NULL,
    PRIMARY KEY (employee_id, person_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

CREATE TABLE EmployeeWorkstation (
    employee_id NUMBER NOT NULL,
    location_id NUMBER NOT NULL,
    PRIMARY KEY (employee_id, location_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (location_id) REFERENCES WorkLocation(Location_id)
);
