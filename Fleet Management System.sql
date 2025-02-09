CREATE DATABASE IF NOT EXISTS trucks_management_system1;
USE truck_management_system1;
CREATE TABLE Truck (
    truck_id VARCHAR(10) PRIMARY KEY,
    license_plate VARCHAR(50),
    equipment_type VARCHAR(50),
    size VARCHAR(10),
    weight_capacity DECIMAL(10, 2),
    odometer DECIMAL(10, 2),
    fuel_tank_capacity DECIMAL(10, 2)
);

INSERT INTO Truck (truck_id, license_plate, equipment_type, size, weight_capacity, odometer, fuel_tank_capacity)
VALUES
    ('T0001', 'RCN-2941', 'DRY BOX', '26Ft', 8000, 440084, 100),
    ('T0002', 'R58-1689', 'Reefer', '53Ft', 16000, 370857, 300),
    ('T0003', 'PMJ-6067', 'DRY BOX', '26Ft', 5000, 385660, 100),
    ('T0004', 'K13-5728', 'Reefer', '26Ft', 5500, 287780, 150),
    ('T0005', 'R57-3839', 'Reefer', '53Ft', 18000, 242406, 300);
CREATE TABLE Customer (
    customer_id VARCHAR(10) PRIMARY KEY,
    company VARCHAR(50),
    mc_num VARCHAR(20),
    agent_name VARCHAR(50),
    phone VARCHAR(20),
    city VARCHAR(50),
    state VARCHAR(2),
    zip VARCHAR(10),
    email VARCHAR(100),
    credit_score INT,
    payment_terms INT
);
-- Inserting data into Customer table
INSERT INTO Customer (customer_id, company, mc_num, agent_name, phone, city, state, zip, email, credit_score, payment_terms)
VALUES
    ('CU00001', 'Juno Logistics', '10241409', 'Danielle Weaver', '(289)-573-8673', 'Clayton', 'IN', '46118', 'Danielle_Weaver@JunoLogistics.com', 99, 9),
    ('CU00002', 'Silo Simple Logistics', '5243478', 'Tucker Bryan', '(702)-377-1067', 'Twentynine Plain', 'CA', '92278', 'Tucker_Bryan@SiloSimpleLogistics.com', 97, 7),
    ('CU00003', 'Exxact', '8703316', 'Meredith Moody', '(696)-632-1249', 'Upper Marlbor', 'MD', '20772', 'Meredith_Moody@Exxact.com', 98, 9),
    ('CU00004', 'Global Tranz', '6508135', 'Ryland Palacios', '(544)-648-3035', 'Taborcity', 'NC', '28463', 'Ryland_Palacios@GlobalTranz.com', 98, 12),
    ('CU00005', 'Trident Transport', '5911588', 'Bria Hardy', '(702)-115-6611', 'Fredericksbur', 'VA', '22401', 'Bria_Hardy@TridentTransport.com', 98, 8),
    ('CU00006', 'LDI Logistics Daynamic', '5143208', 'Jayceon Buchanan', '(664)-589-6119', 'Houston', 'TX', '77064', 'Jayceon_Buchanan@LDILogisticsDaynamic.com', 95, 13),
    ('CU00007', 'Land Star', '2990885', 'Maryam Horn', '(790)-462-5219', 'Florence', 'KY', '41042', 'Maryam_Horn@LandStar.com', 97, 9),
    ('CU00008', 'PS Logistics', '1099527', 'Wilson Prince', '(828)-105-6881', 'Andover', 'MA', '01810', 'Wilson_Prince@PSLogistics.com', 99, 10),
    ('CU00009', 'AGD Logistics', '7232131', 'Greta Craig', '(262)-630-4600', 'Atlanta', 'GA', '30349', 'Greta_Craig@AGDLogistics.com', 97, 8);
CREATE TABLE Driver (
    driver_id VARCHAR(10) PRIMARY KEY,
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    date_of_birth DATE,
    phone_num VARCHAR(15),
    email VARCHAR(100),
    truck_id VARCHAR(10),
    license_num VARCHAR(20),
    license_expiry_date DATE,
    license_type VARCHAR(20),
    hiring_date DATE,
    percentage DECIMAL(5, 2),
    FOREIGN KEY (truck_id) REFERENCES Truck(truck_id)
);

INSERT INTO Driver (driver_id, f_name, l_name, date_of_birth, phone_num, email, truck_id, license_num, license_expiry_date, license_type, hiring_date, percentage)
VALUES
    ('D00001', 'Uriel', 'Stane', '1982-07-16', '(214) 259-5546', 'milton@yahoo.ca', 'T0002', 'O-1155024493703-7', '2036-03-21', 'Class-A', '2022-07-13', 30),
    ('D00002', 'Kristen', 'Bale', '1991-05-09', '(214) 449-4156', 'metzzo@mac.com', 'T0005', 'O-1530549222378-8', '2030-05-17', 'Class-A', '2016-09-07', 30),
    ('D00003', 'Erick', 'Jackson', '1977-09-04', '(214) 426-4710', 'noneme@outlook.com', 'T0003', 'O-1214695411833-1', '2030-08-04', 'Class-C', '2016-11-25', 20),
    ('D00004', 'Antonio', 'Novorro', '1972-07-21', '(469) 558-8328', 'gerlo@me.com', 'T0004', 'O-1215403390092-5', '2031-08-18', 'Class-B', '2017-12-09', 25),
    ('D00005', 'Ronica', 'Blackmon', '1990-02-03', '(214) 926-5976', 'djupedal@msn.com', 'T0001', 'O-1563428897844-9', '2033-12-13', 'Class-C', '2020-04-05', 20),
    ('D00006', 'Antwone', 'Star', '1975-11-15', '(214) 684-7961', 'ntegrity@hotmail.com', 'T0003', 'O-1100296872310-7', '2036-01-02', 'Class-C', '2022-04-25', 20),
    ('D00007', 'Kevin', 'Davis', '1973-02-20', '(469) 449-1047', 'lydia@icloud.com', 'T0004', 'O-1408583083388-7', '2029-07-19', 'Class-B', '2015-11-10', 25),
    ('D00008', 'Twonika', 'Statham', '1974-01-31', '(469) 465-2535', 'ehood@verizon.net', 'T0005', 'O-1078665205849-9', '2034-04-07', 'Class-A', '2020-07-29', 30),
    ('D00009', 'Tonshea', 'Jhonson', '1984-08-08', '(972) 854-9946', 'chinthaka@live.com', 'T0001', 'O-1416183753925-2', '2030-11-01', 'Class-C', '2017-02-22', 20),
    ('D00010', 'Antonio', 'Crow', '1979-08-09', '(808) 989-8047', 'world@mac.com', 'T0002', 'O-1254803171473-2', '2031-05-20', 'Class-A', '2017-09-10', 30),
    ('D00011', 'Victor', 'White', '1981-12-22', '(469) 903-8263', 'novanet@outlook.com', 'T0001', 'O-1378653456459-8', '2033-07-02', 'Class-C', '2019-10-24', 20),
    ('D00012', 'Dominic', 'Hawkins', '1987-04-12', '(314) 285-9644', 'delpino@msn.com', 'T0005', 'O-1104222964180-4', '2029-03-01', 'Class-A', '2015-06-23', 30),
    ('D00013', 'Phillips', 'Mclane', '1975-11-30', '(442) 347-8450', 'killmenow@live.com', 'T0004', 'O-1569873622726-7', '2034-01-17', 'Class-B', '2020-05-10', 25),
    ('D00014', 'Rogers', 'Fredrick', '1976-02-07', '(617) 953-9162', 'bdthomas@verizon.net', 'T0003', 'O-1236397720137-6', '2029-08-16', 'Class-C', '2015-12-08', 20),
    ('D00015', 'Merghini', 'Yassine', '1981-01-31', '(803) 466-1569', 'aprakash@gmail.com', 'T0002', 'O-1275595341594-7', '2032-12-29', 'Class-A', '2019-04-22', 30);

CREATE TABLE Truck_Load (
    Truck_Load_id VARCHAR(50) PRIMARY KEY,
    order_num VARCHAR(20),
    driver_id VARCHAR(50),
    agent_id VARCHAR(50),
    payment_status VARCHAR(10),
    truck_id VARCHAR(10),
    customer_id VARCHAR(50),
    linehaul_rate INT,
    lumper_detention_layover INT,
    total_amount INT,
    loaded_miles INT,
    dh_miles INT,
    payment_date DATE,
    payment_time TIME,
    payment_city VARCHAR(50),
    payment_state VARCHAR(2),
    payment_zip VARCHAR(10),
    dispatch_time TIME,
    dispatch_date DATE,
    dispatch_city VARCHAR(50),
    dispatch_state VARCHAR(2),
    dispatch_zip VARCHAR(10),
    FOREIGN KEY (truck_id) REFERENCES Truck(truck_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
INSERT INTO Truck_Load (Truck_Load_id, order_num, driver_id, agent_id, payment_status, truck_id, customer_id, linehaul_rate, lumper_detention_layover, total_amount, loaded_miles, dh_miles, payment_date, payment_time, payment_city, payment_state, payment_zip, dispatch_time, dispatch_date, dispatch_city, dispatch_state, dispatch_zip)
VALUES
    ('LID0001', 'S00062866', 'D00003', 'AID003', 'FACTORED', 'T0003', 'CU00001', 2400, NULL, 2400, 1530, 58, '2021-01-09', '01:00:00', 'Edinburgh', 'TX', '78539', '13:00:00', '2021-04-10', 'Clayton', 'IN', '46118'),
    ('LID0002', '65589', 'D00002', 'AID005', 'FACTORED', 'T0005', 'CU00002', 3150, NULL, 3150, 1969, 145, '2021-09-30', '23:59:00', 'Monroe', 'WI', '53566', '16:00:00', '2021-04-10', 'Twentynine Plain', 'CA', '92278'),
    ('LID0003', 'o616799', 'D00003', 'AID003', 'FACTORED', 'T0003', 'CU00003', 1200, NULL, 1200, 626, 39, '2021-04-10', '13:00:00', 'Vandalia', 'OH', '45377', '08:30:00', '2021-05-10', 'Upper Marlbor', 'MD', '20772'),
    ('LID0004', '23003948', 'D00001', 'AID002', 'FACTORED', 'T0002', 'CU00004', 2000, NULL, 2000, 1180, 142, '2021-04-10', '16:00:00', 'Dallas', 'TX', '75220', '11:00:00', '2021-06-10', 'Taborcity', 'NC', '28463'),
    ('LID0005', 'o239099', 'D00003', 'AID003', 'FACTORED', 'T0003', 'CU00005', 400, NULL, 400, 217, 42, '2021-06-10', '08:30:00', 'Chester', 'VA', '23836', '15:00:00', '2021-06-10', 'Fredericksbur', 'VA', '22401'),
    ('LID0006', '919826', 'D00002', 'AID005', 'FACTORED', 'T0005', 'CU00006', 2900, NULL, 2900, 1684, 100, '2021-05-10', '11:00:00', 'Santa Fe', 'CA', '90670', '15:00:00', '2021-07-10', 'Houston', 'TX', '77064'),
    ('LID0007', '8678825', 'D00003', 'AID003', 'FACTORED', 'T0003', 'CU00007', 1000, NULL, 1000, 693, 106, '2021-06-10', '15:00:00', 'Lancaster', 'PA', '17601', '12:00:00', '2021-07-10', 'Florence', 'KY', '41042'),
    ('LID0008', '1006202101', 'D00001', 'AID002', 'FACTORED', 'T0002', 'CU00008', 1800, NULL, 1800, 1093, 143, '2021-06-10', '15:00:00', 'Hickory', 'NC', '28601', '16:00:00', '2021-08-10', 'Andover', 'MA', '01810'),
    ('LID0009', '18928', 'D00003', 'AID003', 'FACTORED', 'T0003', 'CU00009', 1100, NULL, 1100, 691, 28, '2021-07-10', '12:00:00', 'Plainfield', 'IN', '46168', '08:00:00', '2021-08-10', 'Atlanta', 'GA', '30349');
    CREATE TABLE Dispatch (
    agent_id VARCHAR(50) PRIMARY KEY,
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    phone VARCHAR(20),
    Truck_Load_id VARCHAR(50),
    FOREIGN KEY (Truck_Load_id) REFERENCES Truck_Load(Truck_Load_id)
);
INSERT INTO Dispatch (agent_id, f_name, l_name, phone, Truck_Load_id)
VALUES
    ('AID001', 'Donald', 'Ducking', '(630) 735-0222', 'LID0001'),
    ('AID002', 'Driver', 'Done', '(615) 265-9326', 'LID0002'),
    ('AID003', 'Abdul', 'Rahman', '(214) 426-4710', 'LID0003'),
    ('AID004', 'John', 'Doe', '(817) 701-3006', 'LID0004'),
    ('AID005', 'Joe', 'Dittmer', '(318) 350-7516', 'LID0005'),
    ('AID006', 'James', 'Smith', '(214) 426-4710', 'LID0006'),
    ('AID007', 'Daniel', 'Rodriguez', '(818) 801-3012', 'LID0007'),
    ('AID008', 'Laura', 'Jackson', '(218) 330-7429', 'LID0008'),
    ('AID009', 'Kevin', 'Roberts', '(220) 220-6423', 'LID0009');
CREATE TABLE Expense (
    expense_id VARCHAR(10) PRIMARY KEY,
    truck_id VARCHAR(10),
    driver_id VARCHAR(10),
    Truck_Load_id VARCHAR(50),
    type VARCHAR(50),
    FOREIGN KEY (truck_id) REFERENCES Truck(truck_id),
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id),
    FOREIGN KEY (Truck_Load_id) REFERENCES Truck_Load(Truck_Load_id)
);
INSERT INTO Expense (expense_id, truck_id, driver_id, Truck_Load_id, type)
VALUES
    ('Ex0001', 'T0001', 'D00001', 'LID0001', 'Maintenance'),
    ('Ex0002', 'T0002', 'D00002', 'LID0002', 'Equipment Repair'),
    ('Ex0003', 'T0003', 'D00003', 'LID0003', 'Hotel Stay'),
    ('Ex0004', 'T0004', 'D00004', 'LID0004', 'Patrol'),
    ('Ex0005', 'T0005', 'D00005', 'LID0005', 'Equipment Repair');
    
    -- Retrieving all trucks
SELECT * FROM Truck;
SELECT * FROM Truck WHERE license_plate = 'RCN-2941';
SELECT * FROM Truck WHERE fuel_tank_capacity > 200;
   -- Retrieving Information From Driver
SELECT * FROM Driver;
SELECT * FROM Driver WHERE hiring_date > '2022-01-01';
SELECT * FROM Driver WHERE email = 'djupedal@msn.com';
SELECT * FROM Driver WHERE license_type = 'Class-A';
   -- Retrieving Information From Loads
SELECT * FROM Loads;
SELECT * FROM Truck_Load WHERE payment_status = 'FACTORED';
SELECT * FROM Truck_Load WHERE linehaul_rate > 1000;
SELECT * FROM Truck_Load WHERE payment_date BETWEEN '2022-01-01' AND '2023-01-01';
    -- Retrieving Information From Customers
SELECT * FROM Customer;
SELECT * FROM Customer WHERE credit_score > 95;
SELECT * FROM Customer WHERE email = 'Meredith_Moody@Exxact.com';
SELECT * FROM Customer WHERE payment_terms > 10;
    -- Retrieving all Dispatch
SELECT * FROM Dispatch;
SELECT * FROM Dispatch WHERE Truck_Load_id = 'LID0002';
SELECT * FROM Dispatch WHERE agent_id = 'AID001';
   -- Retrieving Information From Expense
SELECT * FROM Expense;
SELECT * FROM Expense WHERE truck_id = 'T0001';
SELECT * FROM Expense WHERE driver_id = 'D00001';
-- Updating the weight capacity for a specific truck
UPDATE Truck SET weight_capacity = 22000 WHERE truck_id = 'T0006';
-- Updating the hiring date for a specific driver
UPDATE Driver SET hiring_date = '2023-02-15' WHERE driver_id = 'D00005';
-- Updating the linehaul rate for a specific load
UPDATE Truck_Load SET linehaul_rate = 1300 WHERE Truck_Load_id = 'LID0009';
-- Updating the credit score for a specific customer
UPDATE Customer SET credit_score = 92 WHERE customer_id = 'CU00003';
-- Updating the phone number for a specific agent
UPDATE Dispatch SET phone = '(555) 123-4567' WHERE agent_id = 'AID005';
-- Updating the expense type for a specific expense
UPDATE Expense SET type = 'Repair' WHERE expense_id = 'Ex0011';
-- Deleting a specific truck
DELETE FROM Truck WHERE truck_id = 'T0004';
-- Deleting a specific driver
DELETE FROM Driver WHERE driver_id = 'D00004';
-- Deleting a specific load
DELETE FROM Truck_Load WHERE Truck_Load_id = 'LID0001';
-- Deleting a specific customer
DELETE FROM Customer WHERE customer_id = 'CU0021';
-- Deleting a specific dispatch
DELETE FROM Dispatch WHERE agent_id = 'AID011';
-- Deleting a specific expense
DELETE FROM Expense WHERE expense_id = 'Ex0011';
-- Grouping by payment_status and counting the number of loads in each status
SELECT payment_status, COUNT(*) AS load_count
FROM Truck_Load
GROUP BY payment_status;
-- Grouping by equipment_type and calculating average weight_capacity
SELECT equipment_type, AVG(weight_capacity) AS avg_weight_capacity
FROM Truck
GROUP BY equipment_type;
-- Truncate the Truck table
TRUNCATE TABLE Trucks;