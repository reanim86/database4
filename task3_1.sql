insert into executor(executor_name)
values
	('Linkin Park'),
	('Gorky Park'),
	('50 Cent'),
	('Aleksei Kudinov'),
	('Nirvana'),
	('Sting'),
	('Feel'),
	('Smash');
insert into genre(genre_name)
values
	('Rock'),
	('Rap'),
	('Pop'),
	('Grange'),
	('Trance');
insert into executor_genre
values
	(1, 1),
	(1, 2),
	(2, 3),
	(1, 4),
	(4, 5),
	(1, 6),
	(5, 7),
	(3, 8),
	(1, 5),
	(2, 1);

delete from track_collection;

insert into album(album_name, album_year)
values
	('Hybrid Theory', 1999),
	('Stare', 1996),
	('Power of the Dollar', 2000),
	('Work', 2020),
	('Bleach', 1989),
	('The Dream of the Blue Turtles', 1985),
	('The Concert', 2009),
	('Freeway', 2003),
	('44/876', 2019);
insert into executor_album
values
	(1, 36),
	(2, 37),
	(3, 38),
	(4, 39),
	(5, 40),
	(6, 41),
	(7, 42),
	(8, 43),
	(4, 44);
insert into track(track_name, album_id, duration)
values
	('Should Have Loved You More', 36, 180),
	('Belle', 37, 190),
	('What About Future', 38, 254),
	('Loved You Too Much', 38, 299),
	('If You Love Somebody Set Them Free', 39, 254),
	('Love Is the Seventh Wave', 40, 210),
	('Blew', 40, 175),
	('Floyd the Barber', 41, 138),
	('No', 42, 120),
	('What Up Gangsta', 43, 179),
	('Patiently Waiting', 44, 288),
	('California Promises', 36, 134),
	('Five Wheel Drive', 37, 234),
	('Papercut', 38, 185),
	('One Step Closer', 39, 156),
	('In My Remains', 39, 200);
insert into collection(collection_name, collection_year)
values
	('Reanimation', 2002),
	('Songs from the Underground', 2008),
	('MTV Unplugged in New York', 1994),
	('Fields of Gold: The Best of Sting', 1994),
	('The Very Best of Sting & The Police', 1997),
	('So Lonely', 2014),
	('If You Feel Love', 2014),
	('Greenpeace Breakthrough', 1989),
	('Good Goodbye', 2018);
insert into track_collection
values
	(78, 9),
	(78, 10),
	(79, 11),
	(79, 12),
	(79, 13),
	(80, 14),
	(81, 15),
	(81, 16),
	(82, 17),
	(82, 16);
	