create schema cars;
use cars;


-- Read Data--
Select*from car_dekho;


-- Total cars: to get the Count of total records--
select count(*) from car_dekho;


-- the manager asked the employee how many cars will be available in 2023?--
select count(*) from car_dekho where year=2023;


-- the manager asks the employee how many cars will be available in 2020 2021 and 2022?--
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
-- or --
Select count(*) from car_dekho where year in (2020,2021,2022) group by year;


-- client asked me to print the total of all the cars by year, i don't want to see all the details--
select year , count(*) from car_dekho group by Year;


-- client asked the car dealer agent how many diesel car were there in 2016--
select count(*) from car_dekho where year=2016 and fuel = "diesel"; #421


-- client asked the car dealer agent how many Petrol car were there in 2014--
select count(*) from car_dekho where year=2014 and fuel = "Petrol"; #202


-- the manager ask the employee to give a print of all the fuel cars, come by all year--
SELECT year, fuel, COUNT(*) FROM car_dekho GROUP BY year,fuel;
-- or--
Select year, count(*) from car_dekho where fuel = "Diesel" group by Year;
Select year, count(*) from car_dekho where fuel = "petrol" group by Year;
Select year, count(*) from car_dekho where fuel = "CNG" group by Year;


-- Manager said there were more then 100 cars in a given year which year had more then 10 cars?--
select year, count(*) from car_dekho group by year having count(*)>100;


-- manager asked the employess all the cars count details between the year 2016 to 2023--
select year, count(*) from car_dekho where year between 2016 and 2023 group by year;


-- manager asked the employess all the car details between the year 2016 to 2023--
select * from car_dekho where year between 2016 and 2023;





