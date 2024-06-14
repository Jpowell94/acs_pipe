{% macro perwt_sum_per_degree(geography) %}
(
    SUM(PERWT) OVER (PARTITION BY {{ geography }}, DEGFIELDR)
)
{% endmacro %}
