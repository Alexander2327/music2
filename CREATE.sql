create table if not exists Genre 
(
ID_Genre serial primary key,
Genre_name varchar(40) not null unique
);
create table if not exists Singer 
(
ID_Singer serial primary key,
Nickname varchar(40) not null unique
);
create table if not exists S_G
(
ID_Genre integer references Genre(ID_Genre),
ID_Singer integer references Singer(ID_Singer),
constraint pk_1 primary key (ID_Genre, ID_Singer)
);
create table if not exists Album
(
ID_Album serial primary key,
Album_name varchar(40) not null,
Album_year int not null
);
create table if not exists S_A
(
ID_Singer integer references Singer(ID_Singer),
ID_Album integer references Album(ID_Album),
constraint pk_2 primary key (ID_Singer, ID_Album)
);
create table if not exists Track
(
ID_Track serial primary key,
Album int references Album(ID_Album),
Track_name varchar(40) not null,
Track_time int not null check (Track_time>0)
);
create table if not exists Collection
(
ID_Collection serial primary key,
Collection_name varchar(40) not null,
Collection_year integer not null
);
create table if not exists C_T
(
ID_Track  integer references Track(ID_Track),
ID_Collection integer references Collection(ID_Collection),
constraint pk_3 primary key (ID_Track, ID_Collection)
);