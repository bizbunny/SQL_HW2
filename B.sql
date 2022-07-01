------------------------------------------------------Restaurant Data------------------------------------------------------

/* Delete the tables if they already exist */
drop table  Restaurant;
drop table  Reviewer;
drop table  Rating;

/* Create the schema for our tables */
create table Restaurant(rID int, name varchar2(100), address varchar2(100), cuisine varchar2(100));
create table Reviewer(vID int, name varchar2(100));
create table Rating(rID int, vID int, stars int, ratingDate date);

/* Populate the tables with our data */
insert into Restaurant values(101, 'India House Restaurant', '59 W Grand Ave Chicago, IL 60654', 'Indian');
insert into Restaurant values(102, 'Bombay Wraps', '122 N Wells St Chicago, IL 60606', 'Indian');
insert into Restaurant values(103, 'Rangoli', '2421 W North Ave Chicago, IL 60647', 'Indian');
insert into Restaurant values(104, 'Cumin', '1414 N Milwaukee Ave Chicago, IL 60622', 'Indian');
insert into Restaurant values(105, 'Shanghai Inn', '4723 N Damen Ave Chicago, IL 60625', 'Chinese');
insert into Restaurant values(106, 'MingHin Cuisine', '333 E Benton Pl Chicago, IL 60601', 'Chinese');
insert into Restaurant values(107, 'Shanghai Terrace', '108 E Superior St Chicago, IL 60611', 'Chinese');
insert into Restaurant values(108, 'Jade Court', '626 S Racine Ave Chicago, IL 60607', 'Chinese');

insert into Reviewer values(2001, 'Sarah M.');
insert into Reviewer values(2002, 'Daniel L.');
insert into Reviewer values(2003, 'B. Harris');
insert into Reviewer values(2004, 'P. Suman');
insert into Reviewer values(2005, 'Suikey S.');
insert into Reviewer values(2006, 'Elizabeth T.');
insert into Reviewer values(2007, 'Cameron J.');
insert into Reviewer values(2008, 'Vivek T.');

insert into Rating values( 101, 2001,2, DATE '2011-01-22');
insert into Rating values( 101, 2001,4, DATE '2011-01-27');
insert into Rating values( 106, 2002,4, null);
insert into Rating values( 103, 2003,2, DATE '2011-01-20');
insert into Rating values( 108, 2003,4, DATE '2011-01-12');
insert into Rating values( 108, 2003,2, DATE '2011-01-30');
insert into Rating values( 101, 2004,3, DATE '2011-01-09');
insert into Rating values( 103, 2005,3, DATE '2011-01-27');
insert into Rating values( 104, 2005,2, DATE '2011-01-22');
insert into Rating values( 108, 2005,4, null);
insert into Rating values( 107, 2006,3, DATE '2011-01-15');
insert into Rating values( 106, 2006,5, DATE '2011-01-19');
insert into Rating values( 107, 2007,5, DATE '2011-01-20');

------------------------------------------------------HW Part B------------------------------------------------------
--Single Table
--1)Find the name of all restaurants offering Indian cuisine
SELECT name FROM Restaurant WHERE cuisine = 'Indian';
--2)Find restaurants which have a 'street' in their address.
SELECT * FROM Restaurant WHERE address LIKE '%St%';

--Join
--2) Find restaurant names that received a rating of 4 or 5, sort them in increasing order of rating.
SELECT name FROM Restaurant r1 LEFT OUTER JOIN Rating r2 ON r1.rID = r2.rID WHERE (r2.stars = 4 OR r2.stars = 5) ORDER BY r2.stars;
--3)Find the names of all restaurants that have no rating.
SELECT name FROM Restaurant r1 LEFT OUTER JOIN Rating r2 ON r1.rID = r2.rID WHERE (r2.stars IS NULL);
--4)Some reviewers didn't provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date.
SELECT name FROM Rating r1 LEFT OUTER JOIN Reviewer r2 ON r1.vID = r2.vID WHERE (r1.ratingDate IS NULL);
--5)For all cases where the same reviewer rated the same restaurant more than once and gave it a higher rating the second time, return the reviewer's name and the name of the restaurant.
SELECT rev1.name, rest1.name FROM rating r1 
INNER JOIN rating r2 ON r1.vid = r2.vid--Join first and second rating
INNER JOIN reviewer rev1 ON r2.vid = rev1.vid--join reviewer
INNER JOIN restaurant rest1 ON r2.rid = rest1.rid--join restaurant
AND r1.rid = r2.rid--same restaurant
WHERE r2.ratingdate > r1.ratingdate--second time reviewing same restaurant
AND r2.stars > r1.stars; --second rating of restaurant is higher        
--6) Find reviewers with no ratings
SELECT rev1.name FROM reviewer rev1
LEFT OUTER JOIN rating rat1 ON rev1.vid = rat1.vid
WHERE rat1.vid IS NULL;
