{% macro researchstation(statefip) %}
(
    Case
        When
            statefip In (23, 33, 50, 25, 44, 9, 10, 36, 34, 42, 24, 11, 54, 39, 18, 26, 17, 55, 27, 19, 29)
            Then 'Northern Research Station'
        When
            statefip In (51, 21, 45, 47, 5, 40, 48, 22, 28, 1, 13, 12, 37)
            Then 'Southern Research Station'
        When
            statefip In (38, 46, 31, 20, 30, 16, 8, 56, 35, 4, 32, 49)
            Then 'Rocky Mountain Research Station'
        When statefip In (6, 15) Then 'Pacific Southwest Research Station'
        When statefip In (53, 41, 2) Then 'Pacific Northwest Research Station'
        Else 'Unexpected Value'
    End)
{% endmacro %}
