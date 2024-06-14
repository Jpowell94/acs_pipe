{% macro vetstatr(vetstat) %}
(
    Case
        When {{ vetstat }} == 1 Then 'Not a Veteran'
        When {{ vetstat }} == 2 Then 'Veteran'
        Else 'Unexpected Value'
    End
)
{% endmacro %}
