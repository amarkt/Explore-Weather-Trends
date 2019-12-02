-- Using New Delhi for Analysis.

-- See which cities are available for "India" in the given dataset
SELECT * 
FROM city_list
WHERE country LIKE 'India'

-- Choosing "New Delhi"

/*  In SCHEMA, both city_data and global_data contains 
same column named 'avg_temp'. So I have changed the names of the columns to CAT and GAT respectively
in order to extract the joined table */

ALTER TABLE city_data RENAME COLUMN avg_temp to CAT;        -- CAT - City Avg. Temp
ALTER TABLE global_data RENAME COLUMN avg_temp to GAT;      -- GAT - Global Avg. Temp


SELECT global_data.year, global_data.GAT, city_data.CAT
FROM global_data JOIN city_data         
ON global_data.year = city_data.year    
WHERE city LIKE 'New Delhi';