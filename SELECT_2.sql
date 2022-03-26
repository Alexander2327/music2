SELECT genre_name, count(*) FROM  genre
LEFT JOIN s_g ON  genre.id_genre =s_g.id_genre
GROUP BY genre_name;

SELECT count(*) FROM track
LEFT JOIN album ON track.album =album.id_album
WHERE album.album_year BETWEEN 2019 AND 2020;

SELECT album_name, avg(track_time) FROM album
LEFT JOIN track ON album.id_album = track.album
GROUP BY album_name;

SELECT DISTINCT nickname FROM singer
LEFT JOIN s_a ON singer.id_singer = s_a.id_singer 
LEFT JOIN album ON s_a.id_album =album.id_album
WHERE singer.id_singer NOT IN 
(SELECT id_singer FROM s_a
LEFT JOIN album ON s_a.id_album =album.id_album
WHERE album_year = 2020);

SELECT DISTINCT collection_name FROM collection c
LEFT JOIN c_t ct ON c.id_collection = ct.id_collection
LEFT JOIN track t ON ct.id_track = t.id_track
LEFT JOIN album a ON t.album = a.id_album 
LEFT JOIN s_a sa ON a.id_album = sa.id_album
LEFT JOIN singer s ON sa.id_singer  = s.id_singer
WHERE nickname = 'Queen';

SELECT album_name FROM album a
LEFT JOIN s_a sa ON a.id_album = sa.id_album 
LEFT JOIN singer s ON sa.id_singer = s.id_singer 
LEFT JOIN s_g sg ON s.id_singer = sg.id_singer
GROUP BY album_name 
HAVING count(*)>1;

--Нашли какие треки встречаются только в одной коллекции и удалили один из них, чтобы был результат.
--SELECT id_track FROM c_t ct
--GROUP BY id_track
--HAVING count(id_track) = 1;
--DELETE FROM c_t 
--WHERE id_track = 9;

SELECT track_name FROM track t 
LEFT JOIN c_t ct ON t.id_track = ct.id_track 
LEFT JOIN collection c ON ct.id_collection = c.id_collection
WHERE ct.id_collection is NULL;

SELECT nickname FROM singer s 
LEFT JOIN s_a sa ON s.id_singer = sa.id_singer 
LEFT JOIN album a ON sa.id_album = a.id_album 
LEFT JOIN track t ON a.id_album = t.album 
WHERE track_time = (SELECT min(track_time) FROM track);

SELECT album_name FROM album a 
LEFT JOIN track t ON a.id_album = t.album 
GROUP BY album_name
HAVING count(album_name) <= ALL 
(SELECT count(album_name) FROM album a
LEFT JOIN track t ON a.id_album = t.album 
GROUP BY album_name);






