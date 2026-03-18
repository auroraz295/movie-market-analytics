#CREO DATABASE
CREATE DATABASE boxoffice;
USE boxoffice;

#CREO TABELLE
CREATE TABLE fact_intgross (
	IDrank INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    n_rank INT NOT NULL,
    year_rank YEAR NOT NULL,
    title VARCHAR(100) NOT NULL,
    worldwide_gross DECIMAL(15,2) NOT NULL,
    domestic_gross DECIMAL(15,2) NULL,
    domestic_perc DECIMAL(5,2) NULL,
    foreign_gross DECIMAL(15,2) NULL,
    foreign_perc DECIMAL(5,2) NULL
);

CREATE TABLE fact_itagross (
IDrank INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
year_rank YEAR NOT NULL,
dates VARCHAR(50) NULL,
title VARCHAR(100) NOT NULL,
italy_gross DECIMAL(15,2) NULL
);

CREATE TABLE dim_movies (
ID_movie VARCHAR(50) PRIMARY KEY NOT NULL,
title VARCHAR(100) NOT NULL,
genre VARCHAR(100) NULL,
distributor VARCHAR(100) NULL
);

CREATE TABLE dim_genres (
ID_genre VARCHAR(50) PRIMARY KEY NOT NULL,
genre VARCHAR(100) NOT NULL
);

CREATE TABLE bridge_moviegenre (
ID_movie VARCHAR(50) NOT NULL,
ID_genre VARCHAR(50) NOT NULL,
title VARCHAR(100) NOT NULL,
genre VARCHAR(100) NOT NULL,
FOREIGN KEY (ID_movie) REFERENCES dim_movies(ID_movie),
FOREIGN KEY (ID_genre) REFERENCES dim_genres(ID_genre)
);

SELECT * FROM fact_intgross;
