set serveroutput on
declare
  d_bloodtype donor.donor_bloodtype%type;
  d_donor_id donor.donor_id%type;
  d_donor_name donor.donor_name%type;
  d_donor_weight donor.donor_weight%type;
  d_donor_address donor.donor_address%type;
  d_donor_bp donor.donor_bp%type;
  d_donor_phone_no donor.donor_phone_no%type;
begin
  d_bloodtype := '&blood_group';
  for donor_rec in (select donor_id, donor_name,donor_weight,donor_address,donor_bp,donor_phone_no
                    from donor
                    where donor_bloodtype = d_bloodtype)
  loop
    d_donor_id := donor_rec.donor_id;
    d_donor_name := donor_rec.donor_name;
    d_donor_weight := donor_rec.donor_weight;
    d_donor_address := donor_rec.donor_address;
    d_donor_bp := donor_rec.donor_bp;
    d_donor_phone_no := donor_rec.donor_phone_no;
    
    dbms_output.put_line('Donor ID: ' || d_donor_id || '| Donor Name: ' || d_donor_name||'| Donor Weight: '||d_donor_weight||'| Donor Address: '||d_donor_address||'| Donor Blood Pressure: '||d_donor_bp||'| Donor Phone No: '||d_donor_phone_no||'| Donor Blood Type: '|| d_bloodtype);
  end loop;
end;
/

