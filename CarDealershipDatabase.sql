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
Values(5, "Cheap Cars","253rd Street", "947-894-2129");    

-- Adding vehicles into  Dealership 1 in the Vehicles Table
INSERT INTO Vehicles
VALUES("WBAAG0103D8602832", "BMW", "M3", "2023", "75295.00", 0);

INSERT INTO Vehicles
VALUES("5UXZV4C52D0B06237", "BMW", "M3", "2024", "80000.00", 0);

INSERT INTO Vehicles
VALUES("WBACG7320WAS99603", "BMW", "M4", "2024", "77995.00", 1);

-- Adding vehicles into Dealership 2 in the Vehicles Table
INSERT INTO Vehicles
VALUES("1GDK7H1M1WJ511624", "GMC", "Yukon", "2016", "20000.00", 1);

INSERT INTO Vehicles
VALUES("1GKGG25R721175098", "GMC", "YukonXL", "2015", "22000.00", 0);

INSERT INTO Vehicles
VALUES("3GTP2TEAXBG401355", "GMC", "Acadia", "2017", "25000.00", 0);

-- Adding vehicles into Dealership 3 in the Vehicles Table
INSERT INTO Vehicles
VALUES("5YJRE11B081000394", "Tesla", "Model Y", "2022", "65000.00", 1);

INSERT INTO Vehicles
VALUES("5YJSA2DP8DFP22249", "Tesla", "Model Y", "2023", "75000.00", 1);

INSERT INTO Vehicles
VALUES("5YJSA1E22FF106191", "Tesla", "Model X", "2023", "75000.00", 0);

-- Adding vehicles into Dealership 4 in the Vehicles Table
INSERT INTO Vehicles
VALUES("1N6FD01S1EC325161", "Nissan", "Altima", "2020", "20000.00", 2);

INSERT INTO Vehicles
VALUES("JN8AR07S8XW388740", "Nissan", "Versa", "2018", "18000.00", 1);

INSERT INTO Vehicles
VALUES("19XFB2F80FE117901", "Honda", "Civic", "2018", "19000.00", 0);

-- Adding vehicles into Dealership 5 in the Vehicles Table
INSERT INTO Vehicles
VALUES("5XYKTDA66CG274778", "Kia", "Sorento", "2012", "7990.00", 0);

INSERT INTO Vehicles
VALUES("1N4AL2AP5CN456091", "Nissan", "Altima", "2012", "6990.00", 0);

INSERT INTO Vehicles
VALUES("2HKYF18145H552339", "Honda", "Pilot", "2005", "5995.00", 0);

-- Adding information into the Inventory Table

INSERT INTO Inventory
VALUES(1, "WBAAG0103D8602832")

INSERT INTO Inventory
VALUES(1, "5UXZV4C52D0B06237")

INSERT INTO Inventory
VALUES(1, "WBACG7320WAS99603")

INSERT INTO Inventory
VALUES(2, "1GDK7H1M1WJ511624")

INSERT INTO Inventory
VALUES(2, "3GTP2TEAXBG401355")

INSERT INTO Inventory
VALUES(2, "1GKGG25R721175098")

INSERT INTO Inventory
VALUES(3, "5YJRE11B081000394")

INSERT INTO Inventory
VALUES(3, "5YJSA2DP8DFP22249")

INSERT INTO Inventory
VALUES(3, "5YJSA1E22FF106191")

INSERT INTO Inventory
VALUES(4, "1N6FD01S1EC325161")

INSERT INTO Inventory
VALUES(4, "JN8AR07S8XW388740")

INSERT INTO Inventory
VALUES(4, "19XFB2F80FE117901")

INSERT INTO Inventory
VALUES(5, "5XYKTDA66CG274778")

INSERT INTO Inventory
VALUES(5, "1N4AL2AP5CN456091")

INSERT INTO Inventory
VALUES(5, "2HKYF18145H552339")
