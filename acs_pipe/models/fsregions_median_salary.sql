WITH cte AS (
    SELECT
    {{ upuma('STATEFIP', 'PUMA')}} AS UPUMA,
    {{ fsregions('STATEFIP', 'UPUMA') }} AS FSREGIONS,
      INCWAGE,
      SUM(PERWT) OVER (PARTITION BY FSREGIONS ORDER BY INCWAGE) AS cumulative_weight,
      SUM(PERWT) OVER (PARTITION BY FSREGIONS) AS total_weight
    FROM {{ ref('workingpop') }}
  )
SELECT 
FSREGIONS,
MIN(INCWAGE) AS MEDIAN_SALARY_FSREGIONS
FROM cte
WHERE cumulative_weight >= total_weight / 2
Group By FSREGIONS