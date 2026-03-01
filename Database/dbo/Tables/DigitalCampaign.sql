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