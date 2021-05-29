SELECT 
    name_diagnos AS diagnosis, COUNT(patient.id) AS patient
FROM
    diagnosis
        INNER JOIN
    record_diagnosis
        INNER JOIN
    record
        INNER JOIN
    patient ON diagnosis.id = record_diagnosis.id_diagnosis = record.id_patient = patient.id
GROUP BY diagnosis;

SELECT 
    second_name AS patient,
    AVG(LENGTH(recommendation)) AS avgrecommendation
FROM
    patient
        INNER JOIN
    record
        INNER JOIN
    record_doctor ON patient.id = record.id_patient = record_doctor.id_record
GROUP BY patient;

SELECT 
    id_doctor, id_record, date_recommendation
FROM
    record_doctor
ORDER BY id_doctor ASC;

SELECT 
    id, qualification
FROM
    doctor
ORDER BY id DESC
LIMIT 5;
