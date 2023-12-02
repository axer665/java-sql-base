/* Выбираем пользователей старше 27 лет и сортируем по возрасту в порядке убывания */
SELECT
	*
FROM
	PERSONS
WHERE
	age > 27
ORDER BY 
	age DESC
