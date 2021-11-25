SELECT properties.id, title, cost_per_night, start_date, Avg(rating) average_rating
FROM reservations
JOIN properties ON properties.id = property_id
JOIN property_reviews ON properties.id = reservation_id
WHERE end_date < now()::date
GROUP BY properties.id, title, cost_per_night, start_date
LIMIT 10;