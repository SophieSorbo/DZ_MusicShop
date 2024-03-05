--Задание 1
--исполнители
INSERT INTO artists(nickname)
VALUES
	('ASAP Rocky'),
	('Blink 182'),
	('Johnny Cash'),
	('Tyler, the Creator'),
	('Greeen day'),
	('Desiigner');

--жанры
INSERT INTO genres(genre_name)
VALUES
	('Rock'),
	('Rap'),
	('Country music');

--альбомы
INSERT INTO albums(album_title, year_release)
VALUES
	('Unearthed', 2003),
	('American Idiot', 2004),
	('Take Off Your Pants And Jacket', 2001),
	('Testing', 2018),
	('Igor', 2019);

--треки
INSERT INTO tracks(album_id, track_name, duration)
VALUES
	(3, 'Stay Together For The Kids', 239),
	(3, 'First Date', 171),
	(1, 'Father And Son', 169),
	(2, 'Wake Me up When September Ends', 285),
	(4, 'Changes', 314),
	(4, 'Praise The Lord', 205),
	(5, 'EARFQUAKE', 190),
	(5, 'I THINK', 212),
	(NULL, 'My Brodie', 138);

--сборники
INSERT INTO collections(collection_title, collection_year_release)
VALUES 
	('What You Need', 2019),
	('Punk rock 2000s', 2008),
	('Immortal country music', 2016),
	('SAD music', 2020);

--исполнители с жанрами
INSERT INTO genreartist 
VALUES
	(1, 2),
	(1, 5),
	(2, 1),
	(2, 4),
	(3, 3),
	(2, 6);

--исполнители с альбомами
INSERT INTO artistalbum
VALUES
	(1, 4),
	(2, 3),
	(3, 1),
	(4, 5),
	(5, 2);

--сборники с треками
INSERT INTO collectiontrack 
VALUES
	(1, 7),
	(1, 5),
	(1, 6),
	(1, 8),
	(2, 1),
	(2, 2),
	(2, 4),
	(3, 3),
	(4, 5),
	(4, 7),
	(4, 4),
	(4, 1);



