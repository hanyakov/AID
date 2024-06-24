CREATE TYPE preference_type AS ENUM ('Reminder each month', 'Committed every month', 'Committed once', 'No contact');
CREATE TYPE help_type AS ENUM ('Delivery', 'Packing', 'Both');
CREATE TABLE volunteers (
    volunteer_id SERIAL,
    full_name VARCHAR(200),
    email VARCHAR(100),
    phone VARCHAR(20),
	preference preference_type,
	helps_with help_type,
	car_size INT,
	policy_check BOOLEAN,
	additional_comments VARCHAR(500),
    PRIMARY KEY (volunteer_id, phone)
);