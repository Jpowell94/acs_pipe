{% macro upuma(statefip, puma) %}
    ({{ statefip }} * 100000 + {{ puma }})
{% endmacro %}
