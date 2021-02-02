SELECT COUNT(assistance_requests.*) AS "total_assistances", teachers.name
FROM assistance_requests 
JOIN teachers on assistance_requests.teacher_id = teachers.id
GROUP BY teachers.id
ORDER BY total_assistances;