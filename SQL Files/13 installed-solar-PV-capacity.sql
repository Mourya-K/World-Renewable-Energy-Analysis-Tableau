Select Distinct(Entity)
FROM [13 installed-solar-PV-capacity]
order by 1

Select * 
FROM [13 installed-solar-PV-capacity]
------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by countries

Select Distinct(Entity)
FROM [13 installed-solar-PV-capacity]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World' 
order by 1

Select *
FROM [13 installed-solar-PV-capacity]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by purely the continents

Select Distinct(Entity)
FROM [13 installed-solar-PV-capacity]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')

Select *
FROM [13 installed-solar-PV-capacity]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')



------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by income

SELECT Distinct(Entity)
FROM [13 installed-solar-PV-capacity]
WHERE Entity LIKE '%income%'

SELECT *
FROM [13 installed-solar-PV-capacity]
WHERE Entity LIKE '%income%'

------------------------------------------------------------------------------------------------------------------------------------------
-- India

Select * 
FROM [13 installed-solar-PV-capacity]
where Entity = 'India'

