insert into manufacturer(manufacturer_id, brand, model, make_year, country)
VALUES('09021', 'Toyota', 'Camry', '2009', 'Japan');

insert into manufacturer(manufacturer_id, brand, model, make_year, country)
VALUES('14027', 'Toyota', 'Corolla', '2014', 'Japan');

insert into manufacturer(manufacturer_id, brand, model, make_year, country)
VALUES('13004', 'Ford', 'Fusion', '2013', 'America');

insert into manufacturer(manufacturer_id, brand, model, make_year, country)
VALUES('06007', 'Ford', 'Focus', '2006', 'America');


-- Insert statement for cars
INSERT INTO cars(car_id, model, make_year, color, price, VIN, manufacturer_id)
VALUES('01001', 'Toyota Camry', '2009', 'Black', '850.00', '1GNEK13Z52R123456', '09021');

INSERT INTO cars(car_id, model, make_year, color, price, VIN, manufacturer_id)
VALUES('01010', 'Toyota Corolla', '2014', 'Blue', '120.00', 'JTDKN3DU4A0175758', '14027');

INSERT INTO cars(car_id, model, make_year, color, price, VIN, manufacturer_id)
VALUES('05070', 'Ford Fusion', '2013', 'Black', '900.00', '5YFBURHE2KP915346', '13004');

INSERT INTO cars(car_id, model, make_year, color, price, VIN, manufacturer_id)
VALUES('01200', 'Ford Focus', '2006', 'Green', '500.00', '1FAFP34N86W123456', '06007');


-- Insert statement for customers data
INSERT INTO customers_(customer_id, first_name, last_name, address, product_service, last_update, order_id, car_id)
VALUES(0001, 'Bryan', 'Washinton', '1200 Hancock, Quincy, MA, 82169', 'New Ford Fusion', '10/12/2023', '0390', 'FD05FUS020');

INSERT INTO customers_(customer_id, first_name, last_name, address, product_service, last_update, order_id, car_id)
VALUES(0028, 'Trinity', 'Smith', '3200 Mt Vernon Hwy, Mt Vernon, VA, 22121', 'New Ford Focus', '10/12/2019', '0125', 'FD01FCS200');

INSERT INTO customers_(customer_id, first_name, last_name, address, product_service, last_update, order_id, car_id)
VALUES(0121, 'John', 'Madison', '2050 James Monroe Parkway, Charlottesville, VA', 'Repair Honda Civic', '04/12/2024', '0400', '003925');

INSERT INTO customers_(customer_id, first_name, last_name, address, product_service, last_update, order_id, car_id)
VALUES(0028, 'Trinity', 'Smith', '3200 Mt Vernon Hwy, Mt Vernon, VA, 22121', 'Repair Ford Focus', '01/26/2023', '0355', 'FD01FCS200');


-- Insert statement for staff data
INSERT INTO staff(staff_id, first_name, last_name, department, last_active, email)
VALUES(001, 'Mark', 'Twain', 'Repairs', '05/10/2024', 'marktwain@gmail.com');

INSERT INTO staff(staff_id, first_name, last_name, department, last_active, email)
VALUES(005, 'David', 'Spencer', 'Sales', '01/10/2024', 'davidspencer94@gmail.com');

INSERT INTO staff(staff_id, first_name, last_name, department, last_active, email)
VALUES(025, 'Karen', 'Fisher', 'Mechanic', '07/14/2023', 'karesher001@gmail.com');

INSERT INTO staff(staff_id, first_name, last_name, department, last_active, email)
VALUES(012, 'Kwaku', 'Gavor', 'Sales', '02/05/2024', 'kwakulee@gmail.com');


-- Insert statement for mechanic data
INSERT INTO mechanic(mechanic_no, first_name, last_name, specialty, staff_id)
VALUES(001, 'Mark', 'Twain', 'Repairs', '001');

INSERT INTO mechanic(mechanic_no, first_name, last_name, specialty, staff_id)
VALUES(004, 'Karen', 'Fisher', 'Electrical', '025');

INSERT INTO mechanic(mechanic_no, first_name, last_name, specialty, staff_id)
VALUES(017, 'Hassan', 'Schwaibi', 'Transmission', '071');

INSERT INTO mechanic(mechanic_no, first_name, last_name, specialty, staff_id)
VALUES(028, 'Jaimen', 'Garcia', 'Tires', '104');

-- Insert statement for service record data
insert into service_record(serial_no, brand, repair, mileage, amount, car_id, mechanic_no)
VALUES(0021, 'Ford', 'Left brake', '20,500', '900.00', 'FD05FUS020', 017);

insert into service_record(serial_no, brand, repair, mileage, amount, car_id, mechanic_no)
VALUES(0028, 'Honda', 'Suspension', '48,950', '1,200.00', 'HD05ODY009', 032);

insert into service_record(serial_no, brand, repair, mileage, amount, car_id, mechanic_no)
VALUES(0031, 'General Motors', 'Tires', '62,780', '100.00', 'GM05SLVS001', 017);

insert into service_record(serial_no, brand, repair, mileage, amount, car_id, mechanic_no)
VALUES(0039, 'Toyota', 'Battery', '14,289', '150.00', 'TY01COR001', 025);


-- Insert statement for sales record data
insert into sales(sale_no, product_service, amount, sale_date, customer_id, staff_id, car_id, serial_no)
VALUES(0127, 'New car', '5,000.00', '02/15/23', 0028, 012, 'FD01FCS200', 000);

insert into sales(sale_no, product_service, amount, sale_date, customer_id, staff_id, car_id, serial_no)
VALUES(0152, 'Service', '900.00', '08/01/2023', 112, 071, 'HD05ODY009', 028);

insert into sales(sale_no, product_service, amount, sale_date, customer_id, staff_id, car_id, serial_no)
VALUES(0221, 'New car', '22,000.00', '09/10/2023', 078, 005, 'TY01CAM021', 000);

insert into sales(sale_no, product_service, amount, sale_date, customer_id, staff_id, car_id, serial_no)
VALUES(0240, 'New car', '55,000.00', '09/28/2023', 198, 012, 'GM10SLV017', 000);
