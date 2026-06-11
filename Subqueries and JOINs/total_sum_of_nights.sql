SELECT
	a.name,
	SUM(b.booked_for)
FROM 
	bookings AS b
	JOIN
	apartments AS a
	ON
	b.apartment_id = a.apartment_id
GROUP BY a.name
ORDER BY a.name;