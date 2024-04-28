Select Distinct(Entity)
FROM [09 cumulative-installed-wind-energy-capacity-gigawatts]
order by 1

Select * 
FROM [09 cumulative-installed-wind-energy-capacity-gigawatts]
------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by countries

Select Distinct(Entity)
FROM [09 cumulative-installed-wind-energy-capacity-gigawatts]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World' 
order by 1

Select *
FROM [09 cumulative-installed-wind-energy-capacity-gigawatts]
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World'
order by 1

------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by purely the continents

Select Distinct(Entity)
FROM [09 cumulative-installed-wind-energy-capacity-gigawatts]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')

Select *
FROM [09 cumulative-installed-wind-energy-capacity-gigawatts]
WHERE Entity IN ('Africa', 'Asia', 'Australia', 'North America', 'South America', 'Europe', 'World')



------------------------------------------------------------------------------------------------------------------------------------------
-- Classified by income

SELECT Distinct(Entity)
FROM [09 cumulative-installed-wind-energy-capacity-gigawatts]
WHERE Entity LIKE '%income%'

SELECT *
FROM [09 cumulative-installed-wind-energy-capacity-gigawatts]
WHERE Entity LIKE '%income%'

------------------------------------------------------------------------------------------------------------------------------------------
-- India

Select * 
FROM [09 cumulative-installed-wind-energy-capacity-gigawatts]
where Entity = 'India'

------------------------------------------------------------------------------------------------------------------------------------------
-- Query to pivot wind capacity data by year and entity
SELECT *
FROM (
    SELECT Year, Code, Entity, Wind_Capacity
    FROM [09 cumulative-installed-wind-energy-capacity-gigawatts]
) AS source_data
PIVOT (
    SUM(Wind_Capacity)
    FOR Year IN ([1997], [1998], [1999], [2000], [2001], [2002], [2003], [2004], [2005], [2006], [2007], [2008], [2009], [2010], [2011], [2012], [2013])
) AS pivot_table
WHERE Code is NOT NULL and Entity <> 'USSR' and Entity <> 'World' 
order by 1


