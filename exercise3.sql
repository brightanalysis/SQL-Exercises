-- Step 1: CREATE A Catalog
CREATE CATALOG IF NOT EXISTS exercise3;

--Step 2: Create a schema
CREATE SCHEMA IF NOT EXISTS exercise3.class;

-- STEP 3: CREATE a table
CREATE TABLE IF NOT EXISTS exercise3.class.attedance_brightlearn (
    student_id INT,
    days_present INT,
    total_days INT
);

--STEP 4: Insert the data into the table
INSERT INTO TABLE exercise3.class.attedance_brightlearn VALUES
(1,45,50),
(2,30,50),
(3,48,50),
(4,25,50),
(5,50,50);

--STEP 5: Check the table
SELECT*
FROM exercise3.class.attedance_brightlearn;


--Question 7: Calculate each student's attendance percentage and classify the result.
SELECT
    student_id,
    (days_present/total_days)*100 AS attendance_percentage,
    CASE
        WHEN attendance_percentage>=90 THEN 'Excellent'
        WHEN attendance_percentage BETWEEN 75 AND 89 THEN 'Good'
        WHEN attendance_percentage<75 THEN 'Needs Improvement'
    END AS attendance_status
FROM exercise3.class.attedance_brightlearn;



 









