/* Выбираем пользователей из Москвы */
SELECT 
	"name" AS user_name,
	surname AS user_surname
FROM
	PERSONS
WHERE 
	city_of_living = 'Moscow';