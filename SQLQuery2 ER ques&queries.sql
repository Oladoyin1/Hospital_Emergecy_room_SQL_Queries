 
SELECT * FROM ER


----Build dashboard for Hospitals in order to monitor their patient traffic in Emergency Room--
----Questions to answer----


----1. Total no of people visiting the emergency room--
SELECT COUNT(*) AS totalvisits FROM ER;


----2. No of patients by gender--
SELECT 
	   patient_gender AS gender,
	   COUNT(*) AS numberOfPatients
FROM ER
GROUP BY patient_gender;


---3. Average waiting time by month--
SELECT 
	DATEPART(YEAR, [date]) AS Year,
	DATEPART(MONTH, [date]) AS Month,
	AVG(patient_waittime) AS AvgWaitingTimeInMinutes
FROM ER
GROUP BY DATEPART(YEAR, [date]), 
		 DATEPART(MONTH, [date])
ORDER BY Year, Month;



----4. Average patient satisfaction by month--
SELECT
	DATEPART(YEAR, [date]) AS Year,
	DATEPART(MONTH, [date]) AS Month,
	AVG([patient_sat_score]) AS AverageSatisfaction
FROM ER
GROUP BY
	DATEPART(YEAR, [date]), DATEPART(MONTH, [date])
ORDER BY Year, Month;



----5. No of Patients by Age in ER--
SELECT
	AgeGRoup,
	COUNT(DISTINCT patient_id) AS NumberOf_ER_patients
FROM ER
GROUP BY AgeGRoup
ORDER BY AgeGRoup;



----6. No of patients by department referral---
SELECT
	department_referral,
	COUNT(DISTINCT patient_id) AS NumberOfpatients
FROM ER
GROUP BY department_referral
ORDER BY department_referral;



----7. No of patients by race--
SELECT 
	   patient_race AS race,
	   COUNT(*) AS numberOfPatients
FROM ER
GROUP BY patient_race;



----8. No of patients by week day--
SELECT 
	DATENAME(WEEKDAY, [date]) AS weekday,
	COUNT(*) AS numbersOfPatients
FROM ER
GROUP BY DATENAME(WEEKDAY, [date])
ORDER BY MIN([date]);



----9.No of patients by time--
SELECT
	DATEPART(HOUR, [date]) AS Hour,
	DATEPART(MINUTE, [date]) AS Minute,
	COUNT(*) AS numberOfPatients
FROM ER
GROUP BY DATEPART(HOUR, [date]), DATEPART(MINUTE, [date])
ORDER BY Hour, Minute;