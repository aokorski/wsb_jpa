INSERT INTO address (id, address_line1, address_line2, city, postal_code)
VALUES
    (1, 'Avengers Tower', '5th Avenue', 'New York', '10001'),
    (2, 'Stark Tower', '7th Avenue', 'Los Angeles', '90001'),
    (3, 'X-Mansion', 'Graymalkin Lane', 'Salem Center', '10560'),
    (4, 'Baxter Building', '42nd Street', 'New York', '10018');

INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization)
VALUES
    (1, 'Stephen', 'Strange', '5874996508', 'stephen.strange@marvel.com', '084', 'CARDIOLOGY'),
    (2, 'Bruce', 'Banner', '8855506212', 'bruce.banner@marvel.com', '025', 'NEUROLOGY'),
    (3, 'Charles', 'Xavier', '2256630336', 'charles.xavier@marvel.com', '01', 'PSYCHIATRY'),
    (4, 'Reed', 'Richards', '5558405554', 'reed.richards@marvel.com', '045', 'ORTHOPEDICS'),
    (5, 'Hank', 'McCoy', '9478562140', 'hank.mccoy@marvel.com', '099', 'GENETICS');

INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, gender_type)
VALUES
    (1, 'Tony', 'Stark', '5550178', 'tony.stark@marvel.com', '0148', '1970-05-29', 'M'),
    (2, 'Steve', 'Rogers', '8005204781', 'steve.rogers@marvel.com', '01', '1918-07-04', 'M'),
    (3, 'Peter', 'Parker', '2125550108', 'peter.parker@marvel.com', '0254', '2001-08-10', 'M'),
    (4, 'Natasha', 'Romanoff', '478000252', 'natasha.romanoff@marvel.com', '084', '1984-11-22', 'F');

INSERT INTO visit (id, description, time, doctor_id, patient_id)
VALUES
    (1, 'Arc Reactor Compatibility Assessment', '2009-05-20 10:00:00', 1, 1),
    (2, 'Neurology evaluation', '1943-03-22 12:00:00', 2, 2),
    (3, 'Psychiatric consultation', '2019-10-22 09:15:00', 3, 3),
    (4, 'Orthopedic checkup', '2015-08-23 11:00:00', 4, 4),
    (5, 'Palladium Poisoning Monitoring', '2011-09-12 12:00:00', 5, 1),
    (6, 'Prosthetic Biomechanics Check', '2020-01-22 15:00:00', 4, 1);

INSERT INTO medical_treatment (id, description, type, visit_id)
VALUES
    (1, 'Arc Reactor Adjustment', 'ENGINEERING', 1),
    (2, 'Super Soldier Serum Evaluation', 'GENETIC', 2),
    (3, 'Mysterio Incident Recovery Session', 'CHEMISTRY', 3),
    (4, 'Spinal Adjustment', 'ORTHOPEDIC', 4),
    (5, 'Palladium Toxicity', 'RADIATION', 5),
    (6, 'Nerve damage', 'ORTHOPEDIC', 6);
