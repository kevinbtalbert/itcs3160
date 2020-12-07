# Campus Eats Rating System Project

**Project Deliverable for ITCS 3160**

## Project Contents

[Introduction](#introduction)

[Use Case for Rating System](#use_case)

[Business Rules](#business_rules)

[EER Diagram](#eer_diagram)

[Data Dictionary](#data_dictionary)

[MySQL Queries](#mysql)

[Stored Procedure](#stored_procedures)

[Description of Future Work](#future_description)

[MySQL Database Dump](#sql_dump)

[PPT Video](#ppt_video)

<a name="introduction"></a> 

### Introduction
*Team:*  Database Project Group #3

*Team Members:*  Andrew Felipe, Devin Brewbaker, Jackson Blakemore, Jorge Ortiz, and Kevin Talbert

*Project Description:*  For this project our team will be constructing a test database for a campus controlled food delivery service similar to craveoncampus.com.
The goal is to have a robust database that can connect approved drivers to students on UNCC's campus and deliver them food to predetermined locations. 
We will be starting with a database from the "Mavericks" group and improving on it by making it more efficient and by also adding a rating system which 
wasn't currently in the database. We hope that with this database will provide us will valuable information about the eating habits on campus and can help improve
the campus food delivery service. The user orders food. The user pays amount. Restaurant gets the order. Driver gets the location of the order and where to drop it off. Driver picks up food and drops to off to the user. 

<a name="use_case"></a> 

### Use Case for Rating System

![image](Rating-System/Use%20Case%20Diagrams/Use-Case-Diagrams.png)

<a name="business_rules"></a> 

### Business Rules

(1) Administrative access to the database will allow for querying on ratings (including driver and restaurant comments)

(2) Customer access to the database will allow for viewing resturant ratings and driver ratings

(3) Ratings will be an integer value of 1, 2, 3, 4 or 5

(4) Users viewing ratings can see a driver and restaurant minimum, average, and maximum ratings

(5) Ratings can be delivered on a per order basis (i.e. one per order)

(6) Ratings can be given to the restaurant and to the driver, per order

(7) Customer can give comments about the restaurant and/or the driver, up to 500 characters, per order

<a name="eer_diagram"></a> 

### EERD (full database)

[EER Diagram](Rating-System/EER%20Diagram/EER%20Diagram%20(updated).pdf)

<a name="data_dictionary"></a> 

### Data Dictionary (Schema Report)

[Data Dictionary](Rating-System/Data%20Dictionary/DataDictionary_Campus_Eats_Ratings.pdf)

<a name="mysql"></a> 

### MySQL Queries

[MySQL Queries](Rating-System/Use%20Case%20Statements/UseCaseStatements-Rating.sql)

<a name="stored_procedures"></a> 

### Stored Procedures

[Stored Procedures](Rating-System/Stored%20Procedures)

<a name="Stored Procedures"></a> 

### Description of Future Work

<a name="sql_dump"></a> 

### MySQL Database Dump (Import-Export)

[MySQL Database Dump](Rating-System/SQL%20Database%20Dump%20(Import-Export)/Campus_Eats_Ratings_DB.sql)

[Data Storage](Rating-System/SQL%20Database%20Dump%20(Import-Export)/Data%20Store)

<a name="ppt_video"></a> 

### PPT Video (link)




