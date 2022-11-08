-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

SELECT
  country.country,
  avg(payment.amount)
FROM
  country
  JOIN city ON country.country_id = city.country_id
  JOIN address ON city.city_id = address.city_id
  JOIN customer ON address.address_id = customer.address_id
  JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY
  country.country_id
ORDER BY
  avg DESC
LIMIT
  10