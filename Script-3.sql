/*iii. Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false). Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)*/

USE vk;
/*
ALTER TABLE profiles 
	ADD is_active bool DEFAULT TRUE
		AFTER birthday;*/

UPDATE profiles 
	SET is_active = TRUE;

UPDATE profiles 
	SET is_active = FALSE
		WHERE DATE(birthday) BETWEEN '2003-01-01' AND Date(Now());
