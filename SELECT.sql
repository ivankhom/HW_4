select name, duration 
from song_list
where duration = (select MAX(duration) from song_list);

select name
from song_list
where duration >= 3.5 * 60;

select name
from collection
where released_at between 2019 and 2020;

select name
from singer
where name not like '% %';

select name
from song_list
where name like '%мой%' or name like '%my%';

select count(distinct id_singer), id_genre 
from genre_singer
group by id_genre;

select COUNT(distinct song_list.id)
from song_list
join album on song_list.album_id = album.id
where album.issue_date between '2019-01-01' and '2020-12-31';

select AVG(duration), album_id
from song_list
join album on song_list.album_id = album.id
group by album_id;

select singer.name
from singer
where singer.id not in(
select singer_id
from album_singer
where album_id in(
select id 
from album
where extract(year from issue_date) = 2020) );

select collection.name
from collection
join collection_song_list on collection_song_list.collection_id = collection.id
join song_list on song_list.id = collection_song_list.song_id
join album on song_list.album_id = album.id
join album_singer on album_singer.album_id = album.id
join singer on singer.id = album_singer.singer_id
where singer.name = 'Eminem';
