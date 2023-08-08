SELECT students.name as student, AVG(assignment_submissions.duration) as averageAssignmentDuration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY averageAssignmentDuration DESC;
