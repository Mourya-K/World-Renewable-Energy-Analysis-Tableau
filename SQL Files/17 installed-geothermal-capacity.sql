Select Distinct(Entity)
FROM [17 installed-geothermal-capacity]
order by 1

Select * 
FROM [17 installed-geothermal-capacity]
------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by countries

Select Distinct(Entity)
FROM [17 installed-geothermal-capacity]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World' 
order by 1

Select *
FROM [17 installed-geothermal-capacity]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by purely the continents

Select Distinct(Entity)
FROM [17 installed-geothermal-capacity]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')

Select *
FROM [17 installed-geothermal-capacity]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')



------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by income

SELECT Distinct(Entity)
FROM [17 installed-geothermal-capacity]
WHERE Entity LIKE '%income%'

SELECT *
FROM [17 installed-geothermal-capacity]
WHERE Entity LIKE '%income%'

------------------------------------------------------------------------------------------------------------------------------------------
-- India

Select * 
FROM [17 installed-geothermal-capacity]
where Entity = 'India'

