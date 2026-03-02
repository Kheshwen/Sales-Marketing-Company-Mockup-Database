-- 1. Independent Tables (No Foreign Keys)
CREATE TABLE Person (
    person_id VARCHAR2(10) PRIMARY KEY,
    ic_number VARCHAR2(20) UNIQUE NOT NULL,
    full_name VARCHAR2(100) NOT NULL CHECK (LENGTH(full_name) > 0),
    first_name VARCHAR2(50) NOT NULL CHECK (LENGTH(first_name) > 0),
    surname_name VARCHAR2(50) NOT NULL CHECK (LENGTH(surname_name) > 0),
    gender VARCHAR2(10) CHECK (gender IN ('Male', 'Female')),
    date_of_birth DATE NOT NULL CHECK (date_of_birth <= SYSDATE),
    nationality VARCHAR2(50) NOT NULL CHECK (LENGTH(nationality) > 0),
    religion VARCHAR2(50) NOT NULL CHECK (LENGTH(religion) > 0),
    race VARCHAR2(50) NOT NULL CHECK (LENGTH(race) > 0),
    marital_status VARCHAR2(20) CHECK (marital_status IN ('Single', 'Married', 'Divorced', 'Widowed'))
);

CREATE TABLE Contact (
    contact_id VARCHAR2(10) PRIMARY KEY,
    contact_type_code VARCHAR2(10) UNIQUE NOT NULL,
    phone_number NUMBER NOT NULL CHECK (phone_number > 0),
    email_address VARCHAR2(50) NOT NULL CHECK (email_address LIKE '%@%.%'),
    professional_email VARCHAR2(50) NOT NULL CHECK (professional_email LIKE '%@%.%'),
    emergency_contact NUMBER NOT NULL CHECK (emergency_contact > 0),
    linkedin_profile_url VARCHAR2(50) NOT NULL CHECK (linkedin_profile_url LIKE 'https://%'),
    preferred_communication_channel VARCHAR2(20) NOT NULL CHECK (preferred_communication_channel IN ('Email', 'Phone', 'WhatsApp')),
    language_preference VARCHAR2(20) NOT NULL CHECK (language_preference IN ('English', 'Malay', 'Chinese', 'Other')),
    job_title VARCHAR2(20) NOT NULL CHECK (LENGTH(job_title) > 0)
);

CREATE TABLE WorkLocation (
    location_id VARCHAR2(10) PRIMARY KEY,
    building_section_code VARCHAR2(10) UNIQUE NOT NULL,
    location_name VARCHAR2(50) NOT NULL,
    location_type VARCHAR2(50) NOT NULL CHECK (location_type IN ('Office', 'Lab', 'Warehouse', 'Meeting Room')),
    maximum_occupancy NUMBER NOT NULL CHECK (maximum_occupancy > 0),
    it_infrastructure_level NUMBER NOT NULL CHECK (it_infrastructure_level BETWEEN 1 AND 5),
    access_security_tier NUMBER NOT NULL CHECK (access_security_tier BETWEEN 1 AND 4),
    current_operational_status VARCHAR2(50) NOT NULL CHECK (current_operational_status IN ('Active', 'Maintenance', 'Closed')),
    last_sanitization_timestamp DATE NOT NULL CHECK (last_sanitization_timestamp <= SYSDATE),
    emergency_exit_proximity NUMBER NOT NULL CHECK (emergency_exit_proximity >= 0)
);

CREATE TABLE Certification (
    certification_id VARCHAR2(10) PRIMARY KEY,
    certification_name VARCHAR2(100) NOT NULL CHECK (LENGTH(certification_name) > 0),
    issuing_organization VARCHAR2(100) NOT NULL,
    standard_validity_duration NUMBER(5,2) NOT NULL,
    passing_score_treshold NUMBER NOT NULL CHECK (passing_score_treshold >= 0),
    renewal_requirement_description VARCHAR2(100) NOT NULL CHECK (LENGTH(renewal_requirement_description) > 0),
    official_verification_url VARCHAR2(100) NOT NULL CHECK (official_verification_url LIKE 'http%'),
    difficulty_level NUMBER NOT NULL CHECK (difficulty_level BETWEEN 1 AND 5),
    global_skill_category VARCHAR2(50) NOT NULL CHECK (global_skill_category IN ('Technical', 'Leadership', 'Communication', 'Finance', 'Operations')),
    certificate_ref_number NUMBER NOT NULL CHECK (certificate_ref_number >= 0)
);

-- 2. First-Level Dependencies
CREATE TABLE Address (
    address_id VARCHAR2(10) PRIMARY KEY,
    address_type VARCHAR2(50) UNIQUE NOT NULL,
    unit_no NUMBER CHECK (unit_no > 0),
    address_line1 VARCHAR2(100) NOT NULL,
    address_line2 VARCHAR2(100) NOT NULL,
    city VARCHAR2(20) NOT NULL CHECK (LENGTH(city) > 1),
    state VARCHAR2(20) NOT NULL CHECK (LENGTH(state) > 1),
    postcode VARCHAR2(10) NOT NULL CHECK (LENGTH(postcode) >= 4),
    country VARCHAR2(10) NOT NULL CHECK (LENGTH(country) > 1),
    district VARCHAR2(10),
    contact_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contact(contact_id)
);

CREATE TABLE Employee (
    employee_id VARCHAR2(10) PRIMARY KEY,
    role_id NUMBER UNIQUE NOT NULL,
    hire_date DATE NOT NULL,
    base_salary NUMBER CHECK (base_salary > 0),
    performance_rating NUMBER CHECK (performance_rating BETWEEN 1 AND 5),
    years_of_experience NUMBER CHECK (years_of_experience >= 0),
    department VARCHAR2(50) NOT NULL CHECK (LENGTH(department) > 0),
    employementStatus VARCHAR2(50) NOT NULL CHECK (LENGTH(employementStatus) > 0),
    Leave_status VARCHAR2(50) NOT NULL CHECK (LENGTH(Leave_status) > 0),
    contact_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contact(contact_id)
);

-- 3. Second-Level Dependencies (Rely on Employee & Contact)
CREATE TABLE Client (
    client_id VARCHAR2(10) PRIMARY KEY,
    company_name VARCHAR2(50) NOT NULL CHECK (LENGTH(company_name) > 0),
    industry_sector_code VARCHAR2(10) NOT NULL CHECK (LENGTH(industry_sector_code) > 0),
    annual_contract_value NUMBER NOT NULL CHECK (annual_contract_value >= 0),
    client_priority_tier NUMBER NOT NULL CHECK (client_priority_tier BETWEEN 1 AND 5),
    primary_contact_person NUMBER NOT NULL,
    client_status VARCHAR2(20) NOT NULL CHECK (client_status IN ('Active', 'Inactive', 'Prospect', 'Suspended')),
    client_activity VARCHAR2(20) NOT NULL CHECK (client_activity IN ('High', 'Medium', 'Low', 'Dormant')),
    company_SSM_no NUMBER UNIQUE NOT NULL CHECK (company_SSM_no > 0),
    preferred_billing_method VARCHAR2(20) NOT NULL CHECK (preferred_billing_method IN ('Credit Card', 'Bank Transfer', 'Invoice', 'PayPal')),
    referral_source VARCHAR2(20) NOT NULL CHECK (LENGTH(referral_source) > 0),
    contact_id VARCHAR2(10) NOT NULL,
    employee_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contact(contact_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Management (
    management_id VARCHAR2(10) PRIMARY KEY,
    board_member_id NUMBER UNIQUE NOT NULL,
    management_level VARCHAR2(50) NOT NULL CHECK (LENGTH(management_level) > 0),
    annual_budget_allocation NUMBER NOT NULL CHECK (annual_budget_allocation > 0),
    management_position VARCHAR2(50) NOT NULL CHECK (LENGTH(management_position) > 0),
    board_member_status VARCHAR2(50) NOT NULL CHECK (LENGTH(board_member_status) > 0),
    kpi_target VARCHAR2(50) NOT NULL CHECK (LENGTH(kpi_target) > 0),
    employee_leave_approval VARCHAR2(10) NOT NULL CHECK (employee_leave_approval IN ('Full', 'Limited')),
    strategic_initiative_plan VARCHAR2(100) NOT NULL CHECK (LENGTH(strategic_initiative_plan) > 0),
    bonus_eligibility VARCHAR2(15) NOT NULL CHECK (bonus_eligibility IN ('Eligible', 'Not Eligible')),
    employee_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Tech (
    tech_id VARCHAR2(10) PRIMARY KEY,
    tech_specialization_code VARCHAR2(10) UNIQUE NOT NULL,
    tech_role VARCHAR2(50) NOT NULL CHECK (LENGTH(tech_role) > 0),
    legacy_system_access_flag NUMBER(1) DEFAULT 0 NOT NULL CHECK (legacy_system_access_flag IN (0,1)),
    github_username VARCHAR2(100) NOT NULL CHECK (LENGTH(github_username) > 0),
    primary_programming_language VARCHAR2(30) NOT NULL CHECK (LENGTH(primary_programming_language) > 0),
    jira_ticket_quota VARCHAR2(50) NOT NULL CHECK (TO_NUMBER(jira_ticket_quota) >= 0),
    hardware_asset_tag VARCHAR2(50) UNIQUE NOT NULL CHECK (LENGTH(hardware_asset_tag) > 0),
    security_clearance_level VARCHAR2(10) DEFAULT 'Low' NOT NULL CHECK (security_clearance_level IN ('High','Low')),
    vcs_branch_access VARCHAR2(50) NOT NULL CHECK (LENGTH(vcs_branch_access) > 0),
    api_access_key_level VARCHAR2(20) NOT NULL CHECK (LENGTH(api_access_key_level) > 0),
    last_skill_assessment_date DATE NOT NULL,
    employee_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Finance (
    finance_id VARCHAR2(10) PRIMARY KEY,
    fiscal_role_code VARCHAR2(10) UNIQUE NOT NULL,
    accounting_designation VARCHAR2(50) NOT NULL CHECK (LENGTH(accounting_designation) > 0),
    signing_authority_limit NUMBER NOT NULL CHECK (signing_authority_limit >= 0),
    audit_license_limit NUMBER NOT NULL CHECK (audit_license_limit >= 0),
    payroll_authorization_level VARCHAR2(10) NOT NULL CHECK (payroll_authorization_level IN ('Level 1', 'Level 2', 'Level 3')),
    expense_approval_scope VARCHAR2(100) NOT NULL CHECK (LENGTH(expense_approval_scope) > 0),
    tax_jurisdiction_speciality VARCHAR2(50) NOT NULL CHECK (LENGTH(tax_jurisdiction_speciality) > 0),
    fiscal_kpi VARCHAR2(50) NOT NULL CHECK (LENGTH(fiscal_kpi) <= 50),
    ledger_access_type VARCHAR2(20) NOT NULL CHECK (ledger_access_type IN ('Full','Limited')),
    reporting_cycle_deadline DATE NOT NULL,
    employee_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE SalesMarketing (
    salesmarketing_id VARCHAR2(10) PRIMARY KEY,
    market_segment_id NUMBER NOT NULL CHECK (market_segment_id > 0),
    sales_tier VARCHAR2(10) NOT NULL CHECK (sales_tier IN ('Gold','Silver','Bronze')),
    month_sales_quota NUMBER CHECK (month_sales_quota >= 0),
    crm_access_profile VARCHAR2(50) NOT NULL,
    commission_tier_level VARCHAR2(10) CHECK (commission_tier_level IN ('Tier 1', 'Tier 2', 'Tier 3')),
    potential_client_list VARCHAR2(100) CHECK (LENGTH(potential_client_list) > 0),
    campaign_budget_authority NUMBER NOT NULL,
    public_relation_score NUMBER CHECK (public_relation_score BETWEEN 0 AND 100),
    assigned_geographical_territory VARCHAR2(50) NOT NULL,
    employee_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Meeting (
    meeting_id VARCHAR2(10) PRIMARY KEY,
    meeting_date DATE NOT NULL,
    meeting_subject VARCHAR2(20) NOT NULL CHECK (LENGTH(meeting_subject) <= 20),
    start_time DATE NOT NULL,
    end_time DATE NOT NULL CHECK (end_time > start_time),
    meeting_type VARCHAR2(50) NOT NULL CHECK (meeting_type IN ('Internal','Client','Board','Training','Other')),
    agenda_summary VARCHAR2(1000) NOT NULL CHECK (LENGTH(agenda_summary) <= 1000),
    minute_of_meeting_link VARCHAR2(1000) UNIQUE CHECK (LENGTH(minute_of_meeting_link) <= 1000),
    related_entity_type VARCHAR2(20) NOT NULL CHECK (related_entity_type IN ('Project','Task','WorkOrder','Campaign')),
    related_entity_id NUMBER NOT NULL CHECK (related_entity_id > 0),
    follow_up_action_flag VARCHAR2(10) NOT NULL CHECK (follow_up_action_flag IN ('Yes','No')),
    security_requirement_level VARCHAR2(50) NOT NULL CHECK (security_requirement_level IN ('Low','Medium','High','Confidential')),
    employee_id VARCHAR2(10) NOT NULL,
    location_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (location_id) REFERENCES WorkLocation(location_id)
);

-- 4. Third-Level Dependencies
CREATE TABLE Campaign (
    campaign_id VARCHAR2(10) PRIMARY KEY,
    version_tag VARCHAR2(10) UNIQUE NOT NULL CHECK (version_tag LIKE 'v%'),
    campaign_name VARCHAR2(20) NOT NULL CHECK (LENGTH(campaign_name) >= 3),
    strategic_objective VARCHAR2(100) NOT NULL CHECK (LENGTH(strategic_objective) > 10),
    employee_id VARCHAR2(10) NOT NULL,
    client_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE WorkOrder (
    workorder_id VARCHAR2(10) PRIMARY KEY,
    project_phase_order VARCHAR2(50) UNIQUE NOT NULL,
    task_title VARCHAR2(20) NOT NULL CHECK (LENGTH(task_title) <= 20),
    task_detailed_description VARCHAR2(100) NOT NULL CHECK (LENGTH(task_detailed_description) <= 100),
    priority_level VARCHAR2(50) NOT NULL CHECK (priority_level IN ('Low','Medium','High','Critical')),
    execution_status NUMBER(1) NOT NULL CHECK (execution_status IN (0,1)),
    scheduled_start_date DATE NOT NULL,
    hard_deadline_stamp DATE NOT NULL,
    estimated_hours NUMBER NOT NULL CHECK (estimated_hours >= 0),
    actual_hours NUMBER NOT NULL CHECK (actual_hours >= 0),
    client_id VARCHAR2(10) NOT NULL,
    tech_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Client(client_id),
    FOREIGN KEY (tech_id) REFERENCES Tech(tech_id)
);

CREATE TABLE Proposal (
    proposal_id VARCHAR2(10) PRIMARY KEY,
    proposal_reference_no NUMBER UNIQUE NOT NULL,
    proposal_status VARCHAR2(20) NOT NULL CHECK (proposal_status IN ('Draft', 'Sent', 'Accepted', 'Revised', 'Rejected')),
    proposal_title VARCHAR2(50) NOT NULL CHECK (LENGTH(proposal_title) > 0),
    executive_summary VARCHAR2(1000) NOT NULL CHECK (LENGTH(executive_summary) > 50),
    total_investment_value NUMBER NOT NULL CHECK (total_investment_value >= 0),
    payment_terms VARCHAR2(50) NOT NULL CHECK (LENGTH(payment_terms) > 0),
    validity_period_end DATE NOT NULL CHECK (validity_period_end > SYSDATE),
    estimated_timeline VARCHAR2(20) NOT NULL CHECK (LENGTH(estimated_timeline) > 0),
    approval_status NUMBER(1) NOT NULL CHECK (approval_status IN (0,1)),
    client_id VARCHAR2(10) NOT NULL,
    salesmarketing_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Client(client_id),
    FOREIGN KEY (salesmarketing_id) REFERENCES SalesMarketing(salesmarketing_id)
);

CREATE TABLE Campaignideas (
    idea_id VARCHAR2(10) PRIMARY KEY,
    idea_title VARCHAR2(50) UNIQUE NOT NULL,
    campaign_type VARCHAR2(50) NOT NULL CHECK (campaign_type IN ('Digital', 'Physical', 'Hybrid', 'Social')),
    strategic_objectives VARCHAR2(50) NOT NULL CHECK (LENGTH(strategic_objectives) > 10),
    target_audience VARCHAR2(50) NOT NULL CHECK (LENGTH(target_audience) > 0),
    draft_status VARCHAR2(50) NOT NULL CHECK (draft_status IN ('Draft', 'Under Review', 'Approved', 'Rejected')),
    estimated_budget_requirement NUMBER NOT NULL CHECK (estimated_budget_requirement > 0),
    creative_concept_brief VARCHAR2(100) NOT NULL CHECK (LENGTH(creative_concept_brief) > 20),
    project_roi_metric VARCHAR2(100) NOT NULL CHECK (LENGTH(project_roi_metric) > 0),
    creation_timestamp NUMBER NOT NULL CHECK (creation_timestamp > 0),
    last_modified_date DATE NOT NULL,
    salesmarketing_id VARCHAR2(10) NOT NULL,
    client_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (salesmarketing_id) REFERENCES SalesMarketing(salesmarketing_id),
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE FinanceRecord (
    transaction_id VARCHAR2(10) PRIMARY KEY,
    fiscal_year NUMBER UNIQUE NOT NULL CHECK (fiscal_year BETWEEN 2020 AND 2100),
    posting_date DATE NOT NULL CHECK (posting_date <= SYSDATE),
    transaction_status VARCHAR2(50) NOT NULL CHECK (transaction_status IN ('Pending', 'Posted', 'Reversed', 'Void')),
    currency_code VARCHAR2(50) NOT NULL CHECK (currency_code IN ('MYR', 'USD', 'EUR', 'SGD')),
    general_ledger_code VARCHAR2(50) NOT NULL CHECK (LENGTH(general_ledger_code) >= 4),
    base_amount NUMBER NOT NULL CHECK (base_amount >= 0),
    tax_amount NUMBER NOT NULL CHECK (tax_amount >= 0),
    total_net_value VARCHAR2(50) NOT NULL CHECK (LENGTH(total_net_value) > 0),
    authorization_code VARCHAR2(50) NOT NULL CHECK (LENGTH(authorization_code) > 0),
    exchange_rate VARCHAR2(50) NOT NULL CHECK (LENGTH(exchange_rate) > 0),
    finance_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (finance_id) REFERENCES Finance(finance_id)
);

-- 5. Fourth-Level Dependencies (Rely on Campaign or FinanceRecord)
CREATE TABLE DigitalCampaign (
    digital_id VARCHAR2(10) PRIMARY KEY,
    digital_channel_type VARCHAR2(20) UNIQUE NOT NULL CHECK (digital_channel_type IN ('Social', 'Search', 'Email', 'Display', 'Video')),
    target_url_slug VARCHAR2(50) NOT NULL CHECK (target_url_slug NOT LIKE '% %'),
    seo_keyword_primary VARCHAR2(50) CHECK (LENGTH(seo_keyword_primary) > 0),
    ad_copy_headline VARCHAR2(50) NOT NULL CHECK (LENGTH(ad_copy_headline) <= 50),
    meta_description_snippet VARCHAR2(1000) NOT NULL CHECK (LENGTH(meta_description_snippet) BETWEEN 50 AND 160),
    email_automation_sequence_id NUMBER NOT NULL CHECK (email_automation_sequence_id > 0),
    cookie_duration_days NUMBER NOT NULL CHECK (cookie_duration_days BETWEEN 1 AND 90),
    domain_authority_target NUMBER NOT NULL CHECK (domain_authority_target BETWEEN 1 AND 100),
    canonical_link_referance VARCHAR2(50) NOT NULL CHECK (canonical_link_referance LIKE 'http%'),
    campaign_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (campaign_id) REFERENCES Campaign(campaign_id)
);

CREATE TABLE SocialMediaCampaign (
    socialmedia_id VARCHAR2(10) PRIMARY KEY,
    platform_name VARCHAR2(20) UNIQUE NOT NULL CHECK (platform_name IN ('Facebook', 'Instagram', 'TikTok', 'X', 'LinkedIn')),
    handle_owner_id NUMBER NOT NULL CHECK (handle_owner_id > 0),
    influencer_partnership_level NUMBER NOT NULL CHECK (influencer_partnership_level BETWEEN 1 AND 5),
    primary_campaign_hashtag VARCHAR2(20) NOT NULL CHECK (primary_campaign_hashtag LIKE '#%'),
    content_format VARCHAR2(20) NOT NULL CHECK (content_format IN ('Video', 'Image', 'Story', 'Carousel')),
    engagement_rate_benchmark VARCHAR2(50) NOT NULL CHECK (LENGTH(engagement_rate_benchmark) > 0),
    post_frequency_schedule DATE NOT NULL,
    community_management_protocol VARCHAR2(100) NOT NULL CHECK (LENGTH(community_management_protocol) > 10),
    influencer_contract_id NUMBER UNIQUE CHECK (influencer_contract_id > 0),
    campaign_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (campaign_id) REFERENCES Campaign(campaign_id)
);

CREATE TABLE PhysicalCampaign (
    physical_id VARCHAR2(10) PRIMARY KEY,
    event_type_code VARCHAR2(10) UNIQUE NOT NULL CHECK (event_type_code IN ('CONF', 'EXPO', 'ROAD', 'FAIR')),
    booth_square_footage VARCHAR2(10) NOT NULL CHECK (LENGTH(booth_square_footage) > 0),
    technical_equipment_list VARCHAR2(50) NOT NULL CHECK (LENGTH(technical_equipment_list) > 0),
    print_vendor_acc_id NUMBER NOT NULL CHECK (print_vendor_acc_id > 0),
    logistic_carrier_id NUMBER NOT NULL CHECK (logistic_carrier_id > 0),
    onsite_lead_capture_tool VARCHAR2(50) NOT NULL CHECK (LENGTH(onsite_lead_capture_tool) > 0),
    insurance_coverage_id NUMBER NOT NULL CHECK (insurance_coverage_id > 0),
    venue_location VARCHAR2(50) NOT NULL CHECK (LENGTH(venue_location) > 0),
    event_staffing_count NUMBER NOT NULL CHECK (event_staffing_count >= 1),
    campaign_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (campaign_id) REFERENCES Campaign(campaign_id)
);

CREATE TABLE CampaignExecution (
    execution_id VARCHAR2(10) PRIMARY KEY,
    curr_execution_status VARCHAR2(50) UNIQUE NOT NULL,
    actual_launch_timestamp VARCHAR2(50) NOT NULL CHECK (LENGTH(actual_launch_timestamp) > 0),
    real_time_spend NUMBER NOT NULL CHECK (real_time_spend >= 0),
    impression_count NUMBER NOT NULL CHECK (impression_count >= 0),
    click_through_rate NUMBER NOT NULL CHECK (click_through_rate BETWEEN 0 AND 100),
    leads_generated_count NUMBER NOT NULL CHECK (leads_generated_count BETWEEN 0 AND 100),
    cost_per_lead NUMBER NOT NULL CHECK (cost_per_lead BETWEEN 0 AND 100),
    incident_log_summary VARCHAR2(50) NOT NULL CHECK (LENGTH(incident_log_summary) > 0),
    last_performance_update TIMESTAMP NOT NULL CHECK (last_performance_update <= SYSDATE),
    data_collection_status VARCHAR2(100) NOT NULL CHECK (data_collection_status IN ('Active', 'Partial', 'Synchronizing', 'Archived')),
    campaign_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (campaign_id) REFERENCES Campaign(campaign_id)
);

CREATE TABLE Revenue (
    revenue_id VARCHAR2(10) PRIMARY KEY,
    revenue_stream_id NUMBER UNIQUE NOT NULL,
    payment_method VARCHAR2(50) NOT NULL CHECK (payment_method IN ('Credit Card', 'Wire Transfer', 'Cash', 'Cheque')),
    invoice_reference_number NUMBER UNIQUE NOT NULL CHECK (invoice_reference_number > 0),
    discount_applied NUMBER NOT NULL CHECK (discount_applied >= 0),
    recurring_revenue_flag VARCHAR2(20) NOT NULL CHECK (recurring_revenue_flag IN ('Yes', 'No')),
    collection_cycle_days NUMBER NOT NULL CHECK (collection_cycle_days BETWEEN 0 AND 365),
    tax_exempt_status VARCHAR2(20) NOT NULL CHECK (tax_exempt_status IN ('Exempt', 'Taxable', 'Zero-Rated')),
    recognition_date DATE NOT NULL CHECK (recognition_date <= SYSDATE),
    revenue_net_amount NUMBER NOT NULL CHECK (revenue_net_amount >= 0),
    client_id VARCHAR2(10) NOT NULL,
    transaction_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Client(client_id),
    FOREIGN KEY (transaction_id) REFERENCES FinanceRecord(transaction_id)
);

CREATE TABLE Expenditure (
    expenditure_id VARCHAR2(10) PRIMARY KEY,
    expense_category_id NUMBER UNIQUE NOT NULL,
    pay_period_cycle VARCHAR2(50) NOT NULL CHECK (pay_period_cycle IN ('Weekly', 'Bi-Weekly', 'Monthly', 'Quarterly')),
    gross_salary_amount NUMBER NOT NULL CHECK (gross_salary_amount >= 0),
    insurance_cost NUMBER NOT NULL CHECK (insurance_cost >= 0),
    departmental_budget NUMBER NOT NULL CHECK (departmental_budget > 0),
    spending_type VARCHAR2(50) NOT NULL CHECK (spending_type IN ('Fixed', 'Variable', 'Capital', 'Operational')),
    reimbursement_status VARCHAR2(50) NOT NULL CHECK (reimbursement_status IN ('Pending', 'Approved', 'Paid', 'Rejected')),
    amortization_period VARCHAR2(50) NOT NULL CHECK (LENGTH(amortization_period) > 0),
    budget_variance_amount NUMBER NOT NULL,
    approval_workflow_id NUMBER NOT NULL CHECK (approval_workflow_id > 0),
    transaction_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (transaction_id) REFERENCES FinanceRecord(transaction_id)
);

-- 6. Fifth-Level Dependencies (Rely on CampaignExecution)
CREATE TABLE CampaignStatus (
    status_id VARCHAR2(10) PRIMARY KEY,
    status_change_id NUMBER UNIQUE NOT NULL,
    status_state VARCHAR2(20) NOT NULL CHECK (status_state IN ('Pending', 'Active', 'On Hold', 'Completed', 'Cancelled')),
    status_update_timestamp VARCHAR2(50) NOT NULL CHECK (LENGTH(status_update_timestamp) > 0),
    change_reason_code VARCHAR2(20) NOT NULL CHECK (LENGTH(change_reason_code) > 0),
    manager_comments VARCHAR2(50) NOT NULL CHECK (LENGTH(manager_comments) > 5),
    automatics_flag VARCHAR2(50) NOT NULL CHECK (automatics_flag IN ('Yes', 'No', 'True', 'False')),
    priority_level_at_time VARCHAR2(50) NOT NULL CHECK (priority_level_at_time IN ('Low', 'Medium', 'High', 'Critical')),
    previous_state_id NUMBER NOT NULL CHECK (previous_state_id >= 0),
    notification_sent_date DATE NOT NULL CHECK (notification_sent_date <= SYSDATE),
    estimated_resume_date DATE NOT NULL CHECK (estimated_resume_date >= SYSDATE),
    workflow_step_number NUMBER NOT NULL CHECK (workflow_step_number > 0),
    execution_id VARCHAR2(10) NOT NULL,
    salesmarketing_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (execution_id) REFERENCES CampaignExecution(execution_id),
    FOREIGN KEY (salesmarketing_id) REFERENCES SalesMarketing(salesmarketing_id)
);

CREATE TABLE PostCampaignReport (
    report_id VARCHAR2(10) PRIMARY KEY,
    audit_version NUMBER UNIQUE NOT NULL,
    final_revenue_generated VARCHAR2(50) NOT NULL CHECK (LENGTH(final_revenue_generated) > 0),
    total_actual_spend VARCHAR2(50) NOT NULL CHECK (LENGTH(total_actual_spend) > 0),
    roi_percentage NUMBER NOT NULL CHECK (roi_percentage >= -100),
    goal_achievement VARCHAR2(50) NOT NULL CHECK (goal_achievement IN ('Exceeded', 'Met', 'Partial', 'Not Met')),
    top_performing_channel VARCHAR2(50) NOT NULL CHECK (LENGTH(top_performing_channel) > 0),
    client_feedback_summary VARCHAR2(50) NOT NULL CHECK (LENGTH(client_feedback_summary) > 0),
    incident_impact_assessment VARCHAR2(50) NOT NULL CHECK (LENGTH(incident_impact_assessment) > 0),
    report_generation_date DATE NOT NULL CHECK (report_generation_date <= SYSDATE),
    presentation_link VARCHAR2(50) NOT NULL CHECK (presentation_link LIKE 'http%'),
    reviewed_by_manager_id VARCHAR2(50) NOT NULL CHECK (LENGTH(reviewed_by_manager_id) > 0),
    execution_id VARCHAR2(10) NOT NULL,
    salesmarketing_id VARCHAR2(10) NOT NULL,
    FOREIGN KEY (execution_id) REFERENCES CampaignExecution(execution_id),
    FOREIGN KEY (salesmarketing_id) REFERENCES SalesMarketing(salesmarketing_id)
);

-- 7. Explosion (Junction) Tables
CREATE TABLE MeetingAttendance (
    meeting_id VARCHAR2(10) NOT NULL,
    employee_id VARCHAR2(10) NOT NULL,
    PRIMARY KEY (meeting_id, employee_id),
    FOREIGN KEY (meeting_id) REFERENCES Meeting(meeting_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE EmployeeCertification (
    employee_id VARCHAR2(10) NOT NULL,
    certification_id VARCHAR2(10) NOT NULL,
    PRIMARY KEY (employee_id, certification_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (certification_id) REFERENCES Certification(certification_id)
);

CREATE TABLE PostCampaignRevenue (
    report_id VARCHAR2(10) NOT NULL,
    revenue_id VARCHAR2(10) NOT NULL,
    PRIMARY KEY (report_id, revenue_id),
    FOREIGN KEY (report_id) REFERENCES PostCampaignReport(report_id),
    FOREIGN KEY (revenue_id) REFERENCES Revenue(revenue_id)
);

CREATE TABLE EmployeePerson (
    employee_id VARCHAR2(10) NOT NULL,
    person_id VARCHAR2(10) NOT NULL,
    PRIMARY KEY (employee_id, person_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

CREATE TABLE EmployeeWorkstation (
    employee_id VARCHAR2(10) NOT NULL,
    location_id VARCHAR2(10) NOT NULL,
    PRIMARY KEY (employee_id, location_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (location_id) REFERENCES WorkLocation(location_id)
);

CREATE TABLE EmployeeAssignment (
    employee_id VARCHAR2(10) NOT NULL,
    role_id NUMBER NOT NULL,
    assign_date DATE NOT NULL,
    assign_status VARCHAR2(10) NOT NULL CHECK (assign_status IN ('Active', 'Former', 'Promoted')),
    PRIMARY KEY (employee_id, role_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (role_id) REFERENCES Employee(employee_id)
);

COMMIT;
