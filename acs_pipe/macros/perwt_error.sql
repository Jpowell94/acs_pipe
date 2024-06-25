{% macro perwt_err(geography) %}
(
  {% for i in range(1, 81) %}
  (((SQRT(((SUM(REPWTP{{ i }}) - SUM(PERWT))^2)*0.5))*1.645)/SUM(PERWT))*100 OVER (PARTITION BY {{ geography }})
  {% endfor %}
)
{% endmacro %}