SELECT
	CONCAT(mountain_range, ' ', peak_name) AS mountain_information,
	CHAR_LENGTH(CONCAT(mountain_range, ' ', peak_name)) AS characters_length,
	BIT_LENGTH(CONCAT(mountain_range, ' ', peak_name)) AS bits_of_a_tring
	
FROM
	mountains AS moun
JOIN
	peaks
ON
	moun.id = peaks.mountain_id;