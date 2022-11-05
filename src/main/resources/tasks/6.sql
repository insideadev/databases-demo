SELECT student_id
FROM exam_results
WHERE mark > 5
GROUP BY student_id, subject_id
HAVING COUNT (student_id) >=2;




