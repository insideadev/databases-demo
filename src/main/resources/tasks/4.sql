SELECT subject_id, COUNT (DISTINCT student_id) AS number_of_students
FROM exam_results
GROUP BY subject_id, mark;

