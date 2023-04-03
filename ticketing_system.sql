# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     ticketing_system
# Server version:               10.4.25-MariaDB
# Server OS:                    Win64
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2022-11-07 18:30:52
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'ticketing_system'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "ticketing_system" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "ticketing_system";


#
# Table structure for table 'booking'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "booking" (
  "id" int(100) NOT NULL AUTO_INCREMENT,
  "destination_id" int(50) NOT NULL,
  "booking_date" varchar(30) NOT NULL,
  "journey_date" varchar(30) NOT NULL,
  "train_id" int(30) NOT NULL,
  "seat_numbers" varchar(150) NOT NULL,
  "passenger_id" int(50) NOT NULL,
  "number_of_seat" int(5) NOT NULL,
  "payment_status" varchar(10) NOT NULL,
  "status" varchar(10) NOT NULL,
  "note" varchar(220) NOT NULL,
  PRIMARY KEY ("id")
) AUTO_INCREMENT=158;



#
# Dumping data for table 'booking'
#

LOCK TABLES "booking" WRITE;
/*!40000 ALTER TABLE "booking" DISABLE KEYS;*/
REPLACE INTO "booking" ("id", "destination_id", "booking_date", "journey_date", "train_id", "seat_numbers", "passenger_id", "number_of_seat", "payment_status", "status", "note") VALUES
	(157,11,'08-11-2022','08-11-2022',4,'1,2,3',12,3,'pending','success','note');
/*!40000 ALTER TABLE "booking" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'destinations'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "destinations" (
  "id" int(100) NOT NULL AUTO_INCREMENT,
  "station_from" int(20) NOT NULL,
  "station_to" int(20) NOT NULL,
  "train_id" int(20) NOT NULL,
  "time" varchar(30) NOT NULL,
  "status" varchar(20) NOT NULL,
  "fare" varchar(5) NOT NULL,
  "last_activity" datetime NOT NULL,
  "last_modify_by" int(30) NOT NULL,
  "total_seat" int(5) NOT NULL,
  "seat_range" varchar(10) NOT NULL,
  "type" varchar(6) NOT NULL,
  PRIMARY KEY ("id")
) AUTO_INCREMENT=34;



#
# Dumping data for table 'destinations'
#

LOCK TABLES "destinations" WRITE;
/*!40000 ALTER TABLE "destinations" DISABLE KEYS;*/
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(11,1,2,4,'4:30Am','active','40','2018-09-05 00:00:00',0,5,'1-5','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(12,1,3,9,'4:30Am','active','240','2018-09-05 00:00:00',0,50,'6-56','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(13,1,4,2,'4:30Am','active','280','2018-09-05 00:00:00',0,5,'57-61','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(14,1,5,4,'1:20AM','active','40','2018-09-05 00:00:00',0,20,'1-20','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(15,1,6,2,'1:20AM','active','240','2018-09-05 00:00:00',0,20,'21-40','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(16,1,7,3,'1:20AM','active','280','2018-09-05 00:00:00',0,10,'41-50','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(17,1,8,13,'2:50 AM','active','240','2018-09-05 00:00:00',0,20,'1-20','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(18,1,9,11,'2:50 AM','active','40','2018-09-05 00:00:00',0,50,'21-50','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(23,1,10,9,'10:5AM','active','480','2018-09-05 00:00:00',0,30,'21-50','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(25,2,5,9,'10:5AM','active','350','2018-09-05 00:00:00',0,20,'21-50','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(27,2,1,10,'10:5AM','active','480','2018-09-05 00:00:00',0,3,'1-3','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(28,2,3,10,'10:5AM','active','350','2018-09-05 00:00:00',0,4,'4-8','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(29,2,4,10,'10:5AM','active','900','2018-09-05 00:00:00',0,2,'9-10','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(30,2,6,8,'6.00AM','active','480','2018-09-05 00:00:00',0,2,'9-10','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(32,2,7,12,'12.00AM','active','530','2018-09-05 00:00:00',0,23,'1-23','up');
REPLACE INTO "destinations" ("id", "station_from", "station_to", "train_id", "time", "status", "fare", "last_activity", "last_modify_by", "total_seat", "seat_range", "type") VALUES
	(33,2,8,3,'1.00AM','active','','0000-00-00 00:00:00',0,0,'','');
/*!40000 ALTER TABLE "destinations" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'stations'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "stations" (
  "id" int(30) NOT NULL AUTO_INCREMENT,
  "name" varchar(50) NOT NULL,
  "address" varchar(70) NOT NULL,
  "contact" varchar(20) NOT NULL,
  PRIMARY KEY ("id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'stations'
#

LOCK TABLES "stations" WRITE;
/*!40000 ALTER TABLE "stations" DISABLE KEYS;*/
REPLACE INTO "stations" ("id", "name", "address", "contact") VALUES
	(1,'Bangalore','Electronic City','9876543210');
REPLACE INTO "stations" ("id", "name", "address", "contact") VALUES
	(2,'Bangalore(Mejestics)','Mejestics','9876543210');
REPLACE INTO "stations" ("id", "name", "address", "contact") VALUES
	(3,'Coimbatore(Singanaloor)','Singanaloor','9876543210');
REPLACE INTO "stations" ("id", "name", "address", "contact") VALUES
	(4,'Trichy','Central','9876543210');
REPLACE INTO "stations" ("id", "name", "address", "contact") VALUES
	(6,'Trichy(InterCity)','InterCity','9876543210');
REPLACE INTO "stations" ("id", "name", "address", "contact") VALUES
	(7,'Madurai','Aarapalayam','9876543210');
REPLACE INTO "stations" ("id", "name", "address", "contact") VALUES
	(8,'Madurai','Maatuthavani','9876543210');
REPLACE INTO "stations" ("id", "name", "address", "contact") VALUES
	(9,'Coimbatore','Ganthipuram','9876543210');
REPLACE INTO "stations" ("id", "name", "address", "contact") VALUES
	(10,'Chennai','Koyambedu ','900123123');
/*!40000 ALTER TABLE "stations" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'trains'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "trains" (
  "id" int(10) NOT NULL AUTO_INCREMENT,
  "code" varchar(30) NOT NULL,
  "name" varchar(50) NOT NULL,
  "total_seat" int(5) NOT NULL,
  "type" varchar(20) NOT NULL DEFAULT 'intercity',
  PRIMARY KEY ("id")
) AUTO_INCREMENT=14;



#
# Dumping data for table 'trains'
#

LOCK TABLES "trains" WRITE;
/*!40000 ALTER TABLE "trains" DISABLE KEYS;*/
REPLACE INTO "trains" ("id", "code", "name", "total_seat", "type") VALUES
	(2,'K005','A1 travels',30,'Semi-Sleeper');
REPLACE INTO "trains" ("id", "code", "name", "total_seat", "type") VALUES
	(3,'K004','TransKing',30,'Semi-Sleeper');
REPLACE INTO "trains" ("id", "code", "name", "total_seat", "type") VALUES
	(4,'K003','Jai Guru',30,'Semi-Sleeper');
REPLACE INTO "trains" ("id", "code", "name", "total_seat", "type") VALUES
	(8,'K007','Travell Inn',25,'Sleeper');
REPLACE INTO "trains" ("id", "code", "name", "total_seat", "type") VALUES
	(9,'K006','Garuda',42,'S-Chair');
REPLACE INTO "trains" ("id", "code", "name", "total_seat", "type") VALUES
	(10,'K008','Casada',45,'Sleeper');
REPLACE INTO "trains" ("id", "code", "name", "total_seat", "type") VALUES
	(12,'K001','KPN Travels',35,'S-Chair');
REPLACE INTO "trains" ("id", "code", "name", "total_seat", "type") VALUES
	(13,'K002','Parveen',25,'Sleeper');
/*!40000 ALTER TABLE "trains" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'users'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "users" (
  "id" int(20) NOT NULL AUTO_INCREMENT,
  "name" varchar(150) NOT NULL,
  "email" varchar(50) NOT NULL,
  "phone" varchar(13) NOT NULL,
  "address" varchar(200) NOT NULL,
  "password" varchar(150) NOT NULL,
  "rule" varchar(10) NOT NULL,
  "reg_date" datetime NOT NULL DEFAULT current_timestamp(),
  "last_activity" datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY ("id"),
  UNIQUE KEY "email" ("email")
) AUTO_INCREMENT=15;



#
# Dumping data for table 'users'
#

LOCK TABLES "users" WRITE;
/*!40000 ALTER TABLE "users" DISABLE KEYS;*/
REPLACE INTO "users" ("id", "name", "email", "phone", "address", "password", "rule", "reg_date", "last_activity") VALUES
	(12,'ABC','abc@gmail.com','9123456789','Ghandhipuram,Cbe','123','passenger','2018-09-17 16:38:28','2018-09-17 16:38:28');
REPLACE INTO "users" ("id", "name", "email", "phone", "address", "password", "rule", "reg_date", "last_activity") VALUES
	(13,'xyz','xyz@gmail.com','9988776655','Ukkadam,Cbe','12345','passenger','2018-10-05 19:26:29','2018-10-05 19:26:29');
REPLACE INTO "users" ("id", "name", "email", "phone", "address", "password", "rule", "reg_date", "last_activity") VALUES
	(14,'Admin','admin@gmail.com','1234','Coimbatore','1234','admin','2022-11-07 15:16:02','2022-11-07 15:16:02');
/*!40000 ALTER TABLE "users" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
