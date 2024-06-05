insert into singer(name)
values('Johnny Cash'), ('Till Lindemann'), ('Eminem'), ('Ennio Morricone');

insert into genre(name)
values('Rock'), ('Country'), ('Instrumental');

insert into album(name, issue_date)
values('At Folsom Prison', '1968-05-01'), ('Zunge', '2019-03-17'), ('Kamikaze', '2018-08-31'), ('Music to Be Murdered By', '2019-01-17'), ('A Fistful of Dollars', '1964-09-12');

insert into collection(name, released_at)
values('The Best Songs of All Time', 2019), ('Old songs', 2007), ('The country hits', 1978), ('Grim songs', 2020);

insert into song_list(name, issue_date, duration, album_id)
values('Ring of Fire', '1963-04-19', 180, 1), ('Puppe', '2019-03-22', 240, 2), ('Godzilla', '2020-01-17', 206, 3), ('The Ecstasy of Gold', '1966-12-01', 210, 4), ('Du Hast', '1997-07-18', 196, 2), ('Rap God', '2013-10-15', 360, 2);

insert into genre_singer(id_singer, id_genre)
values (1, 2),
(2, 1),
(3, 1),
(4, 3),
(1, 2)
on conflict (id_singer, id_genre) do nothing;

insert into album_singer(album_id, singer_id)
values (1,1), (2, 2), (3, 3), (4, 4), (5, 2), (2, 3)
on conflict (album_id, singer_id) do nothing;

insert into collection_song_list(collection_id, song_id)
values (1, 1), (1, 3), (1, 6), (2, 1), (2, 5), (3, 1), (3, 5), (4, 2), (4, 6)
on conflict (collection_id, song_id) do nothing;
