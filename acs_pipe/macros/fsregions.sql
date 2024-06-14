{% macro fsregions(statefip, upuma) %}
(
    CASE
        WHEN {{ statefip }} IN (30, 38) THEN 'Northern Region'
        WHEN {{ statefip }} IN (08, 20, 31, 46, 56) THEN 'Rocky Mountain Region'
        WHEN {{ statefip }} IN (04, 35) THEN 'Southwestern Region'
        WHEN {{ statefip }} IN (32, 49) THEN 'Intermountain Region'
        WHEN {{ statefip }} IN (06, 15) THEN 'Pacific Southwest Region'
        WHEN {{ statefip }} IN (41, 53) THEN 'Pacific Northwest Region'
        WHEN
            {{ statefip }} IN (01, 05, 22, 28, 40, 47, 48, 12, 13, 45, 37, 21, 51)
            Then 'Southern Region'
        WHEN
            {{ statefip }} IN (17, 18, 19, 26, 27, 29, 55, 09, 10, 11, 23, 24, 25, 33, 34, 36, 39, 42, 44, 50, 54)
            Then 'Eastern Region'
        WHEN {{ statefip }} == 02 THEN 'Alaska Region'
        WHEN {{ upuma }} BETWEEN 1600100 AND 1600300 THEN 'Northern Region'
        WHEN {{ upuma }} BETWEEN 1600400 AND 1601300 THEN 'Intermountain Region'
        ELSE 'Unexpected Value'
    END
)
{% endmacro %}
