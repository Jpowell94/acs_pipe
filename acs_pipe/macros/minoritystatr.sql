{% macro minoritystatr(raced, hispand) %}
( 
        CASE
    WHEN {{ raced }} IN (200, 630, 700) THEN (
        CASE
        WHEN {{ hispand }} BETWEEN 100 AND 498 THEN 'Minority'
        WHEN {{ hispand }} == 0 THEN 'Minority'
        END
        )
    WHEN {{ raced }} BETWEEN 302 AND 399 THEN (
        CASE
        WHEN {{ hispand }} BETWEEN 100 AND 498 THEN 'Minority'
        WHEN {{ hispand }} == 0 THEN 'Minority'
        END
        )
    WHEN {{ raced }} BETWEEN 400 AND 620 THEN (
        CASE
        WHEN {{ hispand }} BETWEEN 100 AND 498 THEN 'Minority'
        WHEN {{ hispand }} == 0 THEN 'Minority'
        END
        )
    WHEN {{ raced }} BETWEEN 640 AND 679 THEN (
        CASE
        WHEN {{ hispand }} BETWEEN 100 AND 498 THEN 'Minority'
        WHEN {{ hispand }} == 0 THEN 'Minority'
        END
        )
    WHEN {{ raced }} BETWEEN 680 AND 699 THEN (
        CASE
        WHEN {{ hispand }} BETWEEN 100 AND 498 THEN 'Minority'
        WHEN {{ hispand }} == 0 THEN 'Minority'
        END
        )
    WHEN {{ raced }} BETWEEN 801 AND 996 THEN (
        CASE
        WHEN {{ hispand }} BETWEEN 100 AND 498 THEN 'Minority'
        WHEN {{ hispand }} == 0 THEN 'Minority'
        END
        )
    WHEN {{ raced }} == 100 THEN (
        CASE
        WHEN {{ hispand }} BETWEEN 100 AND 498 THEN 'Minority'
        WHEN {{ hispand }} == 0 THEN 'Non-Minority'
        END
        )
    ELSE 'Unexpected Value'
    END)
{% endmacro %}
