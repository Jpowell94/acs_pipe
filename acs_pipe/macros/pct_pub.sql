{% macro pct_pub(geography) %}
(
    (Sum(PERWT) FILTER (IND Between 9370 And 9590) OVER (PARTITION BY {{geography}})/Sum(PERWT) OVER (PARTITION BY {{geography}} )) * 100
)
{% endmacro %}