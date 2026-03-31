-- FILE 1: 2-Table Join — Meeting & WorkLocation
-- Displays ONE non-primary attribute from each table
-- 2 constraints from different tables using AND
-- Expected: 6 rows

-- This query is to find the meeting subject and the location name of each meeting, 
-- where the follow up action flag is 'TRUE' and the location access security tier is either 'Tier 1' or 'Tier 2'. 
-- It is to identify actionable meetings held in secured locations for follow up and facility management purposes.

SELECT 
    m.meeting_subject,
    w.location_name
FROM Meeting m
JOIN WorkLocation w ON m.location_id = w.location_id
WHERE w.access_security_tier IN ('Tier 1', 'Tier 2')
AND m.follow_up_action_flag = 'TRUE';
