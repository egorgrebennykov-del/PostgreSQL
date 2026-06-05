SELECT 
	peak_name,
	LEFT(peak_name, 4) AS positive_right,
	LEFT(peak_name, -4) AS negative_right
FROM
	peaks;