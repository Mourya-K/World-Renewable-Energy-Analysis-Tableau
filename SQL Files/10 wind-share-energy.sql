Select Distinct(Entity)
FROM [10 wind-share-energy]
order by 1

Select * 
FROM [10 wind-share-energy]
------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by countries

Select Distinct(Entity)
FROM [10 wind-share-energy]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World' 
order by 1

Select *
FROM [10 wind-share-energy]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by purely the continents

Select Distinct(Entity)
FROM [10 wind-share-energy]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')

Select *
FROM [10 wind-share-energy]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')



------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by income

SELECT Distinct(Entity)
FROM [10 wind-share-energy]
WHERE Entity LIKE '%income%'

SELECT *
FROM [10 wind-share-energy]
WHERE Entity LIKE '%income%'

------------------------------------------------------------------------------------------------------------------------------------------
-- India

Select * 
FROM [10 wind-share-energy]
where Entity = 'India'

