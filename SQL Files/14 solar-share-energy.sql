Select Distinct(Entity)
FROM [14 solar-share-energy]
order by 1

Select * 
FROM [14 solar-share-energy]
------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by countries

Select Distinct(Entity)
FROM [14 solar-share-energy]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World' 
order by 1

Select *
FROM [14 solar-share-energy]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by purely the continents

Select Distinct(Entity)
FROM [14 solar-share-energy]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')

Select *
FROM [14 solar-share-energy]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')



------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by income

SELECT Distinct(Entity)
FROM [14 solar-share-energy]
WHERE Entity LIKE '%income%'

SELECT *
FROM [14 solar-share-energy]
WHERE Entity LIKE '%income%'

------------------------------------------------------------------------------------------------------------------------------------------
-- India

Select * 
FROM [14 solar-share-energy]
where Entity = 'India'
