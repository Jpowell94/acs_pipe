{% macro disability(vetdisab, diffrem, diffphys, diffmob, diffcare, diffsens, diffeye, diffhear) %}
(
    CASE
    WHEN {{ vetdisab }} > 1
        OR {{ diffrem }} == 2
        OR {{ diffphys }} == 2
        OR {{ diffmob }} == 2
        OR {{ diffcare }} == 2
        OR {{ diffsens }} == 2
        OR {{ diffeye }} == 2
        OR {{ diffhear }} == 2
    THEN 'Disability'
    ELSE 'No Disability'
    END)
{% endmacro %}
