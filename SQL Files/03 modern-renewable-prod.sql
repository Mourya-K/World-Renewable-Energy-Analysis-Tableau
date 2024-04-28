Select Distinct(Entity)
FROM [03 modern-renewable-prod]
order by 1

Select * 
from [03 modern-renewable-prod]
where Entity = 'United States'
------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by countries

Select Distinct(Entity)
FROM [03 modern-renewable-prod]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

Select *
FROM [03 modern-renewable-prod]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by purely the continents

Select Distinct(Entity)
FROM [03 modern-renewable-prod]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')

Select *
FROM [03 modern-renewable-prod]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')



------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by income

SELECT Distinct(Entity)
FROM [03 modern-renewable-prod]
WHERE Entity LIKE '%income%'

SELECT *
FROM [03 modern-renewable-prod]
WHERE Entity LIKE '%income%'

------------------------------------------------------------------------------------------------------------------------------------------

Select * 
FROM [03 modern-renewable-prod]
where Entity = 'India'


------------------------------------------------------------------------------------------------------------------------------------------
