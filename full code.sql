/* Удаляем таблицу PORSONS, если она есть в базе */
DROP TABLE IF EXISTS PERSONS;

/*Создаем таблицу PORSONS*/
CREATE TABLE PERSONS 
(
	id SERIAL,
	"name" VARCHAR(50),
	surname VARCHAR(50),
	age INTEGER,
	phone_number VARCHAR(12),
	city_of_living VARCHAR(50),
	CONSTRAINT prim_key PRIMARY KEY ("name", surname, age)
);

/* Добавляем пользователя */
INSERT INTO PERSONS
(
	"name",
	surname,
	age,
	phone_number,
	city_of_living
)
VALUES 
(
	'Misha', 
	'Stroinov',
	34,
	'+79651031073',
	'Ramenskoe'
);

/* Добавляем пользователей */
INSERT INTO PERSONS
(
	"name",
	surname,
	age,
	phone_number,
	city_of_living
)
VALUES 
(
	'Vasya', 
	'Petrov',
	28,
	'+79651031074',
	'Moscow'
),
(
	'Masha',
	'Vysotskaya',
	22,
	'+79651031075',
	'Sankt-Peterburg'
);

/* Выбираем пользователей из Москвы */
SELECT 
	"name" AS user_name,
	surname AS user_surname
FROM
	PERSONS
WHERE 
	city_of_living = 'Moscow';

/* Выбираем пользователей старше 27 лет и сортируем по возрасту в порядке убывания */
SELECT
	*
FROM
	PERSONS
WHERE
	age > 27
ORDER BY 
	age DESC