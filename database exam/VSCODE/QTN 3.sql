--1-TV Series: Represents the television series produced by the TV company.
--Each TV series has attributes such as title, genre, release date, etc.
--2-Episode: Represents individual episodes of a TV series.
--Each episode has attributes like episode number, title, duration, etc.
--3-Actor: Represents the actors who play roles in the TV series. 
--Each actor has attributes such as name, date of birth, gender, etc.
--4-Director: Represents the directors who direct episodes of the TV series. 
--Each director has attributes like name, date of birth, gender, etc.
--5-Transmission: Represents the occasions when an episode is transmitted. 
--Each transmission may have attributes like transmission date, time, channel, etc.
--6-Participation: Represents the participation of actors in TV series. 
--It's a relationship between actors and TV series, indicating which actor participated in which series.
--7-Direction: Represents the direction of episodes by directors. 
--It's a relationship between directors and episodes, indicating which director directed which episode.
CREATE TABLE TVSeries (
    series_id INT PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(50),
    release_date DATE
);

CREATE TABLE Episode (
    episode_id INT PRIMARY KEY,
    series_id INT,
    episode_number INT,
    title VARCHAR(255)
);

CREATE TABLE Actor (
    actor_id INT PRIMARY KEY,
    name VARCHAR(100),
    date_of_birth DATE,
    gender CHAR(1)
);

CREATE TABLE Director (
    director_id INT PRIMARY KEY,
    name VARCHAR(100),
    date_of_birth DATE,
    gender CHAR(1)
);

CREATE TABLE Transmission (
    transmission_id INT PRIMARY KEY,
    episode_id INT,
    transmission_date DATE,
    transmission_time TIME,
    channel VARCHAR(100)
);

CREATE TABLE Participation (
    participation_id INT PRIMARY KEY,
    actor_id INT,
    series_id INT
);

CREATE TABLE Direction (
    direction_id INT PRIMARY KEY,
    director_id INT,
    episode_id INT
);

A primary key is a column or a set of columns that uniquely identifies each record in a table. 
It must contain unique values, and it cannot contain NULL values. 
Every table should have a primary key because it ensures data integrity and 
provides a way to uniquely identify each record.example employee_id(primary Key),first_name
last_name,email

A foreign key is a column or a set of columns in one table that refers to 
the primary key in another table. It establishes a relationship 
between two tables, known as the parent table (where the primary key resides) 
and the child table (where the foreign key resides). Foreign keys ensure 
referential integrity between related tables.
order_id (Primary Key),customer_id (Foreign Key),order_date,total_amount
customer_id (Primary Key),customer_name,email,phone_number






