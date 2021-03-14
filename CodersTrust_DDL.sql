# Case assignemt for CodersTrust
/*
1) 
Develop the scriptsfor creating  a  database  
and  its tables that can accommodate  the  data coming fromthe 
application you designed in the SD part. Scripts should be delivered 
in two different folders one for DDL queries and the other one for 
DML queries zipped together.
|+---SQL Scripts |  +---DML Queries | +---DDL Queries

2)
Comment your scripts and  document instructions to install  the  required  
software  to execute your script by adding the appropriate information 
in the form of the readme.mdfile.

3) 
Make sure your final product is uploadedon GitHub in a public repository 
so CT could view andtry out  your web solution. Your repository must  follow 
the  naming convention given by CT, so if your group number is 111, 
the web location will be https://github.com/ct-kea-2021-gr111/
*/

#If a database with the same name already exists, then it will be deleted
Drop database if exists CodersTrust;

#Here we create a database called CodersTrust
create database CodersTrust;

#Indicate that we'll use the database that we just created 
Use CodersTrust;

CREATE TABLE Users (
    UserID INT(4) NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Passwords VARCHAR(50),
    Birthday VARCHAR(10),
    Nationality VARCHAR(50),
    Occupation VARCHAR(50),
    E_mail VARCHAR(50),
    PRIMARY KEY (UserID)
);

# alter table, alter the already created database which sets the starting value to 1001
alter table Users auto_increment=1001;

CREATE TABLE Questions (
    QuestionNumber INT(2) NOT NULL AUTO_INCREMENT,
    Question VARCHAR(100),
    CategoryNumber INT(2),
    CategoryName VARCHAR(50),
    PRIMARY KEY (QuestionNumber)
);

alter table Questions auto_increment=1;

CREATE TABLE Area_of_interest (
    UserID INT(4) NOT NULL AUTO_INCREMENT,
    Category1 INT(1),
    Category2 INT(1),
    Category3 INT(1),
    ShowsNo INT(2),
    FOREIGN KEY (UserID)
        REFERENCES Users (UserID)
);

alter table Area_of_interest auto_increment=1001;


