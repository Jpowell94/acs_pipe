{% macro ager(age) %}
(
    Case
        When {{ age }} Between 17 And 20 Then 'Ages 17 - 20'
        When {{ age }} Between 21 And 30 Then 'Ages 21 - 30'
        When {{ age }} Between 31 And 40 Then 'Ages 31 - 40'
        When {{ age }} Between 41 And 50 Then 'Ages 41 - 50'
        When {{ age }} Between 51 And 60 Then 'Ages 51 - 60'
        When {{ age }} Between 61 And 70 Then 'Ages 61 - 70'
        When {{ age }} > 70 Then 'Ages 71+'
        Else 'Unexpected Value'
    End)
{% endmacro %}
