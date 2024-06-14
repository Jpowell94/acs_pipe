{% macro sexr(sex) %}
(
    Case
        When {{ sex }} == 2 Then 'Female'
        When {{ sex }} == 1 Then 'Male'
        Else 'Unexpected Value'
    End)
{% endmacro %}
