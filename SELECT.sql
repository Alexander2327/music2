SELECT album_name, album_year FROM album
WHERE album_year = 2018;
SELECT track_name, track_time FROM track
WHERE track_time = (SELECT max(track_time) FROM track);
SELECT track_name FROM track
WHERE track_time >= (3.5*60);
SELECT collection_name FROM collection
WHERE collection_year BETWEEN 2018 AND 2020;
SELECT nickname  FROM singer
WHERE length(nickname)=length(REPLACE(nickname,' ',''));
SELECT  track_name FROM track
WHERE track_name ILIKE '%мой%' OR track_name ILIKE '%my%';