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