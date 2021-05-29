##drop schema Hospital; 
CREATE schema Hospital CHARACTER SET utf8;
CREATE table Hospital.Hospital(
id int primary key,
name_hospital varchar(30)not null,
address varchar(45)not null,
city varchar (20)not null,
phone_number varchar(10) not null
);
CREATE table Hospital.Patient(
id int primary key,
first_name varchar (20)not null,
second_name varchar(20)not null,
address varchar (45)not null,
birthday date not null,
inssurance int not null
);
CREATE table Hospital.doctor(
id int primary key,
first_name varchar (20)not null,
second_name varchar(20)not null,
qualification varchar(45) not null,
salary varchar(20),
position varchar (30) not null
);
CREATE table Hospital.diagnosis(
id int primary key,
name_diagnos varchar(30) not null,
description_diagnos text not null
);
CREATE table Hospital.record(
id int primary key,
date_examination date not null,
start_date date not null,
finsh_date date not null,
result varchar(45) not null,
id_hospital int not null,
id_patient int not null,
constraint fk_med_hospital foreign key (id_hospital) references Hospital.Hospital (id) on update cascade on delete no action,
constraint fk_med_patient foreign key (id_patient) references Hospital.patient (id) on update cascade on delete no action
);
create table Hospital.record_diagnosis(
id int primary key,
id_record int not null,
id_diagnosis int not null,
type_diagnosis varchar(45) not null,
date_diagnosis date not null,
constraint fk_record_diagnos foreign key (id_record) references Hospital.record (id) on update cascade on delete no action,
constraint fk_diagnos_record foreign key (id_diagnosis) references Hospital.diagnosis (id) on update cascade on delete no action
);
create table Hospital.record_doctor(
id int primary key,
id_record int not null,
id_doctor int not null,
date_recommendation datetime not null,
recommendation text not null,
constraint fk_record_doctor foreign key (id_record) references Hospital.record (id) on update cascade on delete no action,
constraint fk_doctor_record foreign key (id_doctor) references Hospital.doctor (id) on update cascade on delete no action
);









