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