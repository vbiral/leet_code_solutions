# Write your MySQL query statement below
SELECT
    st.student_id,
    st.student_name,
    s.subject_name,
    count(e.student_id) as attended_exams
FROM Subjects s
INNER JOIN Students st on 1=1
LEFT JOIN Examinations e on st.student_id = e.student_id and
                            s.subject_name = e.subject_name
GROUP BY st.student_id,
         st.student_name,
         s.subject_name
ORDER BY st.student_id, s.subject_name