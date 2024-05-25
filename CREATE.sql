create table if not exists singer(
id SERIAL primary key,
name VARCHAR(30) not null 
);


create table if  not exists album(
id SERIAL primary key,
name VARCHAR(30) not null,
issue_date DATE not null
);


create table if not exists song_list(
id serial primary key,
name VARCHAR(25) not null,
issue_date DATE not null,
album_id INTEGER references album(id),
duration INTEGER
);

create table if not exists genre(
id SERIAL primary key,
name VARCHAR(25) not null
);

create table if  not exists genre_singer(
id_singer INTEGER references singer(id),
id_genre INTEGER references genre(id),
primary key(id_singer, id_genre)
);


create table if  not exists album_singer(
album_id INTEGER references album(id),
singer_id INTEGER references singer(id),
primary key(album_id, singer_id)
);

create table if not exists collection(
id serial primary key,
name VARCHAR(30) not null,
released_at INTEGER not null
);

create table if not exists collection_song_list(
collection_id INTEGER references collection(id),
song_id INTEGER references song_list(id),
primary key(collection_id, song_id)
);
