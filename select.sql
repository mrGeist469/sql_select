SELECT album_name, release_year FROM albums
	WHERE release_year = 2018;

SELECT track_name, track_duration FROM tracks
    WHERE track_duration = (SELECT MAX(track_duration) FROM tracks);

SELECT track_name, track_duration FROM tracks
    WHERE track_duration >= 210;

SELECT collection_name FROM collections
    WHERE release_year BETWEEN 2018 AND 2020;

SELECT executor_name FROM executors
    WHERE executor_name NOT LIKE '% %';

SELECT track_name FROM tracks
    WHERE track_name ILIKE '% my %';