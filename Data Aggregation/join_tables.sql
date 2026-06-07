SELECT
    d.*,
    e.*
FROM departments d
JOIN employees e
    ON d.id = e.department_id;