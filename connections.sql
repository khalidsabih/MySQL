CREATE VIEW record2 AS
    SELECT DISTINCT
        id_patient, id_hospital, date_examination
    FROM
        record;

SELECT 
    patient.id,
    patient.second_name,
    patient.address,
    record2.id_patient,
    record2.date_examination
FROM
    patient,
    record2
WHERE
    patient.id = record2.id_patient;

SELECT 
    patient.id,
    patient.first_name,
    patient.second_name,
    patient.address,
    record.start_date,
    record.finsh_date
FROM
    patient
        LEFT JOIN
    record ON patient.id = record.id_patient;
    

SELECT 
    patient.id,
    patient.first_name,
    patient.second_name,
    patient.address,
    record.start_date,
    record.finsh_date
FROM
    patient,
    record
WHERE
    patient.id = record.id_patient
        AND record.date_examination > record.start_date;
    
SELECT 
    atient.id,
    patient.first_name,
    patient.second_name,
    doctor.id,
    doctor.first_name,
    doctor.second_name	
FROM
    diagn
        INNER JOIN
    record ON diagnosis.id = record.result
WHERE
    record.result = “asthma”;
#task
SELECT 
	patient.id,
    patient.first_name,
    patient.second_name,
    doctor.id,
    doctor.first_name,
    doctor.second_name	
FROM
    patient inner join record inner join record_doctor inner join doctor
WHERE
    patient.id = record.id_patient
        AND record.id = record_doctor.id_record and record_doctor.id_doctor = doctor.id; 

