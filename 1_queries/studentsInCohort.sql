-- studentsInCohort.sql
SELECT id, name
FROM students
WHERE cohort_id = 1  -- Replace with the desired cohort_id
ORDER BY name;
