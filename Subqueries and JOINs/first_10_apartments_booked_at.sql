SELECT
	a.name,
	a.country,
	TO_CHAR(b.booked_at, 'YYYY-MM-DD') AS booked_at
FROM
	apartments AS a
	LEFT JOIN
	bookings AS b
	ON
	a.apartment_id = b.apartment_id
LIMIT 10;