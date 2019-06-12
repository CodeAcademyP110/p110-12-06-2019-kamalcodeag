--create database hometask
use hometask
--create table authors
--(
--	id int primary key identity,
--	name nvarchar(100) not null,
--	surname nvarchar(100),
--	email nvarchar(30) unique,
--	birthdate smalldatetime not null,
--	phone nvarchar(30)
--)
--create table genres
--(
--	id int primary key identity,
--	name nvarchar(30) not null
--)
--create table readers
--(
--	id int primary key identity,
--	name nvarchar(100) not null,
--	surname nvarchar(100),
--	email nvarchar(30) unique,
--	birthdate smalldatetime not null,
--)
--create table books
--(
--	id int primary key identity,
--	name nvarchar(100) not null,
--	price decimal(18,2) not null,
--	cover nvarchar(100) unique,
--	authorId int references authors(id),
--	genreId int references genres(id)
--)
--create table readersBridgebooks
--(
--	id int primary key identity,
--	readersId int references readers(id),
--	booksId int references books(id),
--	deadline smalldatetime not null
--)
--insert into authors values('George','Orwell','george@orwell.com',1930-04-04,'+44 123 456 789'),
--						('Victor','Hugo','victor@hugo.com',1880-07-22,'+49 123 456 789'),
--						('George','Jordag','george@jordag.com',1940-08-10,'+50 123 456 789'),
--						('Mirza','Jalil','mirza@jalil.az',1860-01-13,'+994 123 456 789'),
--						('Fryodor','Dostoyevski','fyodor@dostoyevski.com',1890-03-29,'+07 123 456 789'),
--						('Ramiz','Rovshan','ramiz@rovshan.az',1937-11-27,'+994 123 456 789')
--insert into genres values('dram'),('fantastic'),('romantic'),('anti-utopic'),('religous'),
--						('philosopic'),('academic'),('poetry'),('community')
--insert into readers values('Bakhtiyar','Shamilzadeh','bakhtiyar@shamilzadeh.az',1998-01-01),
--						('Rashad','Guluzade','rashad@guluzade.az',1995-07-22),
--						('Elchin','Front-End','elchin@front.az',1996-08-10),
--						('Ilkin','Sardarov','ilkin@sardarov.az',1994-01-13),
--						('Parviz','Mukhjanov','parviz@mukhjanov.az',1996-03-29),
--						('Ulvi','Alakbarli','ulvi@alakbarli.az',1995-11-27),
--						('Orkhan','Goalkeeper','orkhan@striker.az',1998-01-13),
--						('Kamil','Snake','kamil@snake.az',1999-03-29),
--						('Said','Holland','said@holland.az',2002-11-27)
--insert into books values('1984',12.5,'img/1984.png',1,4),
--						('Sefiller',11.78,'img/sefiller.png',2,1),
--						('Qara paltarli qadin',15,'img/qpq.png',6,8),
--						('Pocht qutusu',19.99,'img/pocht.png',4,9),
--						('Imam Ali',11.70,'img/imamali.png',3,5),
--						('Cinayet ve ceza',10,'img/cvc.png',5,1),
--						('Heyvanistan',9.99,'img/heyvanistan.png',1,4),
--						('Danabash kendinin ehvalatlari',17.25,'img/dke.png',4,9)
--insert into readersBridgebooks values(6,4,2019-06-29),
--								     (8,4,2019-07-14),
--									 (2,3,2019-06-25),
--									 (7,7,2019-07-04),
--									 (1,3,2019-06-27),
--									 (4,8,2019-07-02),
--									 (5,2,2019-06-23),
--									 (6,1,2019-06-28),
--									 (3,3,2019-07-11),
--									 (8,7,2019-06-24),
--									 (5,6,2019-06-29),
--									 (1,5,2019-07-17)


--SELECT BOOKS JOIN
--select books.name as 'book name',books.price as 'book price',books.cover as 'book photo',
--	   authors.name as 'author name',genres.name as 'genre name'
--from books
--join authors on books.authorId = authors.id
--join genres on books.genreId = genres.id


--SELECT READERSBRIDGEBOOKS JOIN
--select readers.name + ' ' + readers.surname as 'reader fullname',books.name as 'book name',readersBridgebooks.deadline
--from readersBridgebooks
--join readers on readersBridgebooks.readersId = readers.id
--join books on readersBridgebooks.booksId = books.id
--join authors on books.authorId = authors.id
--join genres on books.genreId = genres.id



--VIEW
--create view MyDraft as
--select books.name as 'book name'
--from readersBridgebooks
--join readers on readersBridgebooks.readersId = readers.id
--join books on readersBridgebooks.booksId = books.id
--join authors on books.authorId = authors.id
--join genres on books.genreId = genres.id
--where readersBridgebooks.deadline > 2019-06-13


--GROUP BY GENRES NAME
--select genres.name as 'genre name',count(books.name) as 'book name'
--from readersBridgebooks
--join readers on readersBridgebooks.readersId = readers.id
--join books on readersBridgebooks.booksId = books.id
--join authors on books.authorId = authors.id
--join genres on books.genreId = genres.id
--group by genres.name
