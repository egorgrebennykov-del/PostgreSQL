SELECT 
	b.booking_id,
	TO_CHAR(starts_at, 'YYYY-MM-DD'),
	b.apartment_id,
	CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM
	bookings AS b
	RIGHT JOIN
	customers AS c
	ON
	b.customer_id = c.customer_id
ORDER BY customer_name
LIMIT 10;