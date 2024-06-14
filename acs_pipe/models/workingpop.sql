{{
	config(
		materialzed='incremental',
	)
	}}

SELECT *
FROM acs_2020
WHERE AGE >= 17 AND LABFORCE == 2 AND CITIZEN <= 2

