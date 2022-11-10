-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city

SELECT 
address.address_id
FROM
city
INNER JOIN address
ON address.city_id = city.city_id
WHERE city.city = 'Dundee';