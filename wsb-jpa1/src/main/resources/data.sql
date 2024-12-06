insert into address (id, address_line1, address_line2, city, postal_code)
            values (1, 'xx', 'yy', 'city', '62-030');
insert into address (id, address_line1, address_line2, city, postal_code)
    values (2, 'xxx', 'yyy', 'city2', '64-081');
insert into doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id)
    values (1, 'Marek', 'Noname', '123456789', 'mareknoname@gmail.com',
        '087', 'SURGEON', 1);
insert into patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id)
    values (1, 'Jan', 'Kowalski', '879254225', 'jkowalski@gmail.com',
        '847', '2000-08-21', 2);
insert into visit (id, description, time, doctor_id, patient_id)
    values (1, 'Lung check', '2024-12-18 15:00:00', 1, 1);
insert into medical_treatment (id, description, type, visit_id)
    values (1, 'Lung ultrasound', 'USG', 1);
