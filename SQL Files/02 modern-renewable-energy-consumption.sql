Select Distinct(Entity)
FROM [02 modern-renewable-energy-consumption]
order by 1

Select * 
from [02 modern-renewable-energy-consumption]
where Entity = 'United States'
------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by countries

Select Distinct(Entity)
FROM [02 modern-renewable-energy-consumption]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

Select *
FROM [02 modern-renewable-energy-consumption]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by purely the continents

Select Distinct(Entity)
FROM [02 modern-renewable-energy-consumption]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')

Select *
FROM [02 modern-renewable-energy-consumption]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')



------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by income

SELECT Distinct(Entity)
FROM [02 modern-renewable-energy-consumption]
WHERE Entity LIKE '%income%'

SELECT *
FROM [02 modern-renewable-energy-consumption]
WHERE Entity LIKE '%income%'

------------------------------------------------------------------------------------------------------------------------------------------

Select * 
FROM [02 modern-renewable-energy-consumption]
where Entity = 'India'


Select Entity, Year, Geo_Biomass_Other_TWh, Solar_Generation_TWh, Wind_Generation_TWh, Hydro_Generation_TWh
from [02 modern-renewable-energy-consumption]
where Entity = 'World'

-- Select SUM(Geo_Biomass_Other_TWh) as Total_Geo_Biomass_Other_TWh, SUM(Solar_Generation_TWh) as Total_Solar_Generation_TWh, SUM(Wind_Generation_TWh) as Total_Wind_Generation_TWh, SUM(Hydro_Generation_TWh) as Total_Hydro_Generation_TWh
-- from [02 modern-renewable-energy-consumption]
-- where Entity = 'World'


-- -- Create table
-- DROP TABLE IF EXISTS WorldEnergyDistribution
-- CREATE TABLE WorldEnergyDistribution (
--     Type VARCHAR(255),
--     Entity VARCHAR(255),
--     Value DECIMAL(18,3)
-- );

-- -- Insert values
-- INSERT INTO WorldEnergyDistribution (Type, Entity, Value) VALUES
-- ('Total_Geo_Biomass_Other', 'World',11878.23855),
-- ('Total_Solar_Generation_TWh', 'World',4790.377736754),
-- ('Total_Wind_Generation_TWh', 'World',13015.692112501),
-- ('Total_Hydro_Generation_TWh', 'World',138583.79981999996);


-- Select * 
-- from WorldEnergyDistribution

------------------------------------------------------------------------------------------------------------------------------------------
-- World Generation

SELECT 'Geo_Biomass_Other' AS EnergyType, Entity, Year, Geo_Biomass_Other_TWh AS Value_TWh
FROM [02 modern-renewable-energy-consumption]
WHERE Entity = 'World'

UNION ALL

SELECT 'Solar_Generation' AS EnergyType, Entity, Year, Solar_Generation_TWh AS Value_TWh
FROM [02 modern-renewable-energy-consumption]
WHERE Entity = 'World'

UNION ALL

SELECT 'Wind_Generation' AS EnergyType, Entity, Year, Wind_Generation_TWh AS Value_TWh
FROM [02 modern-renewable-energy-consumption]
WHERE Entity = 'World'

UNION ALL

SELECT 'Hydro_Generation' AS EnergyType, Entity, Year, Hydro_Generation_TWh AS Value_Twh
FROM [02 modern-renewable-energy-consumption]
WHERE Entity = 'World'
ORDER BY EnergyType, Year;


------------------------------------------------------------------------------------------------------------------------------------------
-- India Generation

SELECT 'Geo_Biomass_Other' AS EnergyType, Entity, Year, Geo_Biomass_Other_TWh AS Value_TWh
FROM [02 modern-renewable-energy-consumption]
WHERE Entity = 'India'

UNION ALL

SELECT 'Solar_Generation' AS EnergyType, Entity, Year, Solar_Generation_TWh AS Value_TWh
FROM [02 modern-renewable-energy-consumption]
WHERE Entity = 'India'

UNION ALL

SELECT 'Wind_Generation' AS EnergyType, Entity, Year, Wind_Generation_TWh AS Value_TWh
FROM [02 modern-renewable-energy-consumption]
WHERE Entity = 'India'

UNION ALL

SELECT 'Hydro_Generation' AS EnergyType, Entity, Year, Hydro_Generation_TWh AS Value_Twh
FROM [02 modern-renewable-energy-consumption]
WHERE Entity = 'India'
ORDER BY EnergyType, Year;
