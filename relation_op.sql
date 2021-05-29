use hospital;



CREATE TABLE doctor_1 SELECT * FROM
    doctor
WHERE
    doctor.salary = '9000$';
    
#projection
SELECT 
    doctor_1.first_name,
    doctor_1.second_name,
    doctor_1.qualification
FROM
    doctor_1;
	
#union
SELECT 
    doctor.first_name, 
    doctor.second_name, 
    doctor.qualification
FROM
    doctor
WHERE
    doctor.salary IN ('12000$' , '8000$')
UNION SELECT 
    doctor_1.first_name,
    doctor_1.second_name,
    doctor_1.qualification
FROM
    doctor_1;
    
#intersection
SELECT 
    *
FROM
    patient
WHERE
    id IN (SELECT 
            id
        FROM
            patient
        WHERE
            inssurance > 50);
#different
SELECT 
    *
FROM
    patient
WHERE
    id NOT IN (SELECT 
            id
        FROM
            patient
        WHERE
            inssurance > 50);



