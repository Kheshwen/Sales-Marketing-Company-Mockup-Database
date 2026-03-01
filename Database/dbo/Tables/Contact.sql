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