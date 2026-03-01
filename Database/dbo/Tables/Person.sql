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