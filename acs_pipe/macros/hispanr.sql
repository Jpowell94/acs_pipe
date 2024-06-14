{% macro hispanr(hispand) %}
(
    Case
        When {{ hispand }} == 0 Then 'Not Hispanic'
        When {{ hispand }} Between 100 And 498 Then 'Hispanic'
        Else 'Unexpected Value'
    End)
{% endmacro %}
