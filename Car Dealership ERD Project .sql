-- Primary Keys can't be empty of duplicated
-- Manufacturer Table Creation
CREATE TABLE manufacturer(
	manufacturer_id SERIAL PRIMARY KEY, 
	brand VARCHAR(100),
	model VARCHAR(100),
	make_year INTEGER,
	country VARCHAR(100)
)

-- Cars Table Creation
CREATE TABLE cars(
	car_id SERIAL PRIMARY KEY,
	model VARCHAR(100),
	make_year INTEGER,
	color VARCHAR(150),
	price NUMERIC(5,2),
	VIN VARCHAR(100),
	manufacturer_id INTEGER NOT NULL,
	FOREIGN KEY(manufacturer_id) REFERENCES manufacturer(manufacturer_id)
)

-- Customers Table Creation
CREATE TABLE customers_ (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(10),
	last_name VARCHAR(100),
	address VARCHAR(150),
	product_service VARCHAR(100),
	last_update TIME(2),
	order_id VARCHAR(100),
	car_id INTEGER not null,
	foreign KEY(car_id) REFERENCES cars(car_id)
)

-- Staff Table Creation
CREATE TABLE staff(
	staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	department VARCHAR(100),
	last_active TIME(2),
	email VARCHAR(150)
)

-- Mechanic Table Creation
CREATE TABLE mechanic(
	mechanic_no SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	specialty VARCHAR(100),
	staff_id INTEGER NOT NULL,
	FOREIGN KEY(staff_id) REFERENCES staff(staff_id)
)

-- Service Record Table Creation
create table Service_Record(
	serial_no SERIAL primary key,
	brand VARCHAR(100),
	repair VARCHAR(150),
	mileage INTEGER,
	amount NUMERIC(5,2),
	car_id INTEGER not null,
	mechanic_no INTEGER not null,
	FOREIGN KEY(car_id) REFERENCES cars(car_id),
	foreign KEY(mechanic_no) references mechanic(mechanic_no)
)

-- Sales Table Creation
CREATE TABLE sales(
	sale_no SERIAL PRIMARY KEY,
	product_service VARCHAR(100),
	amount NUMERIC(5,2),
	sale_date TIME(2),
	customer_id INTEGER not NULL,
	staff_id INTEGER not NULL,
	car_id INTEGER not NULL,
	serial_no INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers_(customer_id),
	foreign key(staff_id) references staff(staff_id),
	FOREIGN KEY(car_id) REFERENCES cars(car_id),
	FOREIGN KEY(serial_no) REFERENCES Service_Record(serial_no)
)