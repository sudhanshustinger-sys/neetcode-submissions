SELECT student_id, exam_id, score
FROM (
    SELECT
        student_id,
        exam_id,
        score,
        ROW_NUMBER() OVER (
            PARTITION BY student_id
            ORDER BY score DESC, exam_id ASC
        ) AS rnk
    FROM exam_results
) AS ranked
WHERE rnk = 1
ORDER BY student_id ASC;