-- ex 1 Предположен, что у нас выбран пользователь с id = 5

SELECT 
(SELECT firstname FROM users WHERE id = messages.from_user_id) as name,
(SELECT lastname FROM users WHERE id = messages.from_user_id) as lastname,
count(*) as max_messages 
FROM messages
WHERE to_user_id = 5 -- id выбранного пользователя
GROUP BY from_user_id -- группируем сообщения по отправляющим выбранному пользователю
LIMIT 1; -- для вывода одного пользователя, который чаще всего пишет пользователю 5

-- Вопрос:  как можно посчитать у кого самая длинная переписка? 
-- то есть не только сколько другие пользователи пишут пользователю 5
-- а в принципе у нас есть пользователь 5 и мы хотим выяснить 
-- вне зависимости от того кто кому пишет 5 к 16 или 16 к 5
-- с каким пользователем у пользователя 5 переписка больше
-- Если будет возможность, хотелось бы такой пример рассмотреть
-- на вебинаре)
  

-- ex 2 
SELECT -- Проверка для самой себя, чтобы видеть пользователей младше 10
(SELECT firstname FROM users WHERE id = profiles.user_id ) as firstname,
(SELECT lastname FROM users WHERE id = profiles.user_id ) as lastname,
user_id
FROM profiles
WHERE YEAR(NOW())-YEAR(birthday) < 10;

SELECT COUNT(*) as got_likes FROM likes -- подсчитываем все лайки детей
WHERE media_id IN -- определяем медиа, принадлежащие детям до 10
(SELECT id FROM media WHERE user_id IN 
(SELECT user_id FROM profiles WHERE YEAR(NOW())-YEAR(birthday) < 10));



-- ex 3
SELECT 
(SELECT 
	CASE (gender)
         WHEN 'm' THEN 'male'
         WHEN 'f' THEN 'female'
    END AS gender
  FROM profiles WHERE user_id = likes.user_id) as gender,
COUNT(*) as likes
FROM likes
GROUP BY gender
limit 1;

