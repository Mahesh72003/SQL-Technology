CREATE DATABASE Assignment3;
USE Assignment3;
-- Table 1
CREATE TABLE Books (BookID INT, Title VARCHAR(100), Author VARCHAR(100), Genre VARCHAR(50), PublishedYear INT, Price DECIMAL(6,2), Stock INT, Publisher VARCHAR(100));

INSERT INTO Books VALUES
(1, 'Shadows of Dawn', 'Liam Grey', 'Fantasy', 2015, 19.99, 30, 'Aurora Press'),
(2, 'Echoes of the Past', 'Nora Lane', 'Historical', 2012, 15.50, 38, 'BlueSky Publishers'),
(3, 'Digital Veins', 'Iris Clarke', 'Sci-Fi', 2020, 22.00, 77, 'Neon Reads'),
(4, 'Beneath the Surface', 'Omar Reid', 'Thriller', 2017, 13.75, 90, 'Twilight Books'),
(5, 'Whispers in Ink', 'Sasha Gale', 'Mystery', 2018, 16.25, 79, 'Mystic House'),
(6, 'Rust and Stardust', 'Dev Patel', 'Sci-Fi', 2019, 21.00, 60, 'Orbit Words'),
(7, 'Frosted Windows', 'Clara Stone', 'Romance', 2016, 12.95, 50, 'Pink Petal'),
(8, 'Windswept Tales', 'Harvey Brooks', 'Adventure', 2011, 18.00, 44, 'Iron Pages'),
(9, 'Crimson Rivers', 'Dana Watts', 'Thriller', 2021, 25.00, 33, 'Black Hawk Press'),
(10, 'Skylight Theory', 'Eli Novak', 'Drama', 2022, 17.99, 55, 'Golden Print'),
(11, 'Mirrored Dreams', 'Lana Crisp', 'Fantasy', 2014, 19.49, 66, 'Aurora Press'),
(12, 'Static Minds', 'Joe King', 'Sci-Fi', 2020, 20.00, 65, 'Neon Reads'),
(13, 'Twilight Contract', 'Ina Bright', 'Mystery', 2013, 14.25, 34, 'Mystic House'),
(14, 'Broken Axis', 'Kian Moss', 'Drama', 2019, 16.95, 29, 'Golden Print'),
(15, 'Burning Lexicon', 'Elisa Quill', 'Fantasy', 2015, 22.49, 88, 'Aurora Press'),
(16, 'Whirlwind Code', 'Max Dane', 'Tech', 2022, 27.99, 120, 'Neon Reads'),
(17, 'Unspoken', 'Mila Ray', 'Romance', 2021, 15.75, 100, 'Pink Petal'),
(18, 'Fables of Stone', 'Loren Pike', 'Mythology', 2010, 23.00, 62, 'Iron Pages'),
(19, 'Obsidian Law', 'Trey Park', 'Legal Thriller', 2018, 18.85, 31, 'Black Hawk Press'),
(20, 'Azure Protocol', 'Nico West', 'Tech', 2023, 29.99, 50, 'Neon Reads');

UPDATE Books SET Stock = 99 WHERE BookID = 1;
UPDATE Books SET Price = 17.99 WHERE Genre = 'Mystery' AND Stock = 2;
UPDATE Books SET PublishedYear = 2024 WHERE Author = 'Sasha Gale' OR Genre = 'Fantasy';
UPDATE Books SET Publisher = 'Elite Books' WHERE Genre IN ('Sci-Fi', 'Fantasy');
UPDATE Books SET Stock = 3 WHERE Author NOT IN ('Liam Grey', 'Dev Patel');
UPDATE Books SET Price = 709 WHERE PublishedYear BETWEEN 2015 AND 2020;
UPDATE Books SET Stock =  22 WHERE Price NOT BETWEEN 15 AND 25;

SELECT * FROM Books WHERE Genre = 'Fantasy' AND Price = 20;
SELECT * FROM Books WHERE Genre = 'Sci-Fi' OR Genre = 'Mystery';
SELECT * FROM Books WHERE Publisher IN ('Neon Reads', 'Aurora Press');
SELECT * FROM Books WHERE Author NOT IN ('Liam Grey', 'Nora Lane');
SELECT * FROM Books WHERE PublishedYear BETWEEN 2015 AND 2022;
SELECT * FROM Books WHERE Price NOT BETWEEN 15 AND 25;
SELECT * FROM Books;
DELETE FROM Books WHERE BookID = 20;
DELETE FROM Books WHERE Genre = 'Romance' AND Stock = 5;
DELETE FROM Books WHERE PublishedYear = 2010 OR PublishedYear = 2011;
DELETE FROM Books WHERE Genre IN ('Tech', 'Drama');
DELETE FROM Books WHERE Publisher NOT IN ('Elite Books');
DELETE FROM Books WHERE Price BETWEEN 15.00 AND 18.00;
DELETE FROM Books WHERE PublishedYear NOT BETWEEN 2015 AND 2019;

SELECT * FROM Books;


-- Table 2

CREATE TABLE Gadgets ( GadgetID INT,  Name VARCHAR(50),  Brand VARCHAR(50),  Category VARCHAR(30),   Price INT,   Stock INT,   ReleaseYear INT,   WarrantyYears INT);

INSERT INTO Gadgets VALUES
(1, 'PulseX 1000', 'TechNova', 'Smartwatch', 149, 25, 2023, 2),
(2, 'AirBuzz Pro', 'SonicWave', 'Earbuds', 89, 50, 2022, 1),
(3, 'VisionTab 8', 'ClearSight', 'Tablet', 259, 18, 2023, 2),
(4, 'HyperCam Mini', 'Snapcore', 'Camera', 319, 10, 2021, 1),
(5, 'NeoDrive X2', 'CyberTrack', 'Storage', 99, 35, 2023, 3),
(6, 'GigaCharge S', 'VoltEdge', 'Charger', 39, 100, 2024, 1),
(7, 'LaserKey Ultra', 'Digitronix', 'Keyboard', 59, 60, 2023, 2),
(8, 'ZoomPod Z', 'WaveTune', 'Speaker', 79, 45, 2022, 1),
(9, 'SmartLens V', 'Lensology', 'Camera Lens', 199, 22, 2023, 2),
(10, 'EchoLite 4G', 'SonicWave', 'Smartphone', 399, 15, 2024, 2),
(11, 'GlideMouse Pro', 'Digitronix', 'Mouse', 45, 70, 2021, 1),
(12, 'CorePad 10', 'ClearSight', 'Tablet', 299, 30, 2023, 2),
(13, 'MagCharge X', 'VoltEdge', 'Charger', 49, 90, 2022, 1),
(14, 'StealthCam 5', 'Snapcore', 'Camera', 429, 8, 2024, 2),
(15, 'StreamMic V3', 'AudioTech', 'Microphone', 129, 27, 2022, 2),
(16, 'UltraCast Pro', 'WaveTune', 'Streaming Device', 189, 33, 2024, 2),
(17, 'NanoDrive 1TB', 'CyberTrack', 'Storage', 119, 40, 2023, 3),
(18, 'AirBuzz Lite', 'SonicWave', 'Earbuds', 59, 80, 2021, 1),
(19, 'GlowPad Touch', 'Digitronix', 'Keyboard', 69, 65, 2024, 2),
(20, 'VisionTab 10', 'ClearSight', 'Tablet', 349, 20, 2024, 3);

UPDATE Gadgets SET Price = 139 WHERE GadgetID = 1;
UPDATE Gadgets SET Stock = 40 WHERE GadgetID = 3;
UPDATE Gadgets SET Brand = 'PhotoCore' WHERE GadgetID = 4;
UPDATE Gadgets SET ReleaseYear = 2022 WHERE GadgetID = 5;
UPDATE Gadgets SET WarrantyYears = 2 WHERE GadgetID = 6;
UPDATE Gadgets SET Price = 49 WHERE GadgetID = 7;
UPDATE Gadgets SET Stock = 55 WHERE GadgetID = 8;
UPDATE Gadgets SET Brand = 'ViewMax' WHERE GadgetID = 9;
UPDATE Gadgets SET WarrantyYears = 3 WHERE GadgetID = 10;
UPDATE Gadgets SET Price = 109 WHERE GadgetID = 11;

SELECT * FROM Gadgets WHERE Category = 'Tablet';
SELECT * FROM Gadgets WHERE Brand = 'ClearSight' AND Price = 250;
SELECT * FROM Gadgets WHERE WarrantyYears = 3 OR Stock = 20;
SELECT * FROM Gadgets WHERE GadgetID IN (1, 3, 5, 7);
SELECT * FROM Gadgets WHERE Category NOT IN ('Tablet', 'Camera');
SELECT * FROM Gadgets WHERE Price BETWEEN 100 AND 300;
SELECT * FROM Gadgets WHERE ReleaseYear NOT BETWEEN 2023 AND 2024;


UPDATE Gadgets SET Stock = Stock + 10 WHERE Category = 'Tablet' AND Price > 250;
UPDATE Gadgets SET WarrantyYears = 1 WHERE Stock =20 OR Price = 100;
UPDATE Gadgets SET Price = Price - 20 WHERE GadgetID IN (1, 5, 9);
UPDATE Gadgets SET WarrantyYears = 2 WHERE Category NOT IN ('Storage', 'Keyboard');
UPDATE Gadgets SET Price = Price + 30 WHERE Price BETWEEN 100 AND 200;
UPDATE Gadgets SET Stock = Stock - 5 WHERE ReleaseYear NOT BETWEEN 2022 AND 2023;


DELETE FROM Gadgets WHERE GadgetID = 2;
DELETE FROM Gadgets WHERE Category = 'Charger' AND WarrantyYears = 1;
DELETE FROM Gadgets WHERE Price < 50 OR Stock > 90;
DELETE FROM Gadgets WHERE GadgetID IN (14, 15);
DELETE FROM Gadgets WHERE Brand NOT IN ('TechNova', 'SonicWave', 'ClearSight');
DELETE FROM Gadgets WHERE Price BETWEEN 100 AND 150;
DELETE FROM Gadgets WHERE ReleaseYear NOT BETWEEN 2022 AND 2024;


-- table 3

CREATE TABLE travel_bookings (booking_id INT, customer_name VARCHAR(100),  destination VARCHAR(100), departure_date VARCHAR(50),  return_date VARCHAR(50),   price INT,   status VARCHAR(20),   booking_channel VARCHAR(50));

INSERT INTO travel_bookings VALUES
(1, 'Alice Ray', 'Paris', '2025-06-01', '2025-06-10', 1200, 'confirmed', 'website'),
(2, 'Ben Troy', 'Rome', '2025-06-05', '2025-06-15', 950, 'pending', 'app'),
(3, 'Clara Dean', 'Tokyo', '2025-07-01', '2025-07-14', 2200, 'confirmed', 'agent'),
(4, 'Daniel Stone', 'London', '2025-05-10', '2025-05-20', 800, 'cancelled', 'website'),
(5, 'Eva Monroe', 'Berlin', '2025-06-12', '2025-06-22', 1100, 'confirmed', 'website'),
(6, 'Frank Li', 'Dubai', '2025-08-03', '2025-08-12', 1400, 'pending', 'app'),
(7, 'Grace Kim', 'New York', '2025-06-20', '2025-06-30', 1600, 'confirmed', 'agent'),
(8, 'Henry Shaw', 'Madrid', '2025-07-10', '2025-07-18', 980, 'confirmed', 'website'),
(9, 'Ivy Park', 'Bangkok', '2025-06-15', '2025-06-25', 1150, 'cancelled', 'app'),
(10, 'Jack Liu', 'Athens', '2025-07-22', '2025-08-01', 1050, 'pending', 'agent'),
(11, 'Karen York', 'Vienna', '2025-06-01', '2025-06-10', 990, 'confirmed', 'website'),
(12, 'Liam Hunt', 'Prague', '2025-06-03', '2025-06-12', 980, 'confirmed', 'app'),
(13, 'Mia Fox', 'Lisbon', '2025-06-10', '2025-06-19', 1020, 'pending', 'website'),
(14, 'Noah Ray', 'Helsinki', '2025-06-14', '2025-06-24', 1155, 'confirmed', 'app'),
(15, 'Olivia Lin', 'Zurich', '2025-07-05', '2025-07-15', 1240, 'cancelled', 'website'),
(16, 'Paul Kent', 'Copenhagen', '2025-07-12', '2025-07-22', 1300, 'confirmed', 'agent'),
(17, 'Quinn Lee', 'Seoul', '2025-08-01', '2025-08-10', 2100, 'pending', 'app'),
(18, 'Ryan Gold', 'Amsterdam', '2025-06-18', '2025-06-28', 1500, 'confirmed', 'website'),
(19, 'Sophie West', 'Istanbul', '2025-07-01', '2025-07-10', 1250, 'cancelled', 'agent'),
(20, 'Tom Dale', 'Oslo', '2025-06-25', '2025-07-05', 980, 'confirmed', 'app');


UPDATE travel_bookings SET status = 'confirmed' WHERE booking_id = 2;
UPDATE travel_bookings SET price = 1000 WHERE booking_id = 4;
UPDATE travel_bookings SET booking_channel = 'website' WHERE booking_id = 6;
UPDATE travel_bookings SET destination = 'Brussels' WHERE booking_id = 9;
UPDATE travel_bookings SET return_date = '2025-06-11' WHERE booking_id = 11;
UPDATE travel_bookings SET departure_date = '2025-06-05' WHERE booking_id = 13;
UPDATE travel_bookings SET customer_name = 'Nina Ray' WHERE booking_id = 14;
UPDATE travel_bookings SET price = 1250 WHERE booking_id = 16;
UPDATE travel_bookings SET status = 'cancelled' WHERE booking_id = 17;
UPDATE travel_bookings SET booking_channel = 'app' WHERE booking_id = 19;

SELECT * FROM travel_bookings WHERE destination = 'Paris';
SELECT * FROM travel_bookings WHERE status = 'confirmed' AND booking_channel = 'website';
SELECT * FROM travel_bookings WHERE status = 'cancelled' OR status = 'pending';
SELECT * FROM travel_bookings WHERE destination IN ('Paris', 'Tokyo', 'Rome');
SELECT * FROM travel_bookings WHERE destination NOT IN ('London', 'Berlin');
SELECT * FROM travel_bookings WHERE price BETWEEN 1000 AND 1500;
SELECT * FROM travel_bookings WHERE price NOT BETWEEN 1000 AND 1500;

UPDATE travel_bookings SET status = 'cancelled' WHERE status = 'pending' AND booking_channel = 'app';
UPDATE travel_bookings SET booking_channel = 'website' WHERE status = 'cancelled' OR status = 'pending';
UPDATE travel_bookings SET price = price + 100 WHERE destination IN ('Rome', 'Madrid');
UPDATE travel_bookings SET status = 'confirmed' WHERE destination NOT IN ('Bangkok', 'Istanbul');
UPDATE travel_bookings SET price = price - 50 WHERE price BETWEEN 1000 AND 1300;
UPDATE travel_bookings SET price = price + 75 WHERE price NOT BETWEEN 1000 AND 1300;

DELETE FROM travel_bookings WHERE destination = 'Oslo';
DELETE FROM travel_bookings WHERE status = 'cancelled' AND booking_channel = 'agent';
DELETE FROM travel_bookings WHERE status = 'pending' OR destination = 'Athens';
DELETE FROM travel_bookings WHERE destination IN ('Vienna', 'Prague');
DELETE FROM travel_bookings WHERE destination NOT IN ('Paris', 'Tokyo', 'London');
DELETE FROM travel_bookings WHERE price BETWEEN 1200 AND 1400;
DELETE FROM travel_bookings WHERE price NOT BETWEEN 900 AND 2000;
