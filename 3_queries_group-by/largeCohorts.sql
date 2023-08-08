SELECT cohorts.name as cohortName, count(students.*) as studentCount
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY studentCount;
