SELECT * FROM students
    WHERE surname IS NULL
       OR length(surname) = 1
       OR (length(surname) = 2 AND  surname LIKE '%.');
