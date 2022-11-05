SELECT COUNT (DISTINCT student_id) AS number_of_students
FROM exam_results WHERE mark >= 5
GROUP BY subject_id
ORDER BY number_of_students DESC ;

