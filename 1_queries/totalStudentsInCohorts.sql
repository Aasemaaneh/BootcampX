-- totalStudentsInCohorts.sql
SELECT COUNT(*)
FROM students
WHERE cohort_id <= 3;  -- First 3 cohorts
