/*iv. Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней)*/

USE vk;

		
DELETE FROM messages
	WHERE DATE(created_at) > DATE(now());
	

SELECT * FROM messages
	WHERE DATE(created_at) > DATE(now());
	