{% macro perwt_sum(geography) %}
(
    SUM(PERWT) OVER (PARTITION BY {{ geography }})
)
{% endmacro %}
