create table employees (
		employee_id int primary key,
        first_name varchar (50),
        last_name varchar (50),
        email varchar (50),
        phone_number varchar (15),
		hire_date date,
        job_title varchar (20),
        salary decimal (6,2)
);

select * from employees

create table departments (
		department_id int primary key,
        department_name varchar (30),
        location varchar (30),
        employee_id int,
        foreign key(employee_id) references employees(employee_id)
);

select * from departments

create table financials(
		financial_id int primary key,
        transaction_date date,
        amount decimal (5,2),
        transaction_type varchar(30),
        account_id int,
        department_id int,
        foreign key (department_id) references departments (department_id) 
);

select * from financials

create table inventory(
		inventory_id int primary key,
        item_name varchar (50),
        item_description varchar (50),
        quantity int,
        reorder_level int,
        cost_price int,
        financial_id int,
        foreign key (financial_id) references financials(financial_id)
);

select * from inventory

create table sales(
		sale_id int primary key,
        sale_date date,
        sale_amount decimal(5,2),
        payment_method varchar (20),
        employee_id int,
        inventory_id int,
        customer_id int, 
        foreign key (inventory_id) references inventory (inventory_id),
        foreign key (customer_id) references customers(customer_id), 
        foreign key (employee_id) references employees (employee_id)
);

select * from sales


create table procurement(
		procurement_id int primary key,
        procurement_date date,
        quantity_ordered varchar(50),
        total_cost decimal (5,2),
        inventory_id int,
        supplier_id int,
        employee_id int ,
        foreign key (inventory_id) references inventory (inventory_id),
        foreign key (supplier_id) references suppliers (supplier_id),
        foreign key (employee_id) references employees (employee_id)
);

select * from procurement

create table customers(
		customer_id int primary key,
        first_name varchar(50),
        last_name varchar (50),
        email varchar (30),
        phone_number varchar (15),
        billing_address varchar (30),
        shipping_address varchar (30)
);

select *from customers

create table suppliers (
		supplier_id int Primary Key,
		supplier_name varchar(30),
		contact_person varchar(30),
		phone_number varchar (30),
		email varchar (30),
		address varchar (30)
);

select * from suppliers

create table accounts(
		account_id int primary key,
        account_name varchar (30),
        account_type varchar (30),
        balance decimal (10,2)
);
------------------------------------------------values-------------------------------

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_title, salary) VALUES
(1, 'John', 'Doe', 'johndoe1@example.com', '555-1234561', '2020-01-15', 'Manager', 5000.00),
(2, 'Jane', 'Smith', 'janesmith2@example.com', '555-1234562', '2019-03-22', 'Engineer', 4500.00),
(3, 'Michael', 'Johnson', 'michaelj3@example.com', '555-1234563', '2021-07-11', 'Accountant', 3800.00),
(4, 'Emily', 'Davis', 'emilydavis4@example.com', '555-1234564', '2020-05-30', 'Designer', 4100.00),
(5, 'David', 'Brown', 'davidbrown5@example.com', '555-1234565', '2018-10-19', 'HR Specialist', 4700.00),
(6, 'Linda', 'Wilson', 'lindaw6@example.com', '555-1234566', '2017-09-10', 'Sales', 3700.00),
(7, 'James', 'Miller', 'jamesm7@example.com', '555-1234567', '2022-02-05', 'Analyst', 3900.00),
(8, 'Patricia', 'Moore', 'patriciam8@example.com', '555-1234568', '2019-12-21', 'Clerk', 3500.00),
(9, 'Robert', 'Taylor', 'roberttaylor9@example.com', '555-1234569', '2020-08-13', 'Technician', 3300.00),
(10, 'Jessica', 'Anderson', 'jessicaa10@example.com', '555-1234570', '2021-03-15', 'Consultant', 4400.00),
(11, 'William', 'Thomas', 'williamt11@example.com', '555-1234571', '2020-06-17', 'Developer', 5000.00),
(12, 'Barbara', 'Jackson', 'barbaraj12@example.com', '555-1234572', '2019-09-27', 'Support', 3700.00),
(13, 'Christopher', 'White', 'chriswhite13@example.com', '555-1234573', '2020-11-15', 'IT Specialist', 4600.00),
(14, 'Elizabeth', 'Harris', 'elizabethh14@example.com', '555-1234574', '2021-01-03', 'Coordinator', 4100.00),
(15, 'Matthew', 'Martin', 'matthew15@example.com', '555-1234575', '2020-04-01', 'Manager', 5100.00),
(16, 'Susan', 'Garcia', 'susang16@example.com', '555-1234576', '2022-05-08', 'Engineer', 4400.00),
(17, 'Daniel', 'Martinez', 'danielm17@example.com', '555-1234577', '2019-06-29', 'Accountant', 3900.00),
(18, 'Nancy', 'Robinson', 'nancy18@example.com', '555-1234578', '2020-07-19', 'Designer', 4000.00),
(19, 'Paul', 'Clark', 'paulc19@example.com', '555-1234579', '2019-01-17', 'HR Specialist', 4300.00),
(20, 'Karen', 'Rodriguez', 'karenr20@example.com', '555-1234580', '2018-11-28', 'Sales', 3600.00),
(21, 'Mark', 'Lewis', 'markl21@example.com', '555-1234581', '2022-03-14', 'Analyst', 4000.00),
(22, 'Steven', 'Lee', 'steven22@example.com', '555-1234582', '2020-12-19', 'Clerk', 3200.00),
(23, 'Sandra', 'Walker', 'sandra23@example.com', '555-1234583', '2019-02-24', 'Technician', 3500.00),
(24, 'George', 'Hall', 'georgeh24@example.com', '555-1234584', '2018-04-15', 'Consultant', 4300.00),
(25, 'Donna', 'Allen', 'donna25@example.com', '555-1234585', '2019-06-01', 'Developer', 4700.00),
(26, 'Edward', 'Young', 'edward26@example.com', '555-1234586', '2021-03-22', 'Support', 3500.00),
(27, 'Michelle', 'King', 'michelle27@example.com', '555-1234587', '2022-01-19', 'IT Specialist', 4600.00),
(28, 'Brian', 'Wright', 'brian28@example.com', '555-1234588', '2020-09-17', 'Coordinator', 4100.00),
(29, 'Laura', 'Lopez', 'laura29@example.com', '555-1234589', '2018-10-21', 'Manager', 4800.00),
(30, 'Kevin', 'Hill', 'kevin30@example.com', '555-1234590', '2021-05-13', 'Engineer', 4200.00),
(31, 'Kimberly', 'Scott', 'kimberly31@example.com', '555-1234591', '2020-07-09', 'Accountant', 3800.00),
(32, 'Jason', 'Green', 'jason32@example.com', '555-1234592', '2019-08-23', 'Designer', 4500.00),
(33, 'Maria', 'Adams', 'maria33@example.com', '555-1234593', '2022-04-10', 'HR Specialist', 3700.00),
(34, 'Charles', 'Baker', 'charles34@example.com', '555-1234594', '2018-05-07', 'Sales', 3600.00),
(35, 'James', 'Gonzalez', 'james35@example.com', '555-1234595', '2021-07-14', 'Analyst', 4000.00),
(36, 'Betty', 'Nelson', 'betty36@example.com', '555-1234596', '2019-09-11', 'Clerk', 3500.00),
(37, 'Ronald', 'Carter', 'ronald37@example.com', '555-1234597', '2020-11-19', 'Technician', 3300.00),
(38, 'Lisa', 'Mitchell', 'lisa38@example.com', '555-1234598', '2019-12-12', 'Consultant', 4200.00),
(39, 'Kenneth', 'Perez', 'kenneth39@example.com', '555-1234599', '2021-01-09', 'Developer', 4700.00),
(40, 'Karen', 'Roberts', 'karen40@example.com', '555-1234600', '2022-06-19', 'Support', 3400.00),
(41, 'Donald', 'Turner', 'donald41@example.com', '555-1234601', '2020-02-17', 'IT Specialist', 4600.00),
(42, 'Nancy', 'Phillips', 'nancy42@example.com', '555-1234602', '2018-09-21', 'Coordinator', 4100.00),
(43, 'Anthony', 'Campbell', 'anthony43@example.com', '555-1234603', '2019-07-13', 'Manager', 4900.00),
(44, 'Rebecca', 'Parker', 'rebecca44@example.com', '555-1234604', '2020-08-22', 'Engineer', 4400.00),
(45, 'Joshua', 'Evans', 'joshua45@example.com', '555-1234605', '2018-11-23', 'Accountant', 3900.00),
(46, 'Deborah', 'Edwards', 'deborah46@example.com', '555-1234606', '2019-12-14', 'Designer', 4100.00),
(47, 'Gregory', 'Collins', 'gregory47@example.com', '555-1234607', '2022-07-13', 'HR Specialist', 4300.00),
(48, 'Mary', 'Stewart', 'mary48@example.com', '555-1234608', '2021-06-15', 'Sales', 3600.00),
(49, 'Frank', 'Sanchez', 'frank49@example.com', '555-1234609', '2020-09-13', 'Analyst', 4000.00),
(50, 'Catherine', 'Morris', 'catherine50@example.com', '555-1234610', '2022-03-22', 'Clerk', 3500.00);


INSERT INTO departments (department_id, department_name, location, employee_id) 
VALUES
		(1, 'Human Resources', 'New York', 1),
		(2, 'Finance', 'Los Angeles', 2),
		(3, 'Engineering', 'San Francisco', 3),
		(4, 'Marketing', 'Chicago', 4),
		(5, 'Sales', 'Boston', 5),
		(6, 'IT', 'Miami', 6),
		(7, 'Legal', 'Houston', 7),
		(8, 'Operations', 'Seattle', 8),
		(9, 'Customer Service', 'Atlanta', 9),
		(10, 'Logistics', 'Dallas', 10),
		(11, 'Design', 'San Diego', 11),
		(12, 'Research', 'Denver', 12),
		(13, 'Public Relations', 'Phoenix', 13),
		(14, 'Administration', 'Philadelphia', 14),
		(15, 'Procurement', 'San Antonio', 15),
		(16, 'Strategy', 'Orlando', 16),
		(17, 'Quality Control', 'Austin', 17),
		(18, 'Product Management', 'Las Vegas', 18),
		(19, 'Business Development', 'Tampa', 19),
		(20, 'Supply Chain', 'Nashville', 20),
		(21, 'Accounting', 'Charlotte', 21),
		(22, 'Manufacturing', 'Columbus', 22),
		(23, 'Distribution', 'Indianapolis', 23),
		(24, 'Compliance', 'Detroit', 24),
		(25, 'Risk Management', 'Baltimore', 25),
		(26, 'Investor Relations', 'Memphis', 26),
		(27, 'Innovation', 'Louisville', 27),
		(28, 'Training', 'Raleigh', 28),
		(29, 'HR Support', 'Milwaukee', 29),
		(30, 'Corporate Communications', 'Albuquerque', 30),
		(31, 'Business Intelligence', 'Tucson', 31),
		(32, 'Client Relations', 'Fresno', 32),
		(33, 'Data Management', 'Sacramento', 33),
		(34, 'Technical Support', 'Kansas City', 34),
		(35, 'Auditing', 'Mesa', 35),
		(36, 'Legal Compliance', 'Omaha', 36),
		(37, 'Taxation', 'Long Beach', 37),
		(38, 'Internal Audit', 'Virginia Beach', 38),
		(39, 'Cyber Security', 'Oakland', 39),
		(40, 'Consulting', 'Minneapolis', 40),
		(41, 'Outreach', 'Tulsa', 41),
		(42, 'Education', 'Arlington', 42),
		(43, 'Employee Engagement', 'New Orleans', 43),
		(44, 'Healthcare', 'Wichita', 44),
		(45, 'Recruitment', 'Cleveland', 45),
		(46, 'Digital Marketing', 'Tampa', 46),
		(47, 'Maintenance', 'Colorado Springs', 47),
		(48, 'Retail Operations', 'Bakersfield', 48),
		(49, 'Event Management', 'Anaheim', 49),
		(50, 'Content Creation', 'Aurora', 50);
        
INSERT INTO financials (financial_id, transaction_date, amount, transaction_type, account_id, department_id) VALUES
(1, '2023-01-10', 150.25, 'Credit', 1, 1),
(2, '2023-02-15', 200.75, 'Debit', 2, 2),
(3, '2023-03-22', 50.00, 'Credit', 3, 3),
(4, '2023-04-05', 325.50, 'Debit', 4, 4),
(5, '2023-05-10', 90.75, 'Credit', 5, 5),
(6, '2023-06-18', 120.00, 'Debit', 6, 6),
(7, '2023-07-24', 250.00, 'Credit', 7, 7),
(8, '2023-08-02', 75.50, 'Debit', 8, 8),
(9, '2023-09-19', 190.25, 'Credit', 9, 9),
(10, '2023-10-27', 310.00, 'Debit', 10, 10),
(11, '2023-01-11', 205.75, 'Credit', 11, 11),
(12, '2023-02-20', 400.50, 'Debit', 12, 12),
(13, '2023-03-28', 65.00, 'Credit', 13, 13),
(14, '2023-04-06', 315.75, 'Debit', 14, 14),
(15, '2023-05-15', 80.25, 'Credit', 15, 15),
(16, '2023-06-21', 145.50, 'Debit', 16, 16),
(17, '2023-07-29', 250.00, 'Credit', 17, 17),
(18, '2023-08-09', 95.50, 'Debit', 18, 18),
(19, '2023-09-20', 185.75, 'Credit', 19, 19),
(20, '2023-10-28', 320.25, 'Debit', 20, 20),
(21, '2023-01-12', 160.00, 'Credit', 21, 21),
(22, '2023-02-22', 280.50, 'Debit', 22, 22),
(23, '2023-03-29', 55.75, 'Credit', 23, 23),
(24, '2023-04-07', 305.00, 'Debit', 24, 24),
(25, '2023-05-17', 110.50, 'Credit', 25, 25),
(26, '2023-06-23', 215.25, 'Debit', 26, 26),
(27, '2023-07-30', 175.75, 'Credit', 27, 27),
(28, '2023-08-11', 95.00, 'Debit', 28, 28),
(29, '2023-09-22', 190.50, 'Credit', 29, 29),
(30, '2023-10-30', 290.75, 'Debit', 30, 30),
(31, '2023-01-14', 135.50, 'Credit', 31, 31),
(32, '2023-02-25', 345.25, 'Debit', 32, 32),
(33, '2023-03-30', 125.00, 'Credit', 33, 33),
(34, '2023-04-10', 295.50, 'Debit', 34, 34),
(35, '2023-05-19', 95.75, 'Credit', 35, 35),
(36, '2023-06-25', 215.00, 'Debit', 36, 36),
(37, '2023-07-31', 185.25, 'Credit', 37, 37),
(38, '2023-08-12', 85.50, 'Debit', 38, 38),
(39, '2023-09-24', 180.25, 'Credit', 39, 39),
(40, '2023-10-31', 325.50, 'Debit', 40, 40),
(41, '2023-01-15', 120.75, 'Credit', 41, 41),
(42, '2023-02-27', 405.50, 'Debit', 42, 42),
(43, '2023-03-31', 105.00, 'Credit', 43, 43),
(44, '2023-04-11', 295.75, 'Debit', 44, 44),
(45, '2023-05-21', 80.25, 'Credit', 45, 45),
(46, '2023-06-26', 140.50, 'Debit', 46, 46),
(47, '2023-08-01', 285.00, 'Credit', 47, 47),
(48, '2023-09-01', 105.50, 'Debit', 48, 48),
(49, '2023-10-01', 170.25, 'Credit', 49, 49),
(50, '2023-11-01', 310.75, 'Debit', 50, 50);

        
INSERT INTO inventory (inventory_id, item_name, item_description, quantity, reorder_level, cost_price, financial_id) VALUES
(1, 'Laptop', '15-inch screen', 10, 5, 750, 1),
(2, 'Smartphone', '128GB storage', 20, 8, 500, 2),
(3, 'Keyboard', 'Mechanical', 50, 15, 30, 3),
(4, 'Mouse', 'Wireless', 45, 10, 25, 4),
(5, 'Monitor', '27-inch', 12, 6, 200, 5),
(6, 'Headphones', 'Noise-cancelling', 30, 10, 150, 6),
(7, 'Printer', 'Laserjet', 8, 3, 180, 7),
(8, 'External Hard Drive', '1TB', 25, 10, 80, 8),
(9, 'Router', 'Dual-band', 20, 5, 60, 9),
(10, 'Webcam', '1080p HD', 15, 5, 50, 10),
(11, 'Tablet', '10-inch screen', 18, 7, 350, 11),
(12, 'Smartwatch', 'Heart rate monitor', 22, 8, 200, 12),
(13, 'Charger', 'USB-C', 40, 15, 20, 13),
(14, 'Power Bank', '10000mAh', 35, 12, 30, 14),
(15, 'Speaker', 'Bluetooth', 28, 10, 70, 15),
(16, 'Projector', '4K resolution', 5, 2, 450, 16),
(17, 'Camera', 'DSLR', 10, 4, 900, 17),
(18, 'Tripod', 'Aluminum', 20, 8, 50, 18),
(19, 'Memory Card', '128GB', 60, 20, 25, 19),
(20, 'Microphone', 'USB', 18, 6, 100, 20),
(21, 'Graphic Tablet', '10x6 inches', 7, 3, 120, 21),
(22, 'Cables', 'HDMI', 100, 30, 15, 22),
(23, 'SSD', '500GB', 25, 10, 90, 23),
(24, 'Laptop Stand', 'Adjustable', 40, 15, 25, 24),
(25, 'Wireless Charger', 'Fast charging', 35, 12, 40, 25),
(26, 'Fitness Tracker', 'Waterproof', 28, 10, 60, 26),
(27, 'Gaming Mouse', 'RGB lighting', 20, 8, 70, 27),
(28, 'Desk Lamp', 'LED', 50, 15, 20, 28),
(29, 'Backpack', 'Waterproof', 30, 12, 80, 29),
(30, 'Portable Speaker', 'Bluetooth', 25, 10, 50, 30),
(31, 'Drone', '4K camera', 5, 2, 1200, 31),
(32, 'Smart TV', '55-inch', 6, 3, 1000, 32),
(33, 'Coffee Maker', 'Single-serve', 15, 5, 120, 33),
(34, 'Air Purifier', 'HEPA filter', 10, 4, 200, 34),
(35, 'Electric Kettle', '1.5L', 25, 10, 50, 35),
(36, 'Vacuum Cleaner', 'Cordless', 8, 3, 180, 36),
(37, 'Fan', 'Tower', 12, 5, 60, 37),
(38, 'Air Conditioner', 'Portable', 5, 2, 400, 38),
(39, 'Heater', 'Ceramic', 15, 6, 100, 39),
(40, 'Blender', '500W', 20, 8, 70, 40),
(41, 'Oven', 'Convection', 10, 4, 250, 41),
(42, 'Toaster', '2-slice', 18, 7, 40, 42),
(43, 'Iron', 'Steam', 22, 8, 30, 43),
(44, 'Hair Dryer', 'Ionic', 25, 10, 60, 44),
(45, 'Shaver', 'Electric', 20, 8, 80, 45),
(46, 'Water Filter', '5-stage', 12, 5, 120, 46),
(47, 'Humidifier', 'Cool mist', 15, 6, 80, 47),
(48, 'Thermometer', 'Infrared', 40, 15, 30, 48),
(49, 'First Aid Kit', '50-piece', 35, 12, 25, 49),
(50, 'Fire Extinguisher', 'Portable', 10, 4, 70, 50);


INSERT INTO sales (sale_id, sale_date, sale_amount, payment_method, employee_id, inventory_id, customer_id) VALUES
(1, '2024-01-01', 150.75, 'Credit Card', 1, 1, 1),
(2, '2024-01-02', 200.00, 'Cash', 2, 2, 2),
(3, '2024-01-03', 75.50, 'Debit Card', 3, 3, 3),
(4, '2024-01-04', 120.30, 'Credit Card', 4, 4, 4),
(5, '2024-01-05', 90.00, 'PayPal', 5, 5, 5),
(6, '2024-01-06', 60.50, 'Cash', 6, 6, 6),
(7, '2024-01-07', 45.00, 'Debit Card', 7, 7, 7),
(8, '2024-01-08', 300.00, 'Credit Card', 8, 8, 8),
(9, '2024-01-09', 150.25, 'Cash', 9, 9, 9),
(10, '2024-01-10', 225.10, 'Credit Card', 10, 10, 10),
(11, '2024-01-11', 88.40, 'PayPal', 11, 11, 11),
(12, '2024-01-12', 150.00, 'Debit Card', 12, 12, 12),
(13, '2024-01-13', 320.50, 'Cash', 13, 13, 13),
(14, '2024-01-14', 77.75, 'Credit Card', 14, 14, 14),
(15, '2024-01-15', 125.60, 'Cash', 15, 15, 15),
(16, '2024-01-16', 210.00, 'Debit Card', 16, 16, 16),
(17, '2024-01-17', 95.80, 'Credit Card', 17, 17, 17),
(18, '2024-01-18', 30.50, 'PayPal', 18, 18, 18),
(19, '2024-01-19', 88.00, 'Cash', 19, 19, 19),
(20, '2024-01-20', 400.25, 'Credit Card', 20, 20, 20),
(21, '2024-01-21', 125.10, 'Cash', 21, 21, 21),
(22, '2024-01-22', 62.40, 'Debit Card', 22, 22, 22),
(23, '2024-01-23', 500.00, 'Credit Card', 23, 23, 23),
(24, '2024-01-24', 78.75, 'PayPal', 24, 24, 24),
(25, '2024-01-25', 150.00, 'Cash', 25, 25, 25),
(26, '2024-01-26', 180.60, 'Debit Card', 26, 26, 26),
(27, '2024-01-27', 350.90, 'Credit Card', 27, 27, 27),
(28, '2024-01-28', 95.00, 'Cash', 28, 28, 28),
(29, '2024-01-29', 450.75, 'Credit Card', 29, 29, 29),
(30, '2024-01-30', 200.00, 'PayPal', 30, 30, 30),
(31, '2024-01-31', 75.50, 'Debit Card', 31, 31, 31),
(32, '2024-02-01', 105.00, 'Credit Card', 32, 32, 32),
(33, '2024-02-02', 60.00, 'Cash', 33, 33, 33),
(34, '2024-02-03', 80.20, 'PayPal', 34, 34, 34),
(35, '2024-02-04', 270.00, 'Credit Card', 35, 35, 35),
(36, '2024-02-05', 150.50, 'Cash', 36, 36, 36),
(37, '2024-02-06', 400.25, 'Debit Card', 37, 37, 37),
(38, '2024-02-07', 222.30, 'Credit Card', 38, 38, 38),
(39, '2024-02-08', 125.00, 'PayPal', 39, 39, 39),
(40, '2024-02-09', 95.50, 'Cash', 40, 40, 40),
(41, '2024-02-10', 180.00, 'Debit Card', 41, 41, 41),
(42, '2024-02-11', 90.30, 'Credit Card', 42, 42, 42),
(43, '2024-02-12', 70.80, 'Cash', 43, 43, 43),
(44, '2024-02-13', 330.00, 'PayPal', 44, 44, 44),
(45, '2024-02-14', 140.50, 'Debit Card', 45, 45, 45),
(46, '2024-02-15', 55.25, 'Credit Card', 46, 46, 46),
(47, '2024-02-16', 67.90, 'Cash', 47, 47, 47),
(48, '2024-02-17', 450.00, 'PayPal', 48, 48, 48),
(49, '2024-02-18', 320.75, 'Debit Card', 49, 49, 49),
(50, '2024-02-19', 180.00, 'Credit Card', 50, 50, 50);



INSERT INTO procurement (procurement_id, procurement_date, quantity_ordered, total_cost, inventory_id, supplier_id, employee_id) VALUES

(6, '2024-01-06', '50', 800.00, 6, 6, 6),
(7, '2024-01-07', '75', 120.00, 7, 7, 7),
(8, '2024-01-08', '200', 300.00, 8, 8, 8),
(9, '2024-01-09', '125', 100.00, 9, 9, 9),
(10, '2024-01-10', '300', 600.00, 10, 10, 10),
(11, '2024-01-11', '80', 100.00, 11, 11, 11),
(12, '2024-01-12', '60', 950.00, 12, 12, 12),
(13, '2024-01-13', '170', 200.00, 13, 13, 13),
(14, '2024-01-14', '220', 300.00, 14, 14, 14),
(15, '2024-01-15', '90', 100.00, 15, 15, 15),
(16, '2024-01-16', '150', 200.00, 16, 16, 16),
(17, '2024-01-17', '200', 300.00, 17, 17, 17),
(18, '2024-01-18', '180', 200.00, 18, 18, 18),
(19, '2024-01-19', '75', 100.00, 19, 19, 19),
(20, '2024-01-20', '50', 800.00, 20, 20, 20),
(21, '2024-01-21', '300', 400.00, 21, 21, 21),
(22, '2024-01-22', '400', 700.00, 22, 22, 22),
(23, '2024-01-23', '200', 300.00, 23, 23, 23),
(24, '2024-01-24', '150', 200.00, 24, 24, 24),
(25, '2024-01-25', '80', 120.00, 25, 25, 25),
(26, '2024-01-26', '60', 900.00, 26, 26, 26),
(27, '2024-01-27', '500', 800.00, 27, 27, 27),
(28, '2024-01-28', '100', 100.00, 28, 28, 28),
(29, '2024-01-29', '40', 600.00, 29, 29, 29),
(30, '2024-01-30', '300', 400.00, 30, 30, 30),
(31, '2024-01-31', '90', 100.00, 31, 31, 31),
(32, '2024-02-01', '120', 100.00, 32, 32, 32),
(33, '2024-02-02', '220', 300.00, 33, 33, 33),
(34, '2024-02-03', '250', 400.00, 34, 34, 34),
(35, '2024-02-04', '300', 500.00, 35, 35, 35),
(36, '2024-02-05', '150', 200.00, 36, 36, 36),
(37, '2024-02-06', '80', 100.00, 37, 37, 37),
(38, '2024-02-07', '500', 900.00, 38, 38, 38),
(39, '2024-02-08', '100', 100.00, 39, 39, 39),
(40, '2024-02-09', '250', 400.00, 40, 40, 40),
(41, '2024-02-10', '90', 100.00, 41, 41, 41),
(42, '2024-02-11', '120', 200.00, 42, 42, 42),
(43, '2024-02-12', '200', 300.00, 43, 43, 43),
(44, '2024-02-13', '150', 200.00, 44, 44, 44),
(45, '2024-02-14', '300', 500.00, 45, 45, 45),
(46, '2024-02-15', '400', 700.00, 46, 46, 46),
(47, '2024-02-16', '500', 900.00, 47, 47, 47),
(48, '2024-02-17', '350', 600.00, 48, 48, 48),
(49, '2024-02-18', '100', 100.00, 49, 49, 49),
(50, '2024-02-19', '75', 100.00, 50, 50, 50);





INSERT INTO customers (customer_id, first_name, last_name, email, phone_number, billing_address, shipping_address) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-0001', '123 Elm St, Springfield', '456 Oak St, Springfield'),
(2, 'Bob', 'Smith', 'bob.smith@example.com', '555-0002', '789 Pine St, Rivertown', '101 Maple St, Rivertown'),
(3, 'Charlie', 'Brown', 'charlie.brown@example.com', '555-0003', '234 Cedar St, Hilltown', '567 Birch St, Hilltown'),
(4, 'David', 'Wilson', 'david.wilson@example.com', '555-0004', '345 Walnut St, Brookfield', '678 Chestnut St, Brookfield'),
(5, 'Eva', 'Davis', 'eva.davis@example.com', '555-0005', '456 Ash St, Lakeside', '789 Spruce St, Lakeside'),
(6, 'Frank', 'Miller', 'frank.miller@example.com', '555-0006', '567 Maple St, Woodlands', '890 Fir St, Woodlands'),
(7, 'Grace', 'Lee', 'grace.lee@example.com', '555-0007', '678 Fir St, Greenfield', '901 Willow St, Greenfield'),
(8, 'Henry', 'Martinez', 'henry.martinez@example.com', '555-0008', '789 Pine St, Valleyview', '234 Dogwood St, Valleyview'),
(9, 'Isabella', 'Rodriguez', 'isabella.rodriguez@example.com', '555-0009', '890 Oak St, Hillcrest', '345 Larch St, Hillcrest'),
(10, 'Jack', 'Hernandez', 'jack.hernandez@example.com', '555-0010', '901 Cedar St, Brookside', '456 Pine St, Brookside'),
(11, 'Kathy', 'Lopez', 'kathy.lopez@example.com', '555-0011', '123 Maple St, Riverview', '567 Birch St, Riverview'),
(12, 'Leo', 'Gonzalez', 'leo.gonzalez@example.com', '555-0012', '234 Walnut St, Shady Grove', '678 Cedar St, Shady Grove'),
(13, 'Mia', 'Taylor', 'mia.taylor@example.com', '555-0013', '345 Spruce St, Clearview', '789 Oak St, Clearview'),
(14, 'Noah', 'Anderson', 'noah.anderson@example.com', '555-0014', '456 Elm St, Sunset', '890 Maple St, Sunset'),
(15, 'Olivia', 'Thomas', 'olivia.thomas@example.com', '555-0015', '567 Fir St, Meadowbrook', '901 Willow St, Meadowbrook'),
(16, 'Paul', 'Jackson', 'paul.jackson@example.com', '555-0016', '678 Ash St, Pine Hill', '234 Dogwood St, Pine Hill'),
(17, 'Quinn', 'White', 'quinn.white@example.com', '555-0017', '789 Birch St, Clearwater', '345 Maple St, Clearwater'),
(18, 'Rachel', 'Harris', 'rachel.harris@example.com', '555-0018', '890 Oak St, Silverlake', '456 Cedar St, Silverlake'),
(19, 'Sam', 'Martin', 'sam.martin@example.com', '555-0019', '901 Elm St, Red River', '567 Birch St, Red River'),
(20, 'Tina', 'Thompson', 'tina.thompson@example.com', '555-0020', '123 Maple St, Goldfield', '678 Oak St, Goldfield'),
(21, 'Uma', 'Garcia', 'uma.garcia@example.com', '555-0021', '234 Pine St, Springdale', '789 Cedar St, Springdale'),
(22, 'Victor', 'Martinez', 'victor.martinez@example.com', '555-0022', '345 Fir St, Blue Valley', '890 Spruce St, Blue Valley'),
(23, 'Wendy', 'Lewis', 'wendy.lewis@example.com', '555-0023', '456 Birch St, Willow Creek', '901 Maple St, Willow Creek'),
(24, 'Xander', 'Young', 'xander.young@example.com', '555-0024', '567 Cedar St, Fairview', '234 Oak St, Fairview'),
(25, 'Yara', 'King', 'yara.king@example.com', '555-0025', '678 Ash St, Westwood', '345 Birch St, Westwood'),
(26, 'Zane', 'Scott', 'zane.scott@example.com', '555-0026', '789 Walnut St, Eastside', '456 Pine St, Eastside'),
(27, 'Alice', 'Robinson', 'alice.robinson@example.com', '555-0027', '890 Maple St, Northview', '567 Fir St, Northview'),
(28, 'Bob', 'Walker', 'bob.walker@example.com', '555-0028', '901 Elm St, Southpark', '678 Cedar St, Southpark'),
(29, 'Charlie', 'Hall', 'charlie.hall@example.com', '555-0029', '123 Birch St, Maplewood', '789 Oak St, Maplewood'),
(30, 'David', 'Allen', 'david.allen@example.com', '555-0030', '234 Ash St, Riverside', '890 Maple St, Riverside'),
(31, 'Eva', 'Sanchez', 'eva.sanchez@example.com', '555-0031', '345 Oak St, Maple Grove', '901 Fir St, Maple Grove'),
(32, 'Frank', 'Morris', 'frank.morris@example.com', '555-0032', '456 Pine St, Lakeview', '234 Cedar St, Lakeview'),
(33, 'Grace', 'Murphy', 'grace.murphy@example.com', '555-0033', '567 Fir St, Meadowlark', '345 Maple St, Meadowlark'),
(34, 'Henry', 'Cooper', 'henry.cooper@example.com', '555-0034', '678 Ash St, Willow Springs', '456 Birch St, Willow Springs'),
(35, 'Isabella', 'Reed', 'isabella.reed@example.com', '555-0035', '789 Oak St, Pine Valley', '567 Cedar St, Pine Valley'),
(36, 'Jack', 'Bailey', 'jack.bailey@example.com', '555-0036', '890 Maple St, Sun Valley', '678 Fir St, Sun Valley'),
(37, 'Kathy', 'Bell', 'kathy.bell@example.com', '555-0037', '901 Birch St, Silver Springs', '789 Oak St, Silver Springs'),
(38, 'Leo', 'Gonzalez', 'leo.gonzalez@example.com', '555-0038', '123 Cedar St, Lakewood', '890 Pine St, Lakewood'),
(39, 'Mia', 'Cruz', 'mia.cruz@example.com', '555-0039', '234 Fir St, Gold River', '901 Birch St, Gold River'),
(40, 'Noah', 'Hughes', 'noah.hughes@example.com', '555-0040', '345 Oak St, Sunnydale', '234 Maple St, Sunnydale'),
(41, 'Olivia', 'Ward', 'olivia.ward@example.com', '555-0041', '456 Maple St, Green Valley', '345 Pine St, Green Valley'),
(42, 'Paul', 'Rivera', 'paul.rivera@example.com', '555-0042', '567 Ash St, Meadow Ridge', '456 Fir St, Meadow Ridge'),
(43, 'Quinn', 'Peterson', 'quinn.peterson@example.com', '555-0043', '678 Cedar St, Cedar Hill', '567 Oak St, Cedar Hill'),
(44, 'Rachel', 'Duncan', 'rachel.duncan@example.com', '555-0044', '789 Pine St, Pine Hills', '678 Maple St, Pine Hills'),
(45, 'Sam', 'Fowler', 'sam.fowler@example.com', '555-0045', '890 Birch St, Redwood', '789 Fir St, Redwood'),
(46, 'Tina', 'Bryant', 'tina.bryant@example.com', '555-0046', '901 Cedar St, Oakdale', '890 Oak St, Oakdale'),
(47, 'Uma', 'Hansen', 'uma.hansen@example.com', '555-0047', '123 Fir St, Valley Park', '901 Maple St, Valley Park'),
(48, 'Victor', 'Simmons', 'victor.simmons@example.com', '555-0048', '234 Oak St, Riverwood', '234 Birch St, Riverwood'),
(49, 'Wendy', 'Dixon', 'wendy.dixon@example.com', '555-0049', '345 Pine St, Lakeshore', '345 Fir St, Lakeshore'),
(50, 'Xander', 'Morrison', 'xander.morrison@example.com', '555-0050', '456 Cedar St, Brookfield', '365 Fir St, Lakeshore');



INSERT INTO suppliers (supplier_id, supplier_name, contact_person, phone_number, email, address) VALUES
(1, 'Tech Supplies Co.', 'Alice Johnson', '555-0011', 'alice.j@techsupplies.com', '123 Tech Lane, Silicon Valley'),
(2, 'Gadgets Wholesale', 'Bob Smith', '555-0022', 'bob.s@gadgetswholesale.com', '456 Gadget St, San Francisco'),
(3, 'Office Solutions Inc.', 'Charlie Brown', '555-0033', 'charlie.b@officesolutions.com', '789 Office Ave, New York'),
(4, 'Home Goods Supplier', 'David Wilson', '555-0044', 'david.w@homegoodssupplier.com', '321 Home St, Austin'),
(5, 'Electronics Depot', 'Eve Davis', '555-0055', 'eve.d@electronicsdepot.com', '654 Electronics Blvd, Chicago'),
(6, 'Kitchen Supplies Co.', 'Frank Miller', '555-0066', 'frank.m@kitchensupplies.com', '987 Kitchen Rd, Los Angeles'),
(7, 'Furniture World', 'Grace Lee', '555-0077', 'grace.l@furnitureworld.com', '234 Furniture Way, Miami'),
(8, 'Sports Gear Supplier', 'Henry Martinez', '555-0088', 'henry.m@sportsgearsupplier.com', '876 Sports Dr, Seattle'),
(9, 'Auto Parts Warehouse', 'Isabella Rodriguez', '555-0099', 'isabella.r@autoparts.com', '543 Auto Blvd, Detroit'),
(10, 'Health Supplies Co.', 'Jack Johnson', '555-0100', 'jack.j@healthsupplies.com', '210 Health St, Boston'),
(11, 'Clothing Distributor', 'Kathy Wilson', '555-0111', 'kathy.w@clothingdis.com', '123 Fashion Rd, Dallas'),
(12, 'Bookstore Supplies', 'Leo Brown', '555-0122', 'leo.b@bookstoresupplies.com', '456 Literary Ave, Denver'),
(13, 'Beauty Products Inc.', 'Mia Lee', '555-0133', 'mia.l@beautyproducts.com', '789 Glamour St, San Diego'),
(14, 'Beverage Supplier', 'Noah Davis', '555-0144', 'noah.d@beveragesupplier.com', '321 Refreshment Rd, Orlando'),
(15, 'Grocery Distribution', 'Olivia Martinez', '555-0155', 'olivia.m@grocerydistri.com', '654 Grocery Blvd, Phoenix'),
(16, 'Pet Supplies Co.', 'Paul Taylor', '555-0166', 'paul.t@petsuppliesco.com', '987 Pet St, Charlotte'),
(17, 'Stationery Store', 'Quinn Brown', '555-0177', 'quinn.b@stationerystore.com', '234 Write Ave, Portland'),
(18, 'Tool Suppliers', 'Rachel Johnson', '555-0188', 'rachel.j@toolsuppliers.com', '876 Tool Rd, Las Vegas'),
(19, 'Art Supplies Depot', 'Sam Wilson', '555-0199', 'sam.w@artsuppliesdepot.com', '543 Art Blvd, Nashville'),
(20, 'Gardening Supplies', 'Tina Lee', '555-0200', 'tina.l@gardeningsupplies.com', '210 Garden St, Atlanta'),
(21, 'Cleaning Products Inc.', 'Uma Patel', '555-0211', 'uma.p@cleaningproducts.com', '123 Clean St, Minneapolis'),
(22, 'Electrical Goods Co.', 'Victor Davis', '555-0222', 'victor.d@electrical.com', '456 Elec Ave, Indianapolis'),
(23, 'Kids Toys Supplier', 'Wendy Martinez', '555-0233', 'wendy.m@kidstoyssupplier.com', '789 Play Rd, Kansas City'),
(24, 'Party Supplies Inc.', 'Xander Brown', '555-0244', 'xander.b@partysupplies.com', '321 Celebration St, Columbus'),
(25, 'Mobile Accessories', 'Yara Johnson', '555-0255', 'yara.j@mobileaccessories.com', '654 Mobile Blvd, San Antonio'),
(26, 'Construction Materials', 'Zachary Lee', '555-0266', 'zachary.l@construction.com', '987 Build St, Oklahoma City'),
(27, 'Winter Gear Supplier', 'Ava Smith', '555-0277', 'ava.s@wintergearsupplier.com', '234 Snowy Rd, Salt Lake City'),
(28, 'Luxury Goods Co.', 'Benjamin Davis', '555-0288', 'benjamin.d@luxurygoods.com', '876 Luxury Blvd, Richmond'),
(29, 'Digital Marketing Solutions', 'Carmen Rodriguez', '555-0299', 'carmen.r@digitalmarketing.com', '543 Market St, Tampa'),
(30, 'Wholesale Electronics', 'Derek Wilson', '555-0300', 'derek.w@wholesalee.com', '210 Tech Ave, Milwaukee'),
(31, 'Craft Supplies Co.', 'Ella Brown', '555-0311', 'ella.b@craftsupplies.com', '123 Craft St, Tucson'),
(32, 'Corporate Gifts Inc.', 'Felix Lee', '555-0322', 'felix.l@corporategifts.com', '456 Gift Rd, Virginia Beach'),
(33, 'Baking Supplies Co.', 'Grace Martinez', '555-0333', 'grace.m@bakingsupplies.com', '789 Bake Blvd, Honolulu'),
(34, 'Fitness Equipment', 'Hugo Patel', '555-0344', 'hugo.p@fitnessequipment.com', '321 Fit St, Omaha'),
(35, 'Camping Gear Supplier', 'Ivy Johnson', '555-0355', 'ivy.j@campinggear.com', '654 Camp Rd, Newark'),
(36, 'Floral Supplies Co.', 'James Brown', '555-0366', 'james.b@floralsupplies.com', '987 Flower Blvd, Anchorage'),
(37, 'Safety Equipment', 'Kelly Davis', '555-0377', 'kelly.d@safetyequipment.com', '234 Safety Rd, St. Louis'),
(38, 'Window Treatments Inc.', 'Leon Lee', '555-0388', 'leon.l@windowtreatments.com', '876 Shade Ave, Boise'),
(39, 'Luxury Furniture', 'Maya Patel', '555-0399', 'maya.p@luxury.com', '543 Luxury Rd, Richmond'),
(40, 'Home Improvement Co.', 'Nina Martinez', '555-0400', 'nina.m@homeimprovement.com', '210 Home Ave, Cleveland'),
(41, 'Grocery Supplies Inc.', 'Oscar Brown', '555-0411', 'oscar.b@grocerysupplies.com', '123 Market Rd, Birmingham'),
(42, 'Kitchen Appliance Co.', 'Penny Johnson', '555-0422', 'penny.j@kitchenappliance.com', '456 Kitchen St, Pittsburgh'),
(43, 'Car Accessories Supplier', 'Quentin Lee', '555-0433', 'quentin.l@caraccessories.com', '789 Car Blvd, Seattle'),
(44, 'Vegan Products Co.', 'Rachel Patel', '555-0444', 'rachel.p@veganproducts.com', '321 Vegan Ave, Orlando'),
(45, 'Gourmet Foods Inc.', 'Sophie Martinez', '555-0455', 'sophie.m@gourmetfoods.com', '654 Gourmet Rd, San Diego'),
(46, 'Water Purification Supplier', 'Tim Brown', '555-0466', 'tim.b@waterpurifi.com', '987 Pure St, Salt Lake City'),
(47, 'Fashion Accessories Co.', 'Uma Lee', '555-0477', 'uma.l@fashion.com', '234 Fashion Blvd, Tampa'),
(48, 'Home Decor Supplier', 'Vera Patel', '555-0488', 'vera.p@homedecor.com', '876 Decor Rd, Orlando'),
(49, 'Electrical Appliances', 'Wade Johnson', '555-0499', 'wade.j@electrical.com', '543 Appliance St, Miami'),
(50, 'Outdoor Living Supplier', 'Xena Martinez', '555-0500', 'xena.m@outdoorliving.com', '210 Outdoor Rd, Houston');
   
   
   
INSERT INTO accounts (account_id, account_name, account_type, balance) 
VALUES		(1, 'Alpha Checking', 'Checking', 1500.00),
			(2, 'Beta Savings', 'Savings', 12000.50),
			(3, 'Gamma Business', 'Business', 25250.75),
			(4, 'Delta Investments', 'Investments', 40200.00),
			(5, 'Epsilon Checking', 'Checking', 900.00),
			(6, 'Zeta Savings', 'Savings', 30500.50),
			(7, 'Eta Business', 'Business', 18750.00),
			(8, 'Theta Investments', 'Investments', 7550.25),
			(9, 'Iota Checking', 'Checking', 2200.75),
			(10, 'Kappa Savings', 'Savings', 10100.00),
			(11, 'Lambda Business', 'Business', 28500.00),
			(12, 'Mu Investments', 'Investments', 67500.50),
			(13, 'Nu Checking', 'Checking', 1575.00),
			(14, 'Xi Savings', 'Savings', 12750.25),
			(15, 'Omicron Business', 'Business', 34700.00),
			(16, 'Pi Investments', 'Investments', 50250.00),
			(17, 'Rho Checking', 'Checking', 700.00),
			(18, 'Sigma Savings', 'Savings', 15000.50),
			(19, 'Tau Business', 'Business', 22000.75),
			(20, 'Upsilon Investments', 'Investments', 7800.00),
			(21, 'Phi Checking', 'Checking', 1325.00),
			(22, 'Chi Savings', 'Savings', 18750.00),
			(23, 'Psi Business', 'Business', 30500.50),
			(24, 'Omega Investments', 'Investments', 50700.00),
			(25, 'Alpha2 Checking', 'Checking', 1100.75),
			(26, 'Beta2 Savings', 'Savings', 2500.25),
			(27, 'Gamma2 Business', 'Business', 5000.50),
			(28, 'Delta2 Investments', 'Investments', 75000.00),
			(29, 'Epsilon2 Checking', 'Checking', 1750.00),
			(30, 'Zeta2 Savings', 'Savings', 9250.00),
			(31, 'Eta2 Business', 'Business', 14500.00),
			(32, 'Theta2 Investments', 'Investments', 40250.75),
			(33, 'Iota2 Checking', 'Checking', 1950.25),
			(34, 'Kappa2 Savings', 'Savings', 17000.50),
			(35, 'Lambda2 Business', 'Business', 25000.00),
			(36, 'Mu2 Investments', 'Investments', 60000.00),
			(37, 'Nu2 Checking', 'Checking', 800.00),
			(38, 'Xi2 Savings', 'Savings', 22000.50),
			(39, 'Omicron2 Business', 'Business', 19550.75),
			(40, 'Pi2 Investments', 'Investments', 8300.00),
			(41, 'Rho2 Checking', 'Checking', 6500.00),
			(42, 'Sigma2 Savings', 'Savings', 9500.00),
			(43, 'Tau2 Business', 'Business', 7800.75),
			(44, 'Upsilon2 Investments', 'Investments', 28500.50),
			(45, 'Phi2 Checking', 'Checking', 1000.00),
			(46, 'Chi2 Savings', 'Savings', 15500.00),
			(47, 'Psi2 Business', 'Business', 50000.50),
			(48, 'Omega2 Investments', 'Investments', 11000.00),
			(49, 'Alpha3 Checking', 'Checking', 900.75),
			(50, 'Beta3 Savings', 'Savings', 1200.25),
			(51, 'Gamma3 Business', 'Business', 6050.50),
			(52, 'Delta3 Investments', 'Investments', 20500.00),
			(53, 'Epsilon3 Checking', 'Checking', 1575.25),
			(54, 'Zeta3 Savings', 'Savings', 9500.75),
			(55, 'Eta3 Business', 'Business', 12050.50),
			(56, 'Theta3 Investments', 'Investments', 42000.00),
			(57, 'Iota3 Checking', 'Checking', 1000.50),
			(58, 'Kappa3 Savings', 'Savings', 3250.25),
			(59, 'Lambda3 Business', 'Business', 17800.75),
			(60, 'Mu3 Investments', 'Investments', 39000.00),
			(61, 'Nu3 Checking', 'Checking', 875.25),
			(62, 'Xi3 Savings', 'Savings', 30000.50),
			(63, 'Omicron3 Business', 'Business', 19550.75),
			(64, 'Pi3 Investments', 'Investments', 6200.00),
			(65, 'Rho3 Checking', 'Checking', 2650.50),
			(66, 'Sigma3 Savings', 'Savings', 10500.00),
			(67, 'Tau3 Business', 'Business', 14250.75),
			(68, 'Upsilon3 Investments', 'Investments', 30700.50),
			(69, 'Phi3 Checking', 'Checking', 925.00),
			(70, 'Chi3 Savings', 'Savings', 8700.00),
			(71, 'Psi3 Business', 'Business', 21700.50),
			(72, 'Omega3 Investments', 'Investments', 35250.00),
			(73, 'Alpha4 Checking', 'Checking', 1025.50),
			(74, 'Beta4 Savings', 'Savings', 17250.00),
			(75, 'Gamma4 Business', 'Business', 5000.75),
			(76, 'Delta4 Investments', 'Investments', 76000.00),
			(77, 'Epsilon4 Checking', 'Checking', 1750.25),
			(78, 'Zeta4 Savings', 'Savings', 13500.75),
			(79, 'Eta4 Business', 'Business', 7500.50),
			(80, 'Theta4 Investments', 'Investments', 50500.00),
			(81, 'Iota4 Checking', 'Checking', 1325.00),
			(82, 'Kappa4 Savings', 'Savings', 17250.50),
			(83, 'Lambda4 Business', 'Business', 30500.00),
			(84, 'Mu4 Investments', 'Investments', 6700.00),
			(85, 'Nu4 Checking', 'Checking', 1150.50),
			(86, 'Xi4 Savings', 'Savings', 32500.00),
			(87, 'Omicron4 Business', 'Business', 12050.75),
			(88, 'Pi4 Investments', 'Investments', 8800.50),
			(89, 'Rho4 Checking', 'Checking', 1400.00),
			(90, 'Sigma4 Savings', 'Savings', 5000.00),
			(91, 'Tau4 Business', 'Business', 18550.75),
			(92, 'Upsilon4 Investments', 'Investments', 30550.00),
			(93, 'Phi4 Checking', 'Checking', 2000.00),
			(94, 'Chi4 Savings', 'Savings', 17250.00),
			(95, 'Psi4 Business', 'Business', 7800.25),
			(96, 'Omega4 Investments', 'Investments', 67000.00),
			(97, 'Alpha5 Checking', 'Checking', 1550.25),
			(98, 'Beta5 Savings', 'Savings', 8500.50),
			(99, 'Gamma5 Business', 'Business', 7500.00),
			(100, 'Delta5 Investments', 'Investments', 5200.75);
            
 --------------------------------------------------------------------work up -------------------------------------------------------

select * from accounts

select * from customers

select * from departments

select * from employees

select * from financials

select * from inventory
					
select * from procurement

select * from sales 

select * from suppliers

---------------------------------------------------


SELECT e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN departments d ON e.employee_id = d.employee_id;


SELECT e.first_name, e.last_name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.employee_id = d.employee_id;

SELECT SUM(salary) AS total_salaries
FROM employees;

SELECT AVG(sale_amount) AS average_sale
FROM sales;

SELECT employee_id, SUM(sale_amount) AS total_sales
FROM sales
GROUP BY employee_id
HAVING total_sales > 100;  

SELECT *
FROM employees
ORDER BY hire_date ASC;

SELECT DISTINCT job_title
FROM employees;

SELECT *
FROM employees
WHERE salary > 50000;

SELECT s.sale_id, s.sale_date, s.sale_amount
FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id
WHERE c.first_name = 'John' AND c.last_name = 'Doe';

SELECT s.supplier_name, SUM(p.total_cost) AS total_cost
FROM procurement p
INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
GROUP BY s.supplier_name;

-------------------------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE GetEmployeeDepartments()
BEGIN
    SELECT e.first_name, e.last_name, d.department_name
    FROM employees e
    INNER JOIN departments d ON e.employee_id = d.employee_id;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetEmployeesWithDepartments()
BEGIN
    SELECT e.first_name, e.last_name, d.department_name
    FROM employees e
    LEFT JOIN departments d ON e.employee_id = d.employee_id;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetTotalSalaries()
BEGIN
    SELECT SUM(salary) AS total_salaries
    FROM employees;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetAverageSale()
BEGIN
    SELECT AVG(sale_amount) AS average_sale
    FROM sales;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetTopSalesEmployees()
BEGIN
    SELECT employee_id, SUM(sale_amount) AS total_sales
    FROM sales
    GROUP BY employee_id
    HAVING total_sales > 100;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE ListEmployeesByHireDate()
BEGIN
    SELECT *
    FROM employees
    ORDER BY hire_date ASC;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE ListJobTitles()
BEGIN
    SELECT DISTINCT job_title
    FROM employees;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetHighEarningEmployee(in salary_hold decimal(10,2))
BEGIN
    SELECT *
    FROM employees
    WHERE salary > salary_hold;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE GetSalesByCustomers()
BEGIN
    SELECT s.sale_id, s.sale_date, s.sale_amount
    FROM sales s
    INNER JOIN customers c ON s.customer_id = c.customer_id
    WHERE c.first_name = 'bob' = c.first_name= 'uma';
END $$
DELIMITER ;
select*from suppliers
DELIMITER $$
CREATE PROCEDURE GetTotalCostBySupplier()
BEGIN
    SELECT s.supplier_name, SUM(p.total_cost) AS total_cost
    FROM procurement p
    INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
    GROUP BY s.supplier_name;
END $$
DELIMITER ;
-----------------------------------------------------------------------------------

call GetEmployeeDepartments()
call GetEmployeesWithDepartments()
call GetTotalSalaries()
call GetAverageSale()
call GetTopSalesEmployees()
call ListEmployeesByHireDate()
call ListJobTitles()
call GetHighEarningEmployee(1000);
call GetSalesByCustomers()
call GetTotalCostBySupplier()