
-- Среднее время простоя оборудования за последние 30 дней
SELECT
  production_line,
  AVG(downtime_minutes) AS avg_downtime
FROM
  equipment_logs
WHERE
  log_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY
  production_line;
