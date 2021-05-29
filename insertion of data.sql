INSERT into hospital.hospital
values(1,'407th Military Hospital 1','Heroiiv Maidan', 'Lviv', '5546198'),
(2,'407th Military Hospital 2','Kniazia Romana 5', 'Lviv', '5123456'),
(3,'407th Military Hospital 3','Shevchenka Тarasa', 'Lviv', '5467564'),
(4,'407th Military Hospital 4','Akademika Andiia Sakharova', 'Lviv', '2343435');


INSERT into hospital.patient
values(1, 'Walter','Martinez','Akademika Andiia Sakharova','1930-09-25','87'),
(2, 'Taylor','Duffy','Volodymyra Velykoho','2013-10-21','7'),
(3, 'Beatrice','Phillips','Heroiiv Maidan','1978-10-19','42'),
(4, 'Grant','Bullock','Danylyshyna Dmytra','1945-06-04','75'),
(5, 'Nathalie','Acosta','Estonska','1970-10-08','50'),
(6, 'Jair','Burnett','Keramichna','1971-10-24','49'),
(7, 'Madison','Benton','Kniahyni Olhy','2017-10-24','3'),
(8, 'Trevon','Neal','Kniazia Romana','1933-10-04','87'),
(9, 'Keith','Tanner','Mechnykova I.','1912-04-19','109'),
(10, 'Jakobe','Serrano','Pankivskoho Stepana','1929-01-02','92'),
(11, 'Allison','Carlson','Shevchenka Тarasa','1957-08-13','63');

INSERT into hospital.doctor
values(1,'Kyrylo','Olesya','Master of Clinical Medicine (MCM)','12000$','PSYCHIATRISTS'),
(2,'Karyna','Alexandra','Master of Medical Science (MMSc, MMedSc)','10000$','OBSTETRICIANS AND GYNECOLOGISTS'),
(3,'Diana','Aliona','Master of Medicine (MM, MMed)','15000$','SURGEONS'),
(4,'Artem','Oleksander','Master of Philosophy (MPhil)','8000$','ANESTHESIOLOGISTS'),
(5,'Nataliya','Serhii','Master of Philosophy in Ophthalmology (MPhO)','9000$','PATHOLOGISTS'),
(6,'Tetyana','Zhanna','Master of Surgery (MS, MSurg, MChir, MCh, ChM, CM)','8500$','NEUROLOGISTS'),
(7,'Tamila','Polina','Master of Science in Medicine or Surgery (MSc)','9000$','RADIOLOGISTS'),
(8,'Vladyslava','Demyan','Doctor of Clinical Medicine (DCM)','12000$','PODIATRISTS'),
(9,'Kostyantyn','Oleksander','Doctor of Clinical Surgery (DClinSurg)','8000$','DERMATOLOGISTS'),
(10,'Marta','Onufriy','Doctor of Medical Science (DMSc, DMedSc)','9000$','ANESTHESIOLOGISTS'),
(11,'Oksana','Yulia','Doctor of Surgery (DS, DSurg)','12000$','INTERNISTS');


INSERT into hospital.diagnosis
values 
(1, 'osteomyelitis','a positive bacterial culture from bone biopsy in the setting of bone necrosis.'),
(2,'asthma','a condition in which your airways narrow and swell and may produce extra mucus'),
(3, 'cancer','Cancer cells can also spread to other parts of the body through the blood and lymph systems'),
(4,'diabetes mellitus','A fasting plasma glucose level >126 mg/dl (7.0 mmol/l) or a casual plasma glucose >200 mg/dl (11.1 mmol/l) '),
(5,'malaria','The presence of the parasite in the blood, to confirm that you have malaria'),
(6,'fever','a temporary increase in your body temperature, often due to an illness. Having a fever is a sign that something out of the ordinary is going on in your body.'),
(7,'depression','mood disorder that causes a persistent feeling of sadness and loss of interest and can interfere with your daily functioning.'),
(8,'schizophrenia','aDelusions,Hallucinations,Disorganized speech and behavior,Bizarre or hyperactive behavior.'),
(9,'cholera','profuse watery diarrhea, sometimes described as “rice-water stools');



INSERT into hospital.record
values(1,'2019-01-15','2019-02-01','2019-02-10','asthma', 1, 1),
(2,'2019-01-16','2019-02-05','2019-02-13','depression', 2, 2),
(3,'2019-02-01','2019-02-06','2019-02-20','cholera', 3, 3),
(4,'2019-02-04','2019-02-07','2019-02-25','cancer', 4, 4),
(5,'2019-02-12','2019-02-15','2019-02-22','diabetes mellitus', 1, 5),
(6,'2019-02-04','2019-02-12','2019-03-01','schizophrenia', 2, 6),
(7,'2019-02-15','2019-02-22','2019-03-07','malaria', 3, 7),
(8,'2019-03-01','2019-03-05','2019-03-15','osteomyelitis', 4, 8),
(9,'2019-03-05','2019-03-08','2019-03-18','asthma', 1, 9),
(10,'2019-03-06','2019-03-10','2019-03-20','schizophrenia', 2, 10),
(11,'2019-10-12','2020-12-12','2021-01-03','fever', 3, 11)
;
INSERT into hospital.record_diagnosis
values
(1  ,1  ,2,'sub','2019-01-15'),
(2  ,2  ,7,'sub','2019-01-15'),
(3  ,3  ,9,'sub','2019-01-15'),
(4  ,4  ,3,'sub','2019-01-15'),
(5  ,5  ,4,'sub','2019-01-15'),
(6  ,6  ,8,'sub','2019-01-15'),
(7  ,7  ,5,'sub','2019-01-15'),
(8  ,8  ,1,'sub','2019-01-15'),
(9  ,9  ,2,'sub','2019-01-15'),
(10 ,10 ,8,'sub','2019-01-15'),
(11 ,11 ,6,'sub','2019-01-15')
;

INSERT into hospital.record_doctor
values
(1 ,1 ,7 ,'2019-02-10','Learn to recognize and avoid triggers and track your breathing'),
(2 ,2 ,1 ,'2019-02-13','Talk as much and open up for people, and visit me every monday'),
(3 ,3 ,10,'2019-02-20','Take antibiotics and zinc supplements'),
(4 ,4 ,6 ,'2019-02-25','Use systematically developed guidelines based on the best available evidence for prevention, diagnosis, treatment, and palliative care'),
(5 ,5 ,9 ,'2019-02-22','Stop eating sugar and visit me every three months'),
(6 ,6 ,5 ,'2019-03-01','Any first- or second-generation antipsychotic other than clozapine' ),
(7 ,7 ,4 ,'2019-03-07','Chloroquine phosphate, Artemisinin-based combination therapies (ACTs)' ),
(8 ,8 ,10 ,'2019-03-15','quitting smoking can help speed healing, eeping your blood sugar controlled if you have diabetes.' ),
(9 ,9 ,11 ,'2019-03-18','Learn to recognize and avoid triggers and track your breathing' ),
(10 ,10 ,7 ,'2019-03-20','Any first- or second-generation antipsychotic other than clozapine' ),
(11 ,11 ,4 ,'2021-01-03','Take Advil and rest');
DELETE FROM hospital.record_doctor
