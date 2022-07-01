--------------------------------------------------------
--  DDL for Table TRIPS
--------------------------------------------------------


--drop table bycar;
--drop table byplane;
--drop table bytrain;
--drop table trips

  CREATE TABLE TRIPS 
   (	"TID" INTEGER, 
	"TRIPSTATE" VARCHAR2(10 BYTE), 
	"TRAVELMODE" VARCHAR2(6 BYTE), 
	"FARE" FLOAT(12),
   Primary key(TID)
   ); 
   
   CREATE TABLE ByCar 
   (	TID INTEGER, 
	RentalCompany VARCHAR2(50 BYTE), 
	Mileage Number(4,2),
  Foreign Key (TID) REFERENCES TRIPS(TID)
   );
   
   CREATE TABLE ByTrain
   (	TID INTEGER,
	Type VARCHAR2(50 BYTE), 
  Coach VARCHAR2(30 BYTE),
  TrainSpeed VARCHAR2(10 BYTE),
	NumberofStops NUMBER(12,0),
  Foreign Key (TID) REFERENCES TRIPS(TID)
   );
   
    CREATE TABLE ByPlane
   (	TID INTEGER, 
	Airline VARCHAR2(40 BYTE), 
  Class VARCHAR2(30 BYTE),
  LayoverTime FLOAT(10),
  Foreign Key (TID) REFERENCES TRIPS(TID)
   ); 
   


INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (1,'IL','Car',100);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (2,'CA','Plane',1020);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (3,'MD','Plane',1300);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (4,'MD','Train',568);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (5,'Non-US','Plane',2300);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (6,'IL','Train',256);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (7,'Non-US','Plane',5000);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (8,'NM','Train',13);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (9,'IN','Car',400);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (10,'Non-US','Train',229);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (11,'Non-US','Plane',4500);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (12,'Non-US','Train',258);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (13,'IL','Plane',640);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (14,'Non-US','Train',138);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (15,'IL','Car',380);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (16,'IL','Car',59);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (17,'Non-US','Plane',3700);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (18,'IN','Car',88);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (19,'MD','Plane',600);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (20,'IL','Car',75);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (21,'IL','Car',156);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (22,'Non-US','Train',40);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (23,'IL','Plane',900);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (24,'MD','Train',650);
INSERT INTO Trips (TID,TripState,TravelMode,Fare) VALUES (25,'CA','Car',114);

INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (1,'Budget',19.75);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (9,'Enterprise',19.75);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (15,'Almo',22.5);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (16,'Personal',30);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (18,'Enterprise',22.5);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (20,'Personal',29);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (21,'Personal',27);
INSERT INTO ByCar (TID,RentalCompany,Mileage) VALUES (25,'Enterprise',19.75);


INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (4,'Union Pacific Liner/Express','Chair car',50,4);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (6,'Amtrak/Express','Sleeper',30,3);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (8,'New Mexico Liner /Express','Chair car',50,2);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (10,'Japanese Nippon/SuperExpress','Chair car',70,5);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (12,'Indian Railways/Bullet','Chair car',25,18);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (14,'German Transit System/SuperFast','Sleeper',70,8);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (22,'Indian Railways/SuperFast','Sleeper',5,14);
INSERT INTO ByTrain (TID,Type,Coach,TrainSpeed,NumberOfStops) VALUES (24,'Amtrak/Regular','Sleeper',20,2);

INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (2,'SouthWest','Premium',4);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (3,'American Airlines','Business',3);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (5,'Emirates','Economy',5);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (7,'Lufthansa','Economy',6);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (11,'Swiss Air','Economy',10);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (13,'SouthWest','Premium',2);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (17,'Korean Air','Economy',3);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (19,'American Airlines','Economy',1);
INSERT INTO ByPlane (TID,Airline,Class,LayoverTime) VALUES (23,'Alaska Airlines','Economy',2.5);
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--HW
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM TRIPS;
SELECT * FROM ByCar;
SELECT * FROM ByTrain;
SELECT * FROM ByPlane;
--sql single table
--1)List car rental companies which have a mileage of at least 27 miles/gallon
SELECT RentalCompany, Mileage FROM ByCar WHERE Mileage >=27;
--2)List trip IDs taken on train costing strictly more than $150
SELECT TID FROM Trips WHERE (TravelMode ='Train' AND Fare>150);
--3)Find trip IDs and their fare that are not taken in the US i.e., `Non-US` trips.
SELECT TID,Fare FROM Trips WHERE TripState='Non-US';
--4)Find the cheapest trip taken by each of air, rail, or car.
SELECT MIN(fare) AS "Cheapest Priced Trip" From Trips;

--sql Join
--5)Find the business class plane trip IDs that are greater than $1000.
SELECT bp1.TID FROM ByPlane bp1 LEFT OUTER JOIN TRIPS t2 ON bp1.tID = t2.tID WHERE (bp1.class='Business') AND (t2.fare > 1000);
--6)Find any car trip more expensive than a trip taken on a train in the same state or outside the country.
SELECT t1.tid AS "Train Trip", t1.travelmode AS "Travel Mode 1", t1.fare AS "Train Fare", t2.tid AS "Car Trip", t2.travelmode AS "Travel Mode 2", t2.fare AS "Car Fare", t2.tripstate
FROM Trips t1
INNER JOIN Trips t2 on t1.tripstate = t2.tripstate
INNER JOIN ByTrain train1 ON t1.tid = train1.tid
INNER join ByCar car1 ON t2.tid = car1.tid
WHERE (t1.travelmode = 'Train') AND (t2.travelmode = 'Car')
AND t2.fare > t1.fare;
    
--7)List pairs of distinct car trips that have exactly the same value of mileage
SELECT DISTINCT t1.tid AS "Car Trip 1", t2.tid AS "Car Trip 2"
FROM (Trips t1 INNER JOIN byCar c1 ON t1.tid = c1.tid)
INNER JOIN (Trips t2 INNER JOIN byCar c2 on t2.tid = c2.tid)
ON c1.mileage = c2.mileage
WHERE t1.tid != t2.tid;
--8) List pairs of distinct train trips that in which the speed of the first train trip is lower than the speed of the second train trip
SELECT DISTINCT t1.tid AS "Train Trip 1", train1.trainSpeed AS "Train Speed 1", t2.tid AS "Train Trip 2",Train2.trainSpeed AS "Train Speed 2"
FROM Trips t1
INNER JOIN Trips t2 ON t1.TravelMode = t2.TravelMode
INNER JOIN ByTrain train1 ON t1.tid = train1.tid
INNER JOIN ByTrain train2 ON t2.tid = train2.tid
WHERE (t1.travelMode = 'Train') AND (train1.trainSpeed < train2.trainSpeed);
--9)Find those pair of trips which occur in the same state and with the same mode of travel. List such pairs only once. In other words, given a pair (TID1,TID2) do NOT list (TID2,TID1).
SELECT DISTINCT t1.tid AS "Train Trip 1", t1.tripstate AS "train trip 1 state", t1.travelmode AS "train trip 1 travel mode",
t2.tid AS "Train Trip 2", t2.tripstate AS "Train trip 2 state", t2.travelmode AS "train trip 2 travel mode" 
FROM Trips t1
INNER JOIN Trips t2 ON t1.tripState = t2.tripState
WHERE t1.travelMode = t2.travelMode 
AND t1.tid != t2.tid
AND t1.tid < t2.tid;
--10) Find a state in which trips have been taken by all three modes of transportation: ?train, plane, and car. Note: Think 3-way self-joins with equality and non-equality join criteria.
SELECT DISTINCT t1.tid AS "Trip 1", t1.tripstate AS "Trip 1 State", t1.travelmode AS "Trip 1 Travel Mode",
t2.tid AS "Trip 2", t2.tripstate AS "Trip 2 State", t2.travelmode AS "Trip 2 Travel Mode",
t3.tid AS "Trip 3", t3.tripstate AS "Trip 3 State", t3.travelmode AS "Trip 3 Travel Mode"
FROM Trips t1
INNER JOIN Trips t2 ON t1.tripstate = t2.tripstate
INNER JOIN Trips t3 ON t2.tripstate = t3.tripstate
WHERE (t1.travelMode != t2.travelMode)--make sure transport mode are all different
AND (t2.travelMode != t3.travelMode)
AND (t1.travelMode != t3.travelMode)
AND (t1.tid < t2.tid) AND (t2.tid < t3.tid);