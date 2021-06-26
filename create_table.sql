create table if not exists Styles (
    id serial primary key,
    name varchar(20) not null unique
);

create table if not exists Executors (
    id serial primary key,
    executor_name varchar (80) not null unique
);

create table if not exists Executors_and_styles (
    id serial primary key,
    style_id integer references Styles (id),
    executor_id integer references Executors (id)
);

create table if not exists Albums (
    id serial primary key,
    album_name varchar (80) not null,
    release_year integer not null
);

create table if not exists Executors_and_albums (
    id serial primary key,
    executor_id integer references Executors (id),
    album_id integer references Albums (id)
);

create table if not exists Tracks (
    id serial primary key,
    album_id integer references Albums (id),
    track_name varchar (80) not null,
    track_duration integer not null
);

create table if not exists Collections(
    id serial primary key,
    collection_name varchar (80) not null,
    release_year integer not null
);

create table if not exists Collections_and_albums (
    id serial primary key,
    collection_id integer references Collections (id),
    track_id integer references Tracks (id)
);