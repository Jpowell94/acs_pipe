{% macro median_salary(geography_col) %}
(
  WITH cte AS (
    SELECT
      {{ geography_col }}, -- Pass the column name as an argument
      INCWAGE,
      SUM(PERWT) OVER (PARTITION BY {{ geography_col }} ORDER BY INCWAGE) AS cumulative_weight,
      SUM(PERWT) OVER (PARTITION BY {{ geography_col }}) AS total_weight
    FROM workingpop
  )
  SELECT
    *,
    MIN(INCWAGE) AS MEDIAN_SALARY
  FROM cte
  WHERE cumulative_weight >= total_weight / 2
  GROUP BY {{ geography_col }}
)
{% endmacro %}
