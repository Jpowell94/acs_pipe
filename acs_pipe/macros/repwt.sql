{% macro generate_repwtp_array() %}
(array_value(
      {% for i in range(1, 81) %}
        {% if i < 41 or i > 49 %}
          REPWTP{{ i }}{% if not loop.last %}, {% endif %}
        {% endif %}
      {% endfor %}))
{% endmacro %}