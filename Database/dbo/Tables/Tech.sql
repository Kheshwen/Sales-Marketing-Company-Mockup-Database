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