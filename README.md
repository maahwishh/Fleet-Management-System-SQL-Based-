# Fleet Management System (SQL-Based) 🚚<br>
Designed a relational database schema for a Truck Logistics &amp; Inventory Management System using MySQL. A SQL-based Fleet Management System designed to efficiently track and manage vehicles, drivers, routes, and maintenance schedules using relational databases.

### 🚀 Project Overview<br>

This system enables businesses to:<br>
📊 Manage vehicle data (type, model, capacity, status).<br>
🛣️ Track routes and schedules for optimized logistics.<br>
👷 Monitor driver assignments and availability.<br>
⚙️ Log maintenance & repairs for fleet efficiency<br>
📈 Generate reports using SQL queries for insights.<br>

### Entity Relationship Diagram for the system:<br>
![image](https://github.com/user-attachments/assets/172d5013-1694-4eda-bffa-eaf2e0cfd224)

### 🏗 Database Schema & Tables<br>
![image](https://github.com/user-attachments/assets/d3f8d6b9-e0b0-43bf-b1d1-83f54dbaecd3)

This system consists of multiple relational tables:

**1️⃣ Vehicles Table**<br>

Stores vehicle details, including capacity and status.<br>
CREATE TABLE Vehicles (<br>
    vehicle_id INT PRIMARY KEY,<br>
    model VARCHAR(50),<br>
    capacity INT,<br>
    status ENUM('Active', 'In Maintenance', 'Retired')<br>
);<br>

**2️⃣ Drivers Table**<br>

Manages driver records and assignments.<br>
CREATE TABLE Drivers (<br>
    driver_id INT PRIMARY KEY,<br>
    name VARCHAR(50),<br>
    license_number VARCHAR(20) UNIQUE,<br>
    experience_years INT<br>
);<br>

**3️⃣ Routes Table**<br>

Stores predefined routes and distances.<br>
CREATE TABLE Routes (<br>
    route_id INT PRIMARY KEY,<br>
    start_location VARCHAR(100),<br>
    end_location VARCHAR(100),<br>
    distance_km DECIMAL(5,2)<br>
);<br>

**4️⃣ Assignments Table**<br>

Links vehicles, drivers, and routes.<br>
CREATE TABLE Assignments (<br>
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,<br>
    vehicle_id INT,<br>
    driver_id INT,<br>
    route_id INT,<br>
    assignment_date DATE,<br>
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id),<br>
    FOREIGN KEY (driver_id) REFERENCES Drivers(driver_id),<br>
    FOREIGN KEY (route_id) REFERENCES Routes(route_id)<br>
);<br>

**5️⃣ Maintenance Records**<br>

Logs vehicle repairs and servicing.<br>
CREATE TABLE Maintenance (<br>
    maintenance_id INT PRIMARY KEY AUTO_INCREMENT,<br>
    vehicle_id INT,<br>
    service_date DATE,<br>
    cost DECIMAL(10,2),<br>
    description TEXT,<br>
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)<br>
);<br>

### 🔍 Key Features & Queries<br>

**📌 Add a New Vehicle**<br>

INSERT INTO Vehicles (vehicle_id, model, capacity, status) <br>
VALUES (101, 'Ford Transit', 3500, 'Active');<br>

**📌 Assign a Driver to a Vehicle on a Route**<br>

INSERT INTO Assignments (vehicle_id, driver_id, route_id, assignment_date)<br>
VALUES (101, 5, 12, '2024-02-07');<br>

**📌 Retrieve All Active Vehicles**

SELECT * FROM Vehicles WHERE status = 'Active';<br>

**📌 Calculate Total Maintenance Cost per Vehicle**<br>

SELECT vehicle_id, SUM(cost) AS total_maintenance_cost<br>
FROM Maintenance<br>
GROUP BY vehicle_id;<br>

**📌 Find Drivers with More than 5 Years of Experience**<br>

SELECT * FROM Drivers WHERE experience_years > 5;<br>
<br>
### 🔧 Setup Instructions<br>
#### 1️⃣ Clone the Repository<br>

git clone https://github.com/maahwishh/Fleet-Management-System-SQL-Based-<br>
cd Fleet-Management-System-SQL<br>

#### 2️⃣ Import Database<br>

Open MySQL/PostgreSQL/MSSQL.<br>
Run the Fleet Management System.sql file to create tables.<br>

#### 3️⃣ Run Queries<br>
Execute queries to add vehicles, assign drivers, and manage maintenance.<br>

**📌 Future Enhancements**<br>

🔹 Add GPS tracking integration for real-time vehicle monitoring.<br>
🔹 Implement a front-end dashboard using Python (Flask/Django) or React.<br>
🔹 Automate maintenance alerts based on mileage & service history.<br>

### 🤝 Contributing<br>
Feel free to fork, improve, and submit PRs! Issues and feature requests are welcome. 🚀<br>

### 📜 License<br>
This project is MIT Licensed – free to use and modify.<br>


