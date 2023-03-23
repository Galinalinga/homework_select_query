-- 1. Название и год выхода альбомов, вышедших в 2018 году.
SELECT name, year_of_issue 
  FROM albums
  WHERE year_of_issue = '2018';

-- 2. Название и продолжительность самого длительного трека.
 SELECT name, duration 
  FROM tracks
 WHERE duration = (SELECT MAX(duration) FROM tracks);
 
 
-- 3. Название треков, продолжительность которых не менее 3,5 минут.
 SELECT name 
  FROM tracks
 WHERE duration >= 210;


-- 4. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name 
  FROM collections
 WHERE year_of_issue BETWEEN 2018 AND 2020;

-- 5. Исполнители, чьё имя состоит из одного слова.
SELECT name 
  FROM artists
 WHERE name NOT LIKE '% %';


-- 6. Название треков, которые содержат слово «мой» или «my».
 SELECT name 
  FROM tracks
 WHERE name LIKE '%My%';
 