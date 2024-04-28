Select Distinct(Entity)
FROM [01 renewable-share-energy]
order by 1

Select * 
from [01 renewable-share-energy]
------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by countries

Select Distinct(Entity)
FROM [01 renewable-share-energy]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World' 
order by 1

Select *
FROM [01 renewable-share-energy]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1


------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by continents and regions

-- Select Distinct(Entity)
-- FROM [01 renewable-share-energy]
-- WHERE Code is NULL and Entity NOT LIKE '%income%'

-- Select Entity, Year, Renewables_equivalent_primary_energy
-- FROM [01 renewable-share-energy]
-- WHERE Code is NULL and Entity NOT LIKE '%income%'


------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by purely the continents

Select Distinct(Entity)
FROM [01 renewable-share-energy]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')

Select Entity, Year, Renewables_equivalent_primary_energy
FROM [01 renewable-share-energy]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')



------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by income

SELECT Distinct(Entity)
FROM [01 renewable-share-energy]
WHERE Entity LIKE '%income%'

SELECT Entity, Year, Renewables_equivalent_primary_energy
FROM [01 renewable-share-energy]
WHERE Entity LIKE '%income%'



------------------------------------------------------------------------------------------------------------------------------------------
-- Figuring out what BP is
-- Select *
-- from [01 renewable-share-energy]
-- where Entity = 'Africa'

-- Select *
-- from [01 renewable-share-energy]
-- where Entity = 'Africa (BP)'

------------------------------------------------------------------------------------------------------------------------------------------

Select * 
FROM [01 renewable-share-energy-country]
where Entity = 'India'


Select * 
from [01 renewable-share-energy]
where Entity = 'Iceland'

------------------------------------------------------------------------------------------------------------------------------------------
Select *
from IndiaGDP

Select r.Year, Renewables_equivalent_primary_energy, Solar_Generation_TWh, Hydro_Generation_TWh, Wind_Generation_TWh, Geo_Biomass_Other_TWh, GDP
from [01 renewable-share-energy] r 
JOIN IndiaGDP i
ON r.Year = i.Year 
JOIN [02 modern-renewable-energy-consumption] m
on r.[Year] = m.[Year]
where r.Entity = 'India' and r.Year >= '2000'