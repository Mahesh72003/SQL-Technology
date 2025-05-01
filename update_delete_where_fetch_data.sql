select * from airlines_info;

-- update function
update airlines_info set fleet_size = 400 where airline_id = 1;
update airlines_info set alliance = 'single' where country = 'India' AND fleet_size = 100;
update airlines_info set alliance = 'single' where country = 'UAE' OR country = 'Qatar';
update airlines_info set fleet_size = 220 where airline_title IN ('Vistara', 'Go First', 'SpiceJet');
update airlines_info set headquarters = 'INDIA' where airline_title NOT IN ('IndiGo', 'Air India', 'SpiceJet');
update airlines_info set founded_year = '2010'  AND fleet_size BETWEEN 100 AND 140;
update airlines_info set alliance = 'Alliance' where country = 'France' OR country = 'Germany';  
update airlines_info set alliance = 'Alliance' where founded_year NOT BETWEEN '1900' AND '1950';

--  FETCH THE DATA USING where CLAUSE.
select * from airlines_info;

select * from airlines_info where airline_id = 3;
select * from airlines_info where airline_title = 'Emirates';
select * from airlines_info where iata_code = 'AI';
select * from airlines_info where country = 'India';
select * from airlines_info where founded_year = '1933';

--  FETCH THE DATA USING AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN.
select * from airlines_info;

select * from airlines_info where country = 'USA' AND alliance = 'Oneworld';
select * from airlines_info where country = 'India' OR fleet_size = 700;
select * from airlines_info where alliance IN ('Star Alliance', 'SkyTeam');
select * from airlines_info where airline_title NOT IN ('IndiGo', 'SpiceJet');
select * from airlines_info where fleet_size BETWEEN 200 AND 300;
select * from airlines_info where founded_year NOT BETWEEN '1930' AND '2000';

-- DELETE THE DATA USING where, AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN
select * from airlines_info;

delete  from airlines_info where airline_id = 20;
delete  from airlines_info where country = 'India' AND fleet_size = 60;
delete  from airlines_info where country = 'USA' OR alliance = 'SkyTeam';
delete  from airlines_info where airline_id IN (11, 12, 13);
delete  from airlines_info where airline_id NOT IN (1, 2, 3, 4, 5);
delete  from airlines_info where airline_id BETWEEN 14 AND 16;
delete  from airlines_info where airline_id NOT BETWEEN 1 AND 5;

select * from airlines_info;