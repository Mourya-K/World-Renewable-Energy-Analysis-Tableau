Select Distinct(Entity)
FROM [12 solar-energy-consumption]
order by 1

Select * 
FROM [12 solar-energy-consumption]
------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by countries

Select Distinct(Entity)
FROM [12 solar-energy-consumption]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World' 
order by 1

Select *
FROM [12 solar-energy-consumption]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by purely the continents

Select Distinct(Entity)
FROM [12 solar-energy-consumption]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')

Select *
FROM [12 solar-energy-consumption]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')



------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by income

SELECT Distinct(Entity)
FROM [12 solar-energy-consumption]
WHERE Entity LIKE '%income%'

SELECT *
FROM [12 solar-energy-consumption]
WHERE Entity LIKE '%income%'

------------------------------------------------------------------------------------------------------------------------------------------
-- India

Select * 
FROM [12 solar-energy-consumption]
where Entity = 'India'

------------------------------------------------------------------------------------------------------------------------------------------
-- Comparing the two most recent decades
SELECT 
    Entity,
    SUM(CASE WHEN Year BETWEEN 2000 AND 2009 THEN Electricity_from_solar_TWh ELSE 0 END) AS Solar_2000_2009,
    SUM(CASE WHEN Year BETWEEN 2010 AND 2019 THEN Electricity_from_solar_TWh ELSE 0 END) AS Solar_2010_2019
FROM 
    [12 solar-energy-consumption]
GROUP BY 
    Entity
ORDER BY
    Entity;
