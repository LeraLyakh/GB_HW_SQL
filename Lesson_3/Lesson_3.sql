USE vk;

DROP TABLE IF EXISTS music_albums;
CREATE TABLE music_albums ( 
	id SERIAL,
	name varchar(255) DEFAULT NULL,
	cover BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (cover) REFERENCES media(id)
);

DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists (
	id SERIAL,
	name varchar(255) DEFAULT NULL,
	cover BIGINT UNSIGNED NOT NULL,
	user_id BIGINT UNSIGNED DEFAULT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users(id)
);
	

DROP TABLE IF EXISTS music;
CREATE TABLE music (
	id SERIAL,
	media_id  BIGINT unsigned NOT NULL,
	music_album_id  BIGINT unsigned NULL,
	playlist_id  BIGINT unsigned NULL,
	artist varchar(255) DEFAULT NULL,
	name varchar(255) DEFAULT NULL,
	
	FOREIGN KEY (music_album_id) REFERENCES music_albums(id),
	FOREIGN KEY (playlist_id) REFERENCES playlists(id),
	FOREIGN KEY (media_id) REFERENCES media(id)	
	);


