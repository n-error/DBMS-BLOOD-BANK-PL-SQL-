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

--Insert data into tables
insert into donor(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154001','454132219001','Mrs. Decon','789456123','01/01/1990','Female','Dhaka','75','120/80','A+',54132219001);
insert into donor(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154002','454132219002','Mr. Hexa','789123456','02/05/1999','Male','Barisal','65','120/80','A+',54132219001);
insert into donor(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154003','454132219003','Mr. Lee','798456123','11/11/2000','Female','Rangpur','80','120/80','O-',54132219003);
insert into donor(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154004','454132219004','Mr. Heton','789465123','25/11/1995','Male','Dinajpur','73','120/80','A-',54132219004);
insert into donor(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154005','454132219005','Mr. Arick','789456132','09/01/1993','Male','Jessore','68','120/80','B+',54132219004);
insert into donor(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154006','454132219006','Mr. jon','789456213','10/02/1994','Male','Chittagong','78','120/80','O+',54132219003);
insert into donor(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154007','454132219007','Mr. Joe','789456231','19/09/1993','Male','Mymensingh','58','120/80','AB+',54132219002);
insert into donor(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154008','454132219008','Mrs. Kendy','789456321','29/03/1996','Female','Barisal','59','120/80','AB-',54132219002);
insert into donor(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154009','454132219009','Mr. Trick','789654132','28/06/1997','Male','Khulna','66','120/80','A+',54132219005);
insert into donor(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154010','454132219010','Mr. Niter','798645132','19/07/1998','Male','Sylhet','54','120/80','B-',54132219005);

insert into blood_bank(bloodb_id,bloodb_name,bloodb_address)values('212151542001','ABC','Dhaka');
insert into blood_bank(bloodb_id,bloodb_name,bloodb_address)values('212151542002','DEF','Dhaka');
insert into blood_bank(bloodb_id,bloodb_name,bloodb_address)values('212151542003','B1B','Rajshahi');
insert into blood_bank(bloodb_id,bloodb_name,bloodb_address)values('212151542004','GHI','Rangpur');
insert into blood_bank(bloodb_id,bloodb_name,bloodb_address)values('212151542005','JKL','Khulna');
insert into blood_bank(bloodb_id,bloodb_name,bloodb_address)values('212151542006','BAC','Dinajpur');
insert into blood_bank(bloodb_id,bloodb_name,bloodb_address)values('212151542007','EDF','Barisal');
insert into blood_bank(bloodb_id,bloodb_name,bloodb_address)values('212151542008','1BB','Jessore');
insert into blood_bank(bloodb_id,bloodb_name,bloodb_address)values('212151542009','HIG','Dhaka');
insert into blood_bank(bloodb_id,bloodb_name,bloodb_address)values('212151542010','LJK','Khulna');

insert into blood(donor_id,bloodb_id,blood_type)values('421215154001','212151542001','A+');
insert into blood(donor_id,bloodb_id,blood_type)values('421215154002','212151542002','O-');
insert into blood(donor_id,bloodb_id,blood_type)values('421215154003','212151542003','A+');
insert into blood(donor_id,bloodb_id,blood_type)values('421215154004','212151542004','A+');
insert into blood(donor_id,bloodb_id,blood_type)values('421215154005','212151542005','B+');
insert into blood(donor_id,bloodb_id,blood_type)values('421215154006','212151542006','O+');
insert into blood(donor_id,bloodb_id,blood_type)values('421215154007','212151542007','AB+');
insert into blood(donor_id,bloodb_id,blood_type)values('421215154008','212151542008','AB-');
insert into blood(donor_id,bloodb_id,blood_type)values('421215154009','212151542009','A+');
insert into blood(donor_id,bloodb_id,blood_type)values('421215154010','212151542010','B-');

insert into patient(patient_id,patient_doctor_id,patient_name,patient_phone_no,hospital_address,patient_address,patient_bloodtype)values('16120951420001','1654132219001','Mr. Tenet','147741','Rajshahi','Dinajpur','A+');
insert into patient(patient_id,patient_doctor_id,patient_name,patient_phone_no,hospital_address,patient_address,patient_bloodtype)values('16120951420002','1654132219002','Mr. Mark','145541','Dhaka','Dhaka','A-');
insert into patient(patient_id,patient_doctor_id,patient_name,patient_phone_no,hospital_address,patient_address,patient_bloodtype)values('16120951420003','1654132219003','Mr. Rit','142241','Khulna','Dhaka','B+');
insert into patient(patient_id,patient_doctor_id,patient_name,patient_phone_no,hospital_address,patient_address,patient_bloodtype)values('16120951420004','1654132219004','Mr. Euon','143341','Dhaka','Chittagong','B-');
insert into patient(patient_id,patient_doctor_id,patient_name,patient_phone_no,hospital_address,patient_address,patient_bloodtype)values('16120951420005','1654132219005','Mr. Lit','146641','Dhaka','Dhaka','A+');
insert into patient(patient_id,patient_doctor_id,patient_name,patient_phone_no,hospital_address,patient_address,patient_bloodtype)values('16120951420006','1654132219006','Mr. Benet','157751','Barisal','Dinajpur','O+');
insert into patient(patient_id,patient_doctor_id,patient_name,patient_phone_no,hospital_address,patient_address,patient_bloodtype)values('16120951420007','1654132219007','Mr. Link','164461','Rangpur','Dhaka','A-');
insert into patient(patient_id,patient_doctor_id,patient_name,patient_phone_no,hospital_address,patient_address,patient_bloodtype)values('16120951420008','1654132219008','Mr. Pit','123321','Sylhet','Dhaka','B+');
insert into patient(patient_id,patient_doctor_id,patient_name,patient_phone_no,hospital_address,patient_address,patient_bloodtype)values('16120951420009','1654132219009','Mrs. Rit','193391','Dhaka','Chittagong','AB-');
insert into patient(patient_id,patient_doctor_id,patient_name,patient_phone_no,hospital_address,patient_address,patient_bloodtype)values('16120951420010','1654132219010','Mrs. Rickita','156651','Jessore','Dhaka','AB+');
 
insert into blood_delivery(bloodb_id,patient_id)values(212151542001,16120951420001);
insert into blood_delivery(bloodb_id,patient_id)values(212151542002,16120951420002);
insert into blood_delivery(bloodb_id,patient_id)values(212151542003,16120951420003);
insert into blood_delivery(bloodb_id,patient_id)values(212151542004,16120951420004);
insert into blood_delivery(bloodb_id,patient_id)values(212151542005,16120951420005);
insert into blood_delivery(bloodb_id,patient_id)values(212151542006,16120951420006);
insert into blood_delivery(bloodb_id,patient_id)values(212151542007,16120951420007);
insert into blood_delivery(bloodb_id,patient_id)values(212151542008,16120951420008);
insert into blood_delivery(bloodb_id,patient_id)values(212151542009,16120951420009);
insert into blood_delivery(bloodb_id,patient_id)values(212151542010,16120951420010);

--show tables data
select * from donor;
select * from blood_bank;
select * from blood;
select * from patient;
select * from blood_delivery;

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

--displaying table data using select command
select * from donor where donor_id='421215154001';
select * from donor where donor_doctor_id='454132219005';
select * from donor where donor_gender='Female';
select * from donor where donor_bloodtype='A+';
select * from donor where donor_weight='80';

select * from blood_bank where bloodb_id='212151542001';
select * from blood_bank where bloodb_name='ABC';
select * from blood_bank where bloodb_address='Dhaka';

select * from blood where donor_id='421215154001';
select * from blood where bloodb_id='212151542003';
select * from blood where blood_type='A+';

select * from patient where patient_id='16120951420001';
select * from patient where patient_doctor_id='1654132219003';
select * from patient where hospital_address='Dhaka';
select * from patient where patient_address='Dhaka';
select * from patient where patient_bloodtype='A+';

--sub queries and nested queries
select * from donor where donor_id=(select donor_id from blood where bloodb_id=(select bloodb_id from blood_delivery where patient_id=(select patient_id from patient where patient_bloodtype='A-')));

--Update table data
update donor set donor_bloodtype='A-' where donor_id='421215154002';
update donor set donor_bloodtype='O-' where donor_id='421215154003';

--Insert and delete of table data
insert into patient(patient_id,patient_doctor_id,patient_name,patient_phone_no,hospital_address,patient_address,patient_bloodtype)values('16120951420006','1654132219006','Mr. kanopi','156651','Dhaka','Dhaka','O-');
delete from patient where patient_id='16120951420006';

--string operation
select donor_bloodtype from donor where donor_bloodtype like '%+';
select donor_bloodtype from donor where donor_bloodtype like 'A%';

--union, intersect, and except
select donor_bloodtype from donor where donor_bloodtype like '%+' union select donor_bloodtype from donor where donor_bloodtype='A%';
select donor_bloodtype from donor where donor_bloodtype like '%-' union select donor_bloodtype from donor where donor_bloodtype='A%';

--with clause
with max_weight(val) as (select max(donor_weight) from donor) select * from donor,max_weight where donor.donor_weight=max_weight.val;

--Aggregate function
select count(*) from donor;
select count(*) from blood_bank;
select count(*) from blood;
select count(*) from patient;
select count(*) from blood_delivery;

select count(donor_address) as donor_location from donor;
select count(patient_phone_no) as contact from patient;

select count(distinct donor_bloodtype) as blood_group from donor;
select count(distinct patient_bloodtype) as blood_group from patient;

select avg(donor_weight) from donor;
select sum(donor_weight) from donor;

select max(donor_weight) from donor;
select min(donor_weight) from donor;

--group
select donor_bloodtype,avg(donor_weight) from donor group by donor_bloodtype;
--Group by and Having
select donor_bloodtype,avg(donor_weight) from donor group by donor_bloodtype having avg(donor_weight)>70;

--Nested subquery
select donor_id,donor_name from donor where donor_id=(select donor_id from blood where bloodb_id=(select bloodb_id from blood_delivery where patient_id=(select patient_id from patient where patient_bloodtype='B+')));

--Set Membership(AND, OR,NOT)
select * from blood where blood_type='A+' and donor_id in(select donor_id from donor where donor_bloodtype like '%+');

--some/all/exists/unique
--some
select * from donor where donor_weight>some(select donor_weight from donor where donor_weight>=70);
--all
select * from donor where donor_weight>all(select donor_weight from donor where donor_weight>=50);
--exists
select * from donor where donor_weight>=80 and exists( select * from donor where donor_bloodtype like 'B%');

--string operation
select * from donor where donor_name like '%e%';
select * from donor where donor_bloodtype like 'A%';
select * from patient where patient_bloodtype like '%+';
select * from donor where donor_address like '%a%a';
select * from donor where donor_address like '%a%a%';
select * from donor where donor_address like '%i%i';
select * from donor where donor_address like '%i%i%';
select * from patient where patient_bloodtype like'__';
select * from donor where donor_address like '_____' or donor_address like '________' or donor_address like '______';

--join
--natural join
select * from donor natural join blood where blood_type='A+';
select * from donor natural join blood where blood_type='A+';
select * from donor natural join blood;
--join
select donor_name,donor_bloodtype from donor join blood using(donor_id);
select donor_name,donor_bloodtype from donor join blood on donor.donor_id=blood.donor_id;
--left outer join
select patient_name,patient_bloodtype from patient left outer join blood_delivery using (patient_id);
--right outer join
select patient_name,patient_bloodtype from patient right outer join blood_delivery using (patient_id);
--full outer join
select patient_name,patient_bloodtype from patient full outer join blood_delivery using (patient_id);
--left outer join
select patient_name,patient_bloodtype from patient left outer join blood_delivery on patient.patient_id=blood_delivery.patient_id;

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

insert into donor2(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154001','454132219001','Mr. Decon','789456123','01/01/1990','Female','Dhaka','75','120/80','A+',54132219001);
insert into donor2(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154002','454132219002','Mr. Hexa','789123456','02/05/1999','Male','Barisal','65','120/80','A+',54132219001);
insert into donor2(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154003','454132219003','Mr. Lee','798456123','11/11/2000','Female','Rangpur','80','120/80','O-',54132219003);
insert into donor2(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154004','454132219004','Mr. Heton','789465123','25/11/1995','Male','Dinajpur','73','120/80','A-',54132219004);
insert into donor2(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id)values('421215154005','454132219005','Mr. Arick','789456132','09/01/1993','Male','Jessore','68','120/80','B+',54132219004);

insert into blood_bank2(bloodb_id,bloodb_name,bloodb_address)values('212151542001','ABC','Dhaka');
insert into blood_bank2(bloodb_id,bloodb_name,bloodb_address)values('212151542002','DEF','Dhaka');
insert into blood_bank2(bloodb_id,bloodb_name,bloodb_address)values('212151542003','B1B','Rajshahi');
insert into blood_bank2(bloodb_id,bloodb_name,bloodb_address)values('212151542004','GHI','Rangpur');
insert into blood_bank2(bloodb_id,bloodb_name,bloodb_address)values('212151542005','JKL','Khulna');

insert into blood2(donor_id,bloodb_id,blood_type)values('421215154001','212151542001','A+');
insert into blood2(donor_id,bloodb_id,blood_type)values('421215154002','212151542002','O-');
insert into blood2(donor_id,bloodb_id,blood_type)values('421215154003','212151542003','A+');
insert into blood2(donor_id,bloodb_id,blood_type)values('421215154004','212151542004','A+');
insert into blood2(donor_id,bloodb_id,blood_type)values('421215154005','212151542005','B+');

--show table data using select command
select * from donor2;
select * from blood_bank2;
select * from blood2;

--delete table data
delete from donor2 where donor_id='421215154005';
delete from blood_bank2 where bloodb_id='212151542004';

----show table data using select command
select * from donor2;
select * from blood_bank2;
select * from blood2;

--dropping of tables
drop table donor3;
drop table patient2;

--Constraints on a Single Relation
create table donor3(
donor_id varchar(20) primary key,
donor_doctor_id varchar(20) not null,
donor_name varchar(30) not null,
donor_phone_no varchar(20) unique not null,
donor_dob varchar(15) not null,
donor_gender varchar(10) not null,
donor_address varchar(30) not null,
donor_weight integer check (donor_weight>=50),
donor_bp varchar(10) not null,
donor_bloodtype varchar(30) not null,
doctor_id varchar(20) not null
);

create table patient2(
patient_id varchar(20) primary key,
patient_doctor_id varchar(20) not null,
patient_name varchar(30) not null,
patient_phone_no varchar(20) unique not null,
hospital_address varchar(30) not null,
patient_address varchar(30) not null,
patient_bloodtype varchar(10) not null,
patient_weight integer check (patient_weight>=0 and patient_weight<=150),
status varchar(10) check(status in ('active','inactive','pending')),
patient_admitdate date not null,
patient_releasedate date not null,
constraint check_patient_weight_status check(
(status='active' and patient_weight>=0 and patient_weight<=20) or
(status='inactive' and patient_weight>=20 and patient_weight<=100) or
(status='pending' and patient_weight>=20 and patient_weight<=150) or
(patient_releasedate>=patient_admitdate)
)
);


--PL/SQL

--PL/SQL variable declaration and print value
set serveroutput on 
declare 
donor_id donor.donor_id%type;
donor_name donor.donor_name%type;
donor_weight number(5,2);
begin
select donor_id,donor_name,donor_weight into donor_id,donor_name,donor_weight from donor where donor_bloodtype='A+';
dbms_output.put_line('DONOR_ID: '||donor_id||' DONOR_NAME: '||donor_name||' DONOR_WEIGHT: '||donor_weight);
end;
/

--Insert and set default value
set serveroutput on
declare
donor_id donor.donor_id%type:='421215154011';
donor_doctor_id donor.donor_doctor_id%type:='454132219011';
donor_name donor.donor_name%type:='Mr. Leo';
donor_phone_no donor.donor_phone_no%type:='789362514';
donor_dob donor.donor_dob%type:='05/07/1998';
donor_gender donor.donor_gender%type:='Male';
donor_address donor.donor_address%type:='Sylhet';
donor_weight number(5,2):=71;
donor_bp donor.donor_bp%type:='120/80';
donor_bloodtype donor.donor_bloodtype%type:='O+';
doctor_id donor.doctor_id%type:='54132219003';
begin
insert into donor values(donor_id,donor_doctor_id,donor_name,donor_phone_no,donor_dob,donor_gender,donor_address,donor_weight,donor_bp,donor_bloodtype,doctor_id);
end;
/

--show table data using select command
select * from donor;

--delete table row
delete from donor where donor_id='421215154011';

--show table data using select command
select * from donor;

--row type
set serveroutput on
declare
donor_row donor%rowtype;
begin
select donor_id,donor_name,donor_phone_no,donor_weight,donor_bp into donor_row.donor_id,donor_row.donor_name,donor_row.donor_phone_no,donor_row.donor_weight,donor_row.donor_bp from donor where donor_bloodtype='A+';
end;
/

--cursor and row count
set serveroutput on
declare
cursor donor_cursor is select * from donor;
donor_row donor%rowtype;
begin
open donor_cursor;
fetch donor_cursor into donor_row.donor_id,donor_row.donor_doctor_id,donor_row.donor_name,donor_row.donor_phone_no,donor_row.donor_dob,donor_row.donor_gender,donor_row.donor_address,donor_row.donor_weight,donor_row.donor_bp,donor_row.donor_bloodtype,donor_row.doctor_id;
while donor_cursor%found loop
dbms_output.put_line('DONOR_ID: '||donor_row.donor_id||' DONOR_DOCTOR_ID: '||donor_row.donor_doctor_id||' DONOR_NAME: '||donor_row.donor_name||' DONOR_PHONE_NO: '||donor_row.donor_phone_no||' DONOR_DOB: '||donor_row.donor_dob||' DONOR_GENDER: '||donor_row.donor_gender||' DONOR_ADDRESS: '||donor_row.donor_address||' DONOR_WEIGHT: '||donor_row.donor_weight||' DONOR_BP: '||donor_row.donor_bp||' DONOR_BLOODTYPE: '||donor_row.donor_bloodtype||' DOCTOR_ID: '||donor_row.doctor_id);
dbms_output.put_line('Row count: '|| donor_cursor%rowcount);
fetch donor_cursor into donor_row.donor_id,donor_row.donor_doctor_id,donor_row.donor_name,donor_row.donor_phone_no,donor_row.donor_dob,donor_row.donor_gender,donor_row.donor_address,donor_row.donor_weight,donor_row.donor_bp,donor_row.donor_bloodtype,donor_row.doctor_id;
end loop;
close donor_cursor;
end;
/

--WHILE LOOP/ARRAY with extend() function
set serveroutput on
declare
cursor donor_cursor is select * from donor;
donor_row donor%rowtype;
counter number;
blood_type2 donor.donor_bloodtype%type;
TYPE NAMEARRAY IS VARRAY(5) OF donor.donor_bloodtype%type;
A_NAME NAMEARRAY:=NAMEARRAY();
begin
open donor_cursor;
fetch donor_cursor into donor_row.donor_id,donor_row.donor_doctor_id,donor_row.donor_name,donor_row.donor_phone_no,donor_row.donor_dob,donor_row.donor_gender,donor_row.donor_address,donor_row.donor_weight,donor_row.donor_bp,donor_row.donor_bloodtype,donor_row.doctor_id;
counter:=1;
while donor_cursor%found loop
select donor_bloodtype into blood_type2 from donor where donor_id=donor_row.donor_id;
A_NAME.EXTEND();
A_NAME(counter):=blood_type2;
counter:=counter+1;
fetch donor_cursor into donor_row.donor_id,donor_row.donor_doctor_id,donor_row.donor_name,donor_row.donor_phone_no,donor_row.donor_dob,donor_row.donor_gender,donor_row.donor_address,donor_row.donor_weight,donor_row.donor_bp,donor_row.donor_bloodtype,donor_row.doctor_id;
end loop;
close donor_cursor;
counter:=1;
while counter<=A_NAME.COUNT
LOOP
DBMS_OUTPUT.PUT_LINE(A_NAME(counter));
counter:=counter+1;
END LOOP;
end;
/

--ARRAY without extend() function
set serveroutput on
declare
cursor donor_cursor is select * from donor;
donor_row donor%rowtype;
counter number;
blood_type2 donor.donor_bloodtype%type;
TYPE NAMEARRAY IS VARRAY(5) OF donor.donor_bloodtype%type;
A_NAME NAMEARRAY:=NAMEARRAY('Book1','Book2','Book3','Book4','Book5');
begin
open donor_cursor;
fetch donor_cursor into donor_row.donor_id,donor_row.donor_doctor_id,donor_row.donor_name,donor_row.donor_phone_no,donor_row.donor_dob,donor_row.donor_gender,donor_row.donor_address,donor_row.donor_weight,donor_row.donor_bp,donor_row.donor_bloodtype,donor_row.doctor_id;
counter:=1;
while donor_cursor%found loop
select donor_bloodtype into blood_type2 from donor where donor_id=donor_row.donor_id;
A_NAME(counter):=blood_type2;
counter:=counter+1;
fetch donor_cursor into donor_row.donor_id,donor_row.donor_doctor_id,donor_row.donor_name,donor_row.donor_phone_no,donor_row.donor_dob,donor_row.donor_gender,donor_row.donor_address,donor_row.donor_weight,donor_row.donor_bp,donor_row.donor_bloodtype,donor_row.doctor_id;
end loop;
close donor_cursor;
counter:=1;
while counter<=A_NAME.COUNT
LOOP
DBMS_OUTPUT.PUT_LINE(A_NAME(counter));
counter:=counter+1;
END LOOP;
end;
/

--IF /ELSEIF /ELSE
set serveroutput on
declare
cursor donor_cursor is select * from donor;
donor_row donor%rowtype;
counter NUMBER:=1;
blood_type2 donor.donor_bloodtype%type;
TYPE NAMEARRAY IS VARRAY(5) OF donor.donor_bloodtype%type;
A_NAME NAMEARRAY:=NAMEARRAY('Book1','Book2','Book3','Book4','Book5');
begin
counter:=1;
open donor_cursor;
fetch donor_cursor into donor_row.donor_id,donor_row.donor_doctor_id,donor_row.donor_name,donor_row.donor_phone_no,donor_row.donor_dob,donor_row.donor_gender,donor_row.donor_address,donor_row.donor_weight,donor_row.donor_bp,donor_row.donor_bloodtype,donor_row.doctor_id;
while donor_cursor%found loop
select donor_bloodtype into blood_type2 from donor where donor_id=donor_row.donor_id;
if blood_type2='A+'
then
dbms_output.put_line(blood_type2||' has Rh factor');
elsif blood_type2='B+'
then
dbms_output.put_line(blood_type2||' has Rh factor');
else
dbms_output.put_line(blood_type2||' has no Rh factor');
end if;
fetch donor_cursor into donor_row.donor_id,donor_row.donor_doctor_id,donor_row.donor_name,donor_row.donor_phone_no,donor_row.donor_dob,donor_row.donor_gender,donor_row.donor_address,donor_row.donor_weight,donor_row.donor_bp,donor_row.donor_bloodtype,donor_row.doctor_id;
end loop;
close donor_cursor;
end;
/

--Procedure
CREATE OR REPLACE PROCEDURE proc2(
var1 IN NUMBER,
var2 OUT VARCHAR2,
VAR3 IN OUT NUMBER
)
AS
t_show varchar(30);
BEGIN
t_show:='From Procedure: ';
select donor_name into var2 from donor where donor_weight=var1;
var3:=var1+1;
 DBMS_OUTPUT.PUT_LINE(t_show || var2 || ' weight is ' || var1 || ' In out parameter: ' || var3);
 END;
 /
 set serveroutput on
 declare
 donor_weight donor.donor_weight%type:=65;
 donor_name donor.donor_name%type;
 extra number;
 begin
 proc2(donor_weight,donor_name,extra);
 end;
 /

--Function
set serveroutput on
create or replace function fun(var1 in varchar) return varchar AS
value donor.donor_id%type;
begin
  select donor_name into value from donor where donor_id=var1; 
   return value;
end;
/
set serveroutput on
declare 
value varchar(20);
begin
value:=fun(421215154003);
end;
/

--drop procedure and function
--drop procedure
drop procedure proc2;
--drop function
drop function fun;