--DDL
--droping of tables
drop table blood;
drop table donor;
drop table blood_delivery;
drop table patient;
drop table blood_bank;
--creation of tables
create table donor(
donor_id varchar(20),
donor_doctor_id varchar(20),
donor_name varchar(30),
donor_phone_no varchar(20),
donor_dob varchar(15),
donor_gender varchar(10),
donor_address varchar(30),
donor_weight number(5,2),
donor_bp varchar(10),
donor_bloodtype varchar(30),
doctor_id varchar(20),
primary key(donor_id)
);

create table blood_bank(
bloodb_id varchar(20),
bloodb_name varchar(30),
bloodb_address varchar(30),
primary key(bloodb_id)
);

create table blood(
donor_id varchar(20),
bloodb_id varchar(20),
blood_type varchar(30),
primary key(donor_id),
foreign key(donor_id) references donor(donor_id),
foreign key(bloodb_id) references blood_bank(bloodb_id)
);

create table patient(
patient_id varchar(20),
patient_doctor_id varchar(20),
patient_name varchar(30),
patient_phone_no varchar(20),
hospital_address varchar(30),
patient_address varchar(30),
patient_bloodtype varchar(10),
primary key(patient_id)
);

create table blood_delivery(
bloodb_id varchar(20),
patient_id varchar(20),
primary key(bloodb_id,patient_id),
foreign key(bloodb_id) references blood_bank(bloodb_id),
foreign key(patient_id) references patient(patient_id)
);

--Add table column
alter table donor add location char(20);
--modify table column definition
alter table donor modify location varchar(23);
--modify table column name
alter table donor rename column location to living_place;
--dropping column
alter table donor drop column living_place;

--Add table column
alter table blood_bank add review char(20);
--modify table column definition
alter table blood_bank modify review varchar(53);
--modify table column name
alter table blood_bank rename column review to rating;
--dropping column
alter table blood_bank drop column rating;

--Add table column
alter table blood add description char(30);
--modify table column definition
alter table blood modify description varchar(50);
--modify table column name
alter table blood rename column description to details;
--dropping column
alter table blood drop column details;

--Add table column
alter table patient add plocation char(20);
--modify table column definition
alter table patient modify plocation varchar(23);
--modify table column name
alter table patient rename column plocation to pliving_place;
--dropping column
alter table patient drop column pliving_place;

--Add table column
alter table blood_delivery add serial_no int;
--modify table column definition
alter table blood_delivery modify serial_no number(10,2);
--modify table column name
alter table blood_delivery rename column serial_no to sl_bankno;
--dropping column
alter table blood_delivery drop column sl_no;

--view 
create view donor_details as select donor_id, donor_name from donor;
--find all donor which blood group is A+ or A-
create view donor_A as select donor_bloodtype from donor where donor_bloodtype like 'A_';
--view defining other views
--Define view using other view
create view donors as select * from donor_details where donor_id='421215154001';

--dropping of table
drop table blood2;
drop table blood_bank2;
drop table donor2;

--Cascading Actions in Referential Integrity
create table donor2(
donor_id varchar(20),
donor_doctor_id varchar(20),
donor_name varchar(30),
donor_phone_no varchar(20),
donor_dob varchar(15),
donor_gender varchar(10),
donor_address varchar(30),
donor_weight number(5,2),
donor_bp varchar(10),
donor_bloodtype varchar(30),
doctor_id varchar(20),
primary key(donor_id)
);

create table blood_bank2(
bloodb_id varchar(20),
bloodb_name varchar(30),
bloodb_address varchar(30),
primary key(bloodb_id)
);

create table blood2(
donor_id varchar(20),
bloodb_id varchar(20),
blood_type varchar(30),
primary key(donor_id),
foreign key(donor_id) references donor2(donor_id) on delete cascade,
foreign key(bloodb_id) references blood_bank2(bloodb_id) on delete cascade
);
