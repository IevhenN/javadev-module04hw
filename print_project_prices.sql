SELECT 'Project' || p.id                                                    as name,
       SUM(EXTRACT(MONTH FROM AGE(p.finish_date, p.start_date)) * w.salary) as price
FROM project_worker pw
         LEFT JOIN project p on p.id = pw.project_id
         LEFT JOIN worker w on w.id = pw.worker_id
GROUP BY p.id
ORDER BY name
