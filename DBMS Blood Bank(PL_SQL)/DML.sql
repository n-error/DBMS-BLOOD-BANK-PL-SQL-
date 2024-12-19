--DML

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

--show tables data using select command
select * from donor;
select * from blood_bank;
select * from blood;
select * from patient;
select * from blood_delivery;

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

--sub query and nested query
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

--insertion of data into tables
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
