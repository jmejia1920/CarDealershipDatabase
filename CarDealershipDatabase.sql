-- Creating Database
CREATE DATABASE CarDealership;

-- Creating Dealership Table
CREATE TABLE Dealerships (
    Dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(50),
    Phone VARCHAR(12));
    
-- Creating Vehicles Table
CREATE TABLE Vehicles (
    VIN VARCHAR(17) PRIMARY KEY,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Price DECIMAL(10, 2),
    Sold BOOLEAN);

-- Creating Inventory Table
CREATE TABLE Inventory (
    Dealership_id INT,
    VIN VARCHAR(17),
    FOREIGN KEY (Dealership_id) REFERENCES Dealerships(Dealership_id),
    FOREIGN KEY (VIN) REFERENCES Vehicles(VIN));
    
-- Adding information into the Dealership Table
INSERT INTO Dealerships
Values(1, "Good Cars","123 Street", "818-212-3343");

INSERT INTO Dealerships
Values(2, "Bad Cars","123 Boulevard", "212-222-3353");

INSERT INTO Dealerships
Values(3, "Fast Cars","125th Street", "612-835-7494");

INSERT INTO Dealerships
Values(4, "Reliable Cars","54th Street", "914-776-6055"); 

INSERT INTO Dealerships
Values(5, "Cheap Cars","253th Street", "947-894-2129");    

-- Adding Vehicles into  Dealership 1 in the Vehicles Table
INSERT INTO Vehicles
VALUES("WBAAG0103D8602832", "BMW", "M3", "2023", "75295.00", 0);

INSERT INTO Vehicles
VALUES("5UXZV4C52D0B06237", "BMW", "M3", "2024", "80000.00", 0);

INSERT INTO Vehicles
VALUES("WBACG7320WAS99603", "BMW", "M4", "2024", "77995.00", 1);


