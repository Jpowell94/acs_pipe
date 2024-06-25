SELECT
    recode.*,               -- Select all columns from recode
    upuma_median_salary.MEDIAN_SALARY_UPUMA,  -- Median Salary from upuma_median_salary
    fsregions_median_salary.MEDIAN_SALARY_FSREGIONS,  -- Median Salary from fsregions_median_salary
    researchstation_median_salary.MEDIAN_SALARY_RESEARCHSTATION  -- Median Salary from fsregions_median_salary
FROM
    {{ ref('recode') }} recode
LEFT JOIN
    {{ ref('upuma_median_salary') }} upuma_median_salary ON recode.UPUMA = upuma_median_salary.UPUMA
LEFT JOIN
    {{ ref('fsregions_median_salary') }} fsregions_median_salary ON recode.FSREGIONS = fsregions_median_salary.FSREGIONS
LEFT JOIN
    {{ ref('researchstation_median_salary') }} researchstation_median_salary ON recode.RESEARCHSTATION = researchstation_median_salary.RESEARCHSTATION
