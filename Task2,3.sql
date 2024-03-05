-- Задание 2
--Название и продолжительность самого длительного трека.
SELECT track_name, duration FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_name FROM tracks
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_title FROM collections
WHERE collection_year_release BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT nickname FROM artists
WHERE nickname NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my». 
SELECT track_name FROM tracks
WHERE track_name LIKE 'My%';

--Задание 3
--Количество исполнителей в каждом жанре.
SELECT genre_id, COUNT(artist_id) FROM genreartist
GROUP BY genre_id
ORDER BY genre_id;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT album_title, COUNT(track_name) FROM albums a
JOIN tracks t ON a.album_id = t.album_id 
WHERE year_release BETWEEN 2019 AND 2020
GROUP BY a.album_title;

--Средняя продолжительность треков по каждому альбому.
SELECT album_title, AVG(duration) FROM albums a
JOIN tracks t ON a.album_id = t.album_id
GROUP BY a.album_title;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT a.nickname FROM artists a
LEFT JOIN artistalbum aa ON aa.artist_id = a.artist_id
LEFT JOIN albums al ON al.album_id = aa.album_id AND al.year_release = 2020
WHERE al.album_id IS NULL

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.collection_title FROM collections c 
JOIN collectiontrack ct ON c.collection_id = ct.collection_id 
JOIN tracks t ON ct.track_id = t.track_id 
JOIN albums al ON t.album_id = al.album_id 
JOIN artistalbum aa ON al.album_id = aa.album_id 
JOIN artists a ON aa.artist_id = a.artist_id 
WHERE nickname = 'ASAP Rocky'

