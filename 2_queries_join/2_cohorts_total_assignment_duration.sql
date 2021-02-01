SELECT cohorts.name AS "cohorts_name", SUM(duration) AS "total_duration"
FROM cohorts 
JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY cohorts.name;