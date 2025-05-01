CREATE DATABASE Assignment2;
USE Assignment2;

CREATE TABLE airlines_info ( airline_id INT,  airline_name VARCHAR(100),  iata_code VARCHAR(10),   country VARCHAR(50),  founded_year INT);
ALTER TABLE airlines_info ADD headquarters VARCHAR(100), ADD fleet_size INT,ADD alliance VARCHAR(50);
ALTER TABLE airlines_info RENAME COLUMN airline_name TO airline_title;
ALTER TABLE airlines_info MODIFY founded_year VARCHAR(10);
INSERT INTO airlines_info VALUES
(1, 'IndiGo', '6E', 'India', '2006', 'Gurgaon', 320, 'None'),
(2, 'Air India', 'AI', 'India', '1932', 'New Delhi', 140, 'Star Alliance'),
(3, 'SpiceJet', 'SG', 'India', '2005', 'Gurgaon', 100, 'None'),
(4, 'Vistara', 'UK', 'India', '2015', 'Gurgaon', 60, 'None'),
(5, 'Go First', 'G8', 'India', '2005', 'Mumbai', 55, 'None'),
(6, 'AirAsia India', 'I5', 'India', '2014', 'Bangalore', 30, 'None'),
(7, 'Delta Air Lines', 'DL', 'USA', '1929', 'Atlanta', 800, 'SkyTeam'),
(8, 'American Airlines', 'AA', 'USA', '1930', 'Fort Worth', 950, 'Oneworld'),
(9, 'United Airlines', 'UA', 'USA', '1926', 'Chicago', 780, 'Star Alliance'),
(10, 'Lufthansa', 'LH', 'Germany', '1953', 'Frankfurt', 700, 'Star Alliance'),
(11, 'Emirates', 'EK', 'UAE', '1985', 'Dubai', 270, 'None'),
(12, 'Qatar Airways', 'QR', 'Qatar', '1993', 'Doha', 230, 'Oneworld'),
(13, 'Air France', 'AF', 'France', '1933', 'Paris', 300, 'SkyTeam'),
(14, 'British Airways', 'BA', 'UK', '1974', 'London', 280, 'Oneworld'),
(15, 'Singapore Airlines', 'SQ', 'Singapore', '1947', 'Singapore', 130, 'Star Alliance'),
(16, 'Turkish Airlines', 'TK', 'Turkey', '1933', 'Istanbul', 370, 'Star Alliance'),
(17, 'ANA', 'NH', 'Japan', '1952', 'Tokyo', 220, 'Star Alliance'),
(18, 'KLM', 'KL', 'Netherlands', '1919', 'Amsterdam', 160, 'SkyTeam'),
(19, 'Ryanair', 'FR', 'Ireland', '1984', 'Dublin', 450, 'None'),
(20, 'LATAM', 'LA', 'Chile', '1929', 'Santiago', 300, 'Oneworld');

CREATE TABLE country_info (  country_id INT,  country_name VARCHAR(100),  capital_city VARCHAR(100),  population BIGINT,  area_sqkm FLOAT);
ALTER TABLE country_info ADD currency VARCHAR(50), ADD language VARCHAR(50), ADD gdp FLOAT;
ALTER TABLE country_info RENAME COLUMN capital_city TO capital_name;
ALTER TABLE country_info MODIFY population INT;

INSERT INTO country_info VALUES
(1, 'India', 'New Delhi', 1380000000, 3287000, 'Rupee', 'Hindi/English', 3200000),
(2, 'United States', 'Washington D.C.', 331000000, 9834000, 'USD', 'English', 21400000),
(3, 'Canada', 'Ottawa', 38000000, 9985000, 'CAD', 'English/French', 1800000),
(4, 'Germany', 'Berlin', 83000000, 357000, 'Euro', 'German', 4000000),
(5, 'France', 'Paris', 67000000, 551000, 'Euro', 'French', 2800000),
(6, 'Japan', 'Tokyo', 126000000, 377975, 'Yen', 'Japanese', 5100000),
(7, 'United Kingdom', 'London', 67000000, 243000, 'Pound', 'English', 2700000),
(8, 'China', 'Beijing', 1400000000, 9597000, 'Yuan', 'Chinese', 14700000),
(9, 'Australia', 'Canberra', 25000000, 7692000, 'AUD', 'English', 1600000),
(10, 'Brazil', 'Brasília', 211000000, 8516000, 'BRL', 'Portuguese', 2200000),
(11, 'Russia', 'Moscow', 144000000, 17098200, 'Ruble', 'Russian', 1700000),
(12, 'South Africa', 'Pretoria', 60000000, 1221000, 'ZAR', 'English/Zulu', 370000),
(13, 'Mexico', 'Mexico City', 128000000, 1964000, 'MXN', 'Spanish', 1300000),
(14, 'Italy', 'Rome', 60000000, 301000, 'Euro', 'Italian', 2000000),
(15, 'South Korea', 'Seoul', 52000000, 100000, 'Won', 'Korean', 1800000),
(16, 'Turkey', 'Ankara', 82000000, 783562, 'Lira', 'Turkish', 850000),
(17, 'Spain', 'Madrid', 47000000, 505990, 'Euro', 'Spanish', 1400000),
(18, 'Indonesia', 'Jakarta', 270000000, 1905000, 'Rupiah', 'Indonesian', 1119000),
(19, 'Argentina', 'Buenos Aires', 45000000, 2780000, 'Peso', 'Spanish', 490000),
(20, 'Netherlands', 'Amsterdam', 17000000, 41500, 'Euro', 'Dutch', 1000000);



CREATE TABLE state_info (state_id INT,  state_name VARCHAR(100),  country_id INT,  population BIGINT,  capital_city VARCHAR(100));
ALTER TABLE state_info ADD area_sqkm FLOAT, ADD official_language VARCHAR(50),  ADD gdp FLOAT;
ALTER TABLE state_info RENAME COLUMN state_name TO region_name;
ALTER TABLE state_info MODIFY population INT;

INSERT INTO state_info VALUES
(1, 'Andhra Pradesh', 1, 54000000, 'Amaravati', 162968, 'Telugu', 380000),
(2, 'Assam', 1, 36000000, 'Dispur', 78438, 'Assamese', 250000),
(3, 'Bihar', 1, 128000000, 'Patna', 94163, 'Hindi', 340000),
(4, 'Chhattisgarh', 1, 32000000, 'Raipur', 135191, 'Hindi', 240000),
(5, 'Delhi', 1, 20000000, 'New Delhi', 1484, 'Hindi', 560000),
(6, 'Gujarat', 1, 72000000, 'Gandhinagar', 196024, 'Gujarati', 750000),
(7, 'Haryana', 1, 29000000, 'Chandigarh', 44212, 'Hindi', 320000),
(8, 'Jammu and Kashmir', 1, 13000000, 'Srinagar/Jammu', 222236, 'Urdu', 220000),
(9, 'Jharkhand', 1, 39000000, 'Ranchi', 79714, 'Hindi', 280000),
(10, 'Karnataka', 1, 74000000, 'Bengaluru', 191791, 'Kannada', 690000),
(11, 'Kerala', 1, 35000000, 'Thiruvananthapuram', 38863, 'Malayalam', 290000),
(12, 'Madhya Pradesh', 1, 86000000, 'Bhopal', 308350, 'Hindi', 420000),
(13, 'Maharashtra', 1, 123000000, 'Mumbai', 307713, 'Marathi', 950000),
(14, 'Odisha', 1, 47000000, 'Bhubaneswar', 155707, 'Odia', 300000),
(15, 'Punjab', 1, 30000000, 'Chandigarh', 50362, 'Punjabi', 370000),
(16, 'Rajasthan', 1, 79000000, 'Jaipur', 342239, 'Hindi', 410000),
(17, 'Tamil Nadu', 1, 81000000, 'Chennai', 130058, 'Tamil', 670000),
(18, 'Telangana', 1, 40000000, 'Hyderabad', 112077, 'Telugu', 460000),
(19, 'Uttar Pradesh', 1, 231000000, 'Lucknow', 243286, 'Hindi', 650000),
(20, 'West Bengal', 1, 100000000, 'Kolkata', 88752, 'Bengali', 520000);

