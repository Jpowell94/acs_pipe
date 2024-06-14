{% macro educr(educd) %}
(
    Case
        When {{ educd }} Between 000 And 61 Then 'Less than High School Diploma'
        When {{ educd }} In (63, 64) Then 'High School Diploma or Equivalent'
        When {{ educd }} Between 65 And 71 Then 'Some College'
        When {{ educd }} == 81 Then 'Associate''s Degree'
        When {{ educd }} == 101 Then 'Bachelor''s Degree'
        When {{ educd }} Between 114 And 116 Then 'Graduate Degree'
        Else 'Unexpected Value'
    End)
{% endmacro %}
