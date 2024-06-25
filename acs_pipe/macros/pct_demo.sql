{% macro pct_demo(demo, demo_val, geography) %}
(
    (Sum(PERWT) FILTER ({{ demo }} == '{{ demo_val }}') OVER (PARTITION BY {{ geography }})/Sum(PERWT) OVER (PARTITION BY {{ geography }})) * 100
)
{% endmacro %}