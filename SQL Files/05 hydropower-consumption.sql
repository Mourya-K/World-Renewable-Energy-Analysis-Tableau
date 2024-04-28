Select Distinct(Entity)
FROM [05 hydropower-consumption]
order by 1

Select * 
FROM [05 hydropower-consumption]
------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by countries

Select Distinct(Entity)
FROM [05 hydropower-consumption]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World' 
order by 1

Select *
FROM [05 hydropower-consumption]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by purely the continents

Select Distinct(Entity)
FROM [05 hydropower-consumption]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')

Select *
FROM [05 hydropower-consumption]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')



------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by income

SELECT Distinct(Entity)
FROM [05 hydropower-consumption]
WHERE Entity LIKE '%income%'

SELECT *
FROM [05 hydropower-consumption]
WHERE Entity LIKE '%income%'

------------------------------------------------------------------------------------------------------------------------------------------
-- India

Select * 
FROM [05 hydropower-consumption]
where Entity = 'India'

------------------------------------------------------------------------------------------------------------------------------------------
-- To analyze decade wise trends

SELECT Entity,
    CASE 
        WHEN Year BETWEEN 1960 AND 1969 THEN '1960-69'
        WHEN Year BETWEEN 1970 AND 1979 THEN '1970-79'
        WHEN Year BETWEEN 1980 AND 1989 THEN '1980-89'
        WHEN Year BETWEEN 1990 AND 1999 THEN '1990-99'
        WHEN Year BETWEEN 2000 AND 2009 THEN '2000-09'
        WHEN Year BETWEEN 2010 AND 2019 THEN '2010-19'
        ELSE 'Other'
    END AS Decade,
    SUM(Electricity_from_hydro_TWh) AS Total_Electricity_from_hydro_TWh
FROM 
    [05 hydropower-consumption]
WHERE 
    Entity = 'World'
GROUP BY 
    Entity,
    CASE 
        WHEN Year BETWEEN 1960 AND 1969 THEN '1960-69'
        WHEN Year BETWEEN 1970 AND 1979 THEN '1970-79'
        WHEN Year BETWEEN 1980 AND 1989 THEN '1980-89'
        WHEN Year BETWEEN 1990 AND 1999 THEN '1990-99'
        WHEN Year BETWEEN 2000 AND 2009 THEN '2000-09'
        WHEN Year BETWEEN 2010 AND 2019 THEN '2010-19'
        ELSE 'Other'
    END
ORDER BY 
    Decade;

------------------------------------------------------------------------------------------------------------------------------------------
-- Comparing the two most recent decades
SELECT 
    Entity,
    SUM(CASE WHEN Year BETWEEN 2000 AND 2009 THEN Electricity_from_hydro_TWh ELSE 0 END) AS Hydro_2000_2009,
    SUM(CASE WHEN Year BETWEEN 2010 AND 2019 THEN Electricity_from_hydro_TWh ELSE 0 END) AS Hydro_2010_2019
FROM 
    [05 hydropower-consumption]
GROUP BY 
    Entity
ORDER BY
    Entity;
