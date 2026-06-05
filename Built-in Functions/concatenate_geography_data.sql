CREATE VIEW view_continents_countries_currencies_details
AS

	SELECT
		CONCAT(
				continent_name, ': ', con.continent_code
			) AS continent_details,
			
		CONCAT_WS(
				' - ', country_name, capital, area_in_sq_km, 'km2'
			) AS country_information,
			
		CONCAT(
				description, ' (', curr.currency_code, ')'
			) AS currencies
	FROM
		countries AS cou
	JOIN
		continents AS con
	ON
		cou.continent_code = con.continent_code
	JOIN
		currencies AS curr
	ON
		curr.currency_code = cou.currency_code
	ORDER BY
		country_information,
		currencies;