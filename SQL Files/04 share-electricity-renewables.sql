Select Distinct(Entity)
FROM [04 share-electricity-renewables]
order by 1

Select * 
FROM [04 share-electricity-renewables]
------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by countries

Select Distinct(Entity)
FROM [04 share-electricity-renewables]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World' 
order by 1

Select *
FROM [04 share-electricity-renewables]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by purely the continents

Select Distinct(Entity)
FROM [04 share-electricity-renewables]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')

Select *
FROM [04 share-electricity-renewables]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')



------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by income

SELECT Distinct(Entity)
FROM [04 share-electricity-renewables]
WHERE Entity LIKE '%income%'

SELECT *
FROM [04 share-electricity-renewables]
WHERE Entity LIKE '%income%'

------------------------------------------------------------------------------------------------------------------------------------------
-- India

Select * 
FROM [04 share-electricity-renewables]
where Entity = 'India'

------------------------------------------------------------------------------------------------------------------------------------------
-- To calculate improvement from 2010

Select Entity, Code, 
    MAX(CASE WHEN Year = 2021 THEN Renewables_electricity END) - 
    MAX(CASE WHEN Year = 2010 THEN Renewables_electricity END) AS Improvement_2021_2000

FROM [04 share-electricity-renewables]

WHERE Code IS NOT NULL AND Entity NOT IN ('USSR', 'World')

GROUP BY Entity, Code
order by Entity;
