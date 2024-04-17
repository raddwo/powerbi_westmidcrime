
WITH uni AS(
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.march
UNION
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.april
UNION
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.may
UNION
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.june
UNION
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.july
UNION
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.august
UNION
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.september
UNION
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.october
UNION
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.november
UNION
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.december
UNION
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.january
UNION
SELECT RIGHT(month,2) AS month, LSOA_name AS City,Location, Crime_type AS crime,Last_outcome_category AS outcome
FROM dbo.february
)

SELECT 
CASE WHEN month = 01 THEN 'January'
WHEN month = 02 THEN 'February'
WHEN month = 03 THEN 'March'
WHEN month = 04 THEN 'April'
WHEN month = 05 THEN 'May'
WHEN month = 06 THEN 'June'
WHEN month = 07 THEN 'July'
WHEN month = 08 THEN 'August'
WHEN month = 09 THEN 'September'
WHEN month = 10 THEN 'October'
WHEN month = 11 THEN 'November'
Else 'December' END AS month,
City,Location,crime,outcome
FROM uni
WHERE outcome IS NOT NULL;





