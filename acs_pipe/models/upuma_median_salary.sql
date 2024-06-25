WITH cte AS (
    SELECT
    {{ upuma('STATEFIP', 'PUMA')}} AS UPUMA,
      INCWAGE,
      SUM(PERWT) OVER (PARTITION BY UPUMA ORDER BY INCWAGE) AS cumulative_weight,
      SUM(PERWT) OVER (PARTITION BY UPUMA) AS total_weight
    FROM {{ ref('workingpop') }}
  )
SELECT 
UPUMA,
MIN(INCWAGE) AS MEDIAN_SALARY_UPUMA
FROM cte
WHERE cumulative_weight >= total_weight / 2
Group By UPUMA