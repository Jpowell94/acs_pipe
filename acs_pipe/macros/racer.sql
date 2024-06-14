{% macro racer(raced) %}
(
    Case
        When {{ raced }} == 100 Then 'White'
        When {{ raced }} == 200 Then 'Black or African American'
        When {{ raced }} Between 302 And 399 Then 'American Indian or Alaska Native'
        When {{ raced }} Between 400 And 620 Then 'Asian'
        When {{ raced }} Between 640 And 679 Then 'Asian'
        When {{ raced }} == 630 Then 'Native Hawaiian or Pacific Islander'
        When
            {{ raced }} Between 680 And 699
            Then 'Native Hawaiian or Pacific Islander'
        When {{ raced }} Between 801 And 996 Then 'Two or More Races'
        When {{ raced }} == 700 Then 'Other'
        Else 'Unexpected Value'
    End)
{% endmacro %}
