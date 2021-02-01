SELECT students.id, SUM(assignment_submissions.duration) AS "total_duration"
FROM students 
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY students.id
ORDER BY students.id;
