SELECT COUNT(*) AS "total_assistances", name
FROM assistance_requests 
JOIN students on assistance_requests.student_id = students.id
GROUP BY students.id
ORDER BY total_assistances;