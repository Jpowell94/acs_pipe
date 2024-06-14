{% macro avg_age(geography) %}
  (
      CAST(
    SUM(AGE * PERWT) FILTER (WHERE PERWT IS NOT NULL) OVER (PARTITION BY {{ geography }})
  AS DOUBLE) /
  CAST(
    SUM(PERWT) FILTER (WHERE PERWT IS NOT NULL) OVER (PARTITION BY {{ geography }})
  AS DOUBLE)
  )
{% endmacro %}
