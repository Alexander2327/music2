INSERT INTO genre(genre_name) 
VALUES ('russian rap'), ('pop'), ('rock'), ('R&B'), ('country');
INSERT INTO singer(nickname) 
VALUES ('Баста'), ('Miyagi'), ('Zivert'), ('Ed Sheeran'),
('The Weeknd'), ('Rihanna'), ('Би-2'), ('Queen'), ('Johnny Cash'), ('Nancy Sinatra');
INSERT INTO album(album_name, album_year) 
VALUES ('40', 2020), ('Buster Keaton', 2019), ('Vinyl #2', 2021), ('Happier', 2018), ('Dawn FM', 2022),
('Lemon', 2018), ('Я никому не верю', 2022), ('The Miracle', 1989), ('Remember', 2021), ('California Girl', 2002);
INSERT INTO track(album, track_name, track_time) 
VALUES (1, 'С самых низов', 339), (1, 'Время догонит нас', 366), (2, 'Captain', 214),
(2, 'Самурай', 164), (3, 'Рокки', 177), (3, 'Forever Young', 180), (4, 'Happier', 206), (5, 'Take My Breath', 339),
(5, 'Sacrifice', 188), (6, 'Lemon', 226), (7, 'Мой друг', 292), (7, 'Я никому не верю', 368),
(8, 'My Baby Does Me', 202), (8, 'Party', 144), (9, 'Remember Me', 119), (9, 'Seasons Of My Heart', 149),
(10, 'How Are Things In California?', 150);
INSERT INTO collection(collection_name, collection_year)
VALUES ('Хиты года', 2020), ('ТОП отечественных песен', 2022), ('ТОП зарубежных песен', 2018),
('ТОП 3', 2019), ('Вдохновляющие', 2021), ('Best of the best', 2020), ('Почувствуй силу', 2019), ('ТОП РОК', 2021);
INSERT INTO s_g
VALUES (1,1), (1,2), (2,3), (2,4), (2,6), (3,7), (3,8), (4,3), (4,5), (4,6), (5,9), (5,10);
INSERT INTO s_a
VALUES (1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8), (9,9), (10,10), (6,5), (10, 8), (4,9);
INSERT INTO c_t
VALUES (3,1), (6,1), (12,1), (1,2), (2,2), (4,2), (11,2), (7,3), (9,3), (10,3), (15,3), (17,3), (3,4),
(14,4), (17,4), (1,5), (4,5), (5,5), (8,5), (10,5), (13,5), (16,5), (13,6), (14,6), (15,6), (17,6), (1,7), (3,7),
(5,7), (7,7), (11,8), (12,8), (16,8);









