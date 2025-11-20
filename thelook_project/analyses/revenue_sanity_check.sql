-- Quick sanity cjeck on revenue_per_day mart
SELECT *
FROM `dbt-learn-80k.thelook.revenue_per_day`
ORDER BY order_day DESC
LIMIT 5