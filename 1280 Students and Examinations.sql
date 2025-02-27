SELECT st.student_id,st.student_name,su.subject_name,COALESCE(ne.attended_exams,0) AS attended_exams
FROM Students AS st
JOIN Subjects AS su
LEFT JOIN (SELECT student_id,subject_name,count(*) AS attended_exams
      FROM Examinations 
      GROUP BY student_id,subject_name) AS ne
    ON ne.student_id=st.student_id AND ne.subject_name=su.subject_name
ORDER BY st.student_id, su.subject_name;

# first we need to combine all the subject with all the student hence cross join or simple join is done

# IN second step we first grouped the student id and subject_name and find the count of it and took that as another table

# We joined based on the table that we got with matching studentid and subject name 

# order it by cost student_id and subject_name

# COALESCE it is basically used to change the null to the given number