insert into address (id, address_line1, address_line2, city, postal_code)
values (1, 'xx', 'yy', 'city', '62-030');

insert into address (id, address_line1, address_line2, city, postal_code)
values (2, 'xxx', 'yyy', 'city2', '64-081');

insert into address (id, address_line1, address_line2, city, postal_code)
values (3, 'xxxx', 'yyyy', 'city3', '65-010');

insert into address (id, address_line1, address_line2, city, postal_code)
values (4, 'xxxxx', 'yyyyy', 'city4', '66-880');

insert into address (id, address_line1, address_line2, city, postal_code)
values (5, 'xxxxxx', 'yyyyyy', 'city5', '68-550');

insert into address (id, address_line1, address_line2, city, postal_code)
values (6, 'xxxxxxx', 'yyyyyyy', 'city6', '69-112');


insert into doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id)
values (1, 'Marek', 'Noname', '123456789', 'mareknoname@mail.com',
        '087', 'SURGEON', 1);

insert into doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id)
values (2, 'Kajetan', 'Lekarz', '597845211', 'lkajetan@mail.com',
        '802', 'SURGEON', 2);

insert into doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id)
values (3, 'Oktawian', 'Polak', '711558742', 'oktawianpl@mail.com',
        '112', 'SURGEON', 3);


insert into patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, created_at)
values (1, 'Jan', 'Kowalski', '879254225', 'jkowalski@mail.com',
    '847', '2000-08-21', 2, '2024-03-14');

insert into patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, created_at)
values (2, 'Adrianna', 'Elegancka', '847884555', 'adrianna1990@mail.com',
    '884', '1990-01-01', 6, '2024-03-14');

insert into patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, created_at)
values (3, 'Ewa', 'Beast', '999822117', 'eve.beast@mail.com',
'547', '1999-10-25', 4, '2024-03-14');


insert into visit (id, description, time, doctor_id, patient_id)
values (1, 'Lung check', '2024-07-10 12:00:00', 1, 1);
insert into visit (id, description, time, doctor_id, patient_id)
values (2, 'Lung check', '2024-08-12 12:00:00', 2, 2);
insert into visit (id, description, time, doctor_id, patient_id)
values (3, 'Lung check', '2024-08-12 15:00:00', 2, 3);


insert into medical_treatment (id, description, type, visit_id)
