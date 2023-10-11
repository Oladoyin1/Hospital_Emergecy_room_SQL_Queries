SELECT * FROM ER

ALTER TABLE ER
	ADD AgeGRoup VARCHAR(10);

UPDATE ER
	SET patient_gender = 'Male'
	WHERE patient_gender = 'M';


UPDATE ER
	SET patient_gender = 'Female'
	WHERE patient_gender = 'F';


UPDATE ER
	SET patient_gender = 'Non-Commision'
	WHERE patient_gender = 'NC';


		SELECT patient_gender FROM ER;


UPDATE ER
	SET AgeGRoup =	
		CASE	
			WHEN [patient_age] BETWEEN 1 AND 9 THEN '1-9'
			WHEN [patient_age] BETWEEN 10 AND 19 THEN '10-19'
			WHEN [patient_age] BETWEEN 20 AND 29 THEN '20-29'
			WHEN [patient_age] BETWEEN 30 AND 39 THEN '30-39'
			WHEN [patient_age] BETWEEN 40 AND 49 THEN '40-49'
			WHEN [patient_age] BETWEEN 50 AND 59 THEN '50-59'
			WHEN [patient_age] BETWEEN 60 AND 69 THEN '60-69'
			WHEN [patient_age] BETWEEN 70 AND 79 THEN '70-79'
			ELSE '80+'
		END;

SELECT patient_age,AgeGRoup FROM ER;


