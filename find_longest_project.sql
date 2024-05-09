SELECT 'Project ' || id                                 as name,
       EXTRACT(MONTH FROM AGE(finish_date, start_date)) as month_count
FROM project
WHERE EXTRACT(MONTH FROM AGE(finish_date, start_date)) =
      (SELECT max(EXTRACT(MONTH FROM AGE(finish_date, start_date))) FROM project);