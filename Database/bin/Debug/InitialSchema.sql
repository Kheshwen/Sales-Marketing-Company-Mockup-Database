-- 1. Independent Tables
CREATE TABLE Person (
    person_id NUMBER PRIMARY KEY,
    ic_number VARCHAR2(20) UNIQUE NOT NULL,
    full_name VARCHAR2(100) NOT NULL,
    first_name VARCHAR2(50) NOT NULL,
    surname_name VARCHAR2(50) NOT NULL,
    gender VARCHAR2(10) CHECK (gender IN ('Male', 'Female')),
    date_of_birth DATE NOT NULL,
    nationality VARCHAR2(50) NOT NULL,
    religion VARCHAR2(50) NOT NULL,
    race VARCHAR2(50) NOT NULL,
    marital_status VARCHAR2(20) CHECK (marital_status IN ('Single', 'Married', 'Divorced', 'Widowed'))
);

CREATE TABLE Contact (
    Contact_id NUMBER PRIMARY KEY,
    Contact_type_code VARCHAR2(10) UNIQUE NOT NULL,
    Phone_number NUMBER NOT NULL,
    Email_address VARCHAR2(50) NOT NULL CHECK (Email_address LIKE '%@%.%'),
    Prof_email VARCHAR2(50) NOT NULL CHECK (Prof_email LIKE '%@%.%'), -- Shortened
    Emerg_contact NUMBER NOT NULL, -- Shortened
    Linkedin_url VARCHAR2(50), -- Shortened
    Pref_Comm_Channel VARCHAR2(20) CHECK (Pref_Comm_Channel IN ('Email', 'Phone', 'WhatsApp')), -- Shortened
    Language_pref VARCHAR2(20), -- Shortened
    Job_title VARCHAR2(20) NOT NULL
);

CREATE TABLE WorkLocation (
    Location_id NUMBER PRIMARY KEY,
    Building_code VARCHAR2(10) UNIQUE NOT NULL, -- Shortened
    Location_name VARCHAR2(50) NOT NULL,
    Location_type VARCHAR2(50) CHECK (Location_type IN ('Office', 'Lab', 'Warehouse', 'Meeting Room')),
    Max_occupancy NUMBER NOT NULL, -- Shortened
    IT_infra_level NUMBER, -- Shortened
    Access_tier NUMBER, -- Shortened
    Operational_status VARCHAR2(50), -- Shortened
    Last_sanit_ts DATE NOT NULL, -- Shortened
    Exit_proximity NUMBER 
);

-- 2. Tables dependent on Contact
CREATE TABLE Address (
    Address_id NUMBER PRIMARY KEY,
    Address_type VARCHAR2(50) UNIQUE NOT NULL,
    Unit_no NUMBER,
    Address_line1 VARCHAR2(100) NOT NULL,
    Address_line2 VARCHAR2(100) NOT NULL,
    City VARCHAR2(20) NOT NULL,
    state VARCHAR2(20) NOT NULL,
    postcode VARCHAR2(10) NOT NULL,
    country VARCHAR2(10) NOT NULL,
    district VARCHAR2(10),
    contact_id NUMBER NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contact(Contact_id)
);

CREATE TABLE Employee (
    employee_id NUMBER PRIMARY KEY,
    role_id NUMBER UNIQUE NOT NULL,
    hire_date DATE NOT NULL,
    base_salary NUMBER,
    perf_rating NUMBER, -- Shortened
    exp_years NUMBER, -- Shortened
    department VARCHAR2(50) NOT NULL,
    employ_status VARCHAR2(50) NOT NULL, -- Shortened
    Leave_status VARCHAR2(50) NOT NULL,
    contact_id NUMBER NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contact(Contact_id)
);

-- 3. Tables dependent on Employee and Contact
CREATE TABLE Client (
    Client_id NUMBER PRIMARY KEY,
    Company_name VARCHAR2(50) NOT NULL,
    Industry_code VARCHAR2(10) NOT NULL, -- Shortened
    Annual_value NUMBER, -- Shortened
    Priority_tier NUMBER, -- Shortened
    Primary_contact NUMBER NOT NULL,
    Client_status VARCHAR2(20) NOT NULL,
    Client_activity VARCHAR2(20) NOT NULL,
    Company_SSM_no NUMBER UNIQUE NOT NULL,
    Bill_method VARCHAR2(20), -- Shortened
    Referral_source VARCHAR2(20),
    contact_id NUMBER NOT NULL,
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contact(Contact_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- 4. Employee Subclasses
CREATE TABLE Management (
    Management_id NUMBER PRIMARY KEY,
    Board_mem_id NUMBER UNIQUE NOT NULL, -- Shortened
    Manage_level VARCHAR2(50) NOT NULL, -- Shortened
    Budget_alloc VARCHAR2(100), -- Shortened
    Position VARCHAR2(50) NOT NULL,
    Board_status VARCHAR2(50),
    KPI_target VARCHAR2(50),
    Leave_approval NUMBER(1),
    Strategic_plan VARCHAR2(100),
    Bonus_eligible NUMBER(1),
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Tech (
    Tech_ID NUMBER PRIMARY KEY,
    Spec_Code VARCHAR2(10) UNIQUE NOT NULL,
    Tech_Role VARCHAR2(50) NOT NULL,
    Legacy_Access_Flag NUMBER(1) DEFAULT 0,
    Github_User VARCHAR2(100),
    Primary_Lang VARCHAR2(30),
    Jira_Quota VARCHAR2(50),
    Asset_Tag VARCHAR2(50) UNIQUE NOT NULL,
    Security_Level NUMBER DEFAULT 1,
    Branch_Access VARCHAR2(50),
    API_Key_Level VARCHAR2(20),
    Last_Assess_Date DATE NOT NULL,
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Finance (
    Finance_id NUMBER PRIMARY KEY,
    Fiscal_role_code NUMBER NOT NULL,
    Account_designation VARCHAR2(50) NOT NULL, -- Shortened
    Sign_auth_limit NUMBER, -- Shortened
    Audit_license_limit NUMBER,
    Payroll_auth_level NUMBER, -- Shortened
    Exp_approval_scope VARCHAR2(100), -- Shortened
    Tax_speciality VARCHAR2(50), -- Shortened
    Fiscal_KPI VARCHAR2(50),
    Ledger_access VARCHAR2(20), -- Shortened
    Report_deadline DATE NOT NULL, -- Shortened
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE SalesMarketing (
    SalesMarketing_id NUMBER PRIMARY KEY,
    Segment_id NUMBER NOT NULL, -- Shortened
    Sales_tier NUMBER,
    Month_quota NUMBER, -- Shortened
    CRM_profile VARCHAR2(50), -- Shortened
    Comm_tier NUMBER, -- Shortened
    Client_list VARCHAR2(100), -- Shortened
    Budget_authority VARCHAR2(100), -- Shortened
    PR_score NUMBER, -- Shortened
    Assigned_Geo_Territory VARCHAR2(50), -- Shortened
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Certification (
    Cert_id NUMBER PRIMARY KEY, -- Shortened
    Cert_name VARCHAR2(100) NOT NULL, -- Shortened
    Issuing_org VARCHAR2(100) NOT NULL, -- Shortened
    Validity_duration DATE NOT NULL,
    Pass_threshold NUMBER NOT NULL, -- Shortened
    Renewal_Req_Desc VARCHAR2(100) NOT NULL, -- Shortened
    Verify_url VARCHAR2(100) NOT NULL, -- Shortened
    Difficulty_level NUMBER,
    Skill_category VARCHAR2(50), -- Shortened
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- 5. Campaign & Operations
CREATE TABLE Campaign (
    Campaign_id NUMBER PRIMARY KEY,
    Version_tag VARCHAR2(10) NOT NULL,
    Campaign_name VARCHAR2(20) NOT NULL,
    Objective VARCHAR2(100) NOT NULL, -- Shortened
    employee_id NUMBER NOT NULL,
    client_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (client_id) REFERENCES Client(Client_id)
);

CREATE TABLE DigitalCampaign (
    Digital_id NUMBER PRIMARY KEY,
    Channel_type VARCHAR2(20) NOT NULL, -- Shortened
    Target_URL VARCHAR2(50) NOT NULL, -- Shortened
    SEO_keyword VARCHAR2(10), -- Shortened
    Ad_headline VARCHAR2(50) NOT NULL, -- Shortened
    Meta_desc VARCHAR2(1000) NOT NULL, -- Shortened
    Email_seq_id NUMBER NOT NULL, -- Shortened
    Cookie_days NUMBER, -- Shortened
    Domain_authority NUMBER,
    Canonical_link VARCHAR2(50), -- Shortened
    campaign_id NUMBER NOT NULL,
    FOREIGN KEY (campaign_id) REFERENCES Campaign(Campaign_id)
);

-- Mapping Tables
CREATE TABLE Meeting (
    Meeting_id NUMBER PRIMARY KEY,
    Meeting_date DATE UNIQUE NOT NULL,
    Subject VARCHAR2(20),
    Start_time DATE NOT NULL,
    End_time DATE NOT NULL,
    Meeting_type VARCHAR2(50),
    Agenda_summary VARCHAR2(1000),
    MOM_link VARCHAR2(1000) UNIQUE,
    Entity_type VARCHAR2(20),
    Entity_ID NUMBER,
    Follow_up_flag VARCHAR2(10),
    Security_level VARCHAR2(50),
    employee_id NUMBER NOT NULL,
    Location_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (Location_id) REFERENCES WorkLocation(Location_id),
    CONSTRAINT time_check CHECK (End_time > Start_time)
);

CREATE TABLE MeetingAttendance (
    meeting_id NUMBER NOT NULL,
    employee_id NUMBER NOT NULL,
    PRIMARY KEY (meeting_id, employee_id),
    FOREIGN KEY (meeting_id) REFERENCES Meeting(Meeting_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- [Remaining tables shortened and formatted similarly]