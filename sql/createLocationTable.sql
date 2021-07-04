CREATE TABLE continents (
    id int PRIMARY KEY AUTO_INCREMENT,
    continent varchar(100)
);

INSERT INTO continents(continent) SELECT DISTINCT continent FROM covidCleanedBase;

CREATE TABLE locations (
    id int PRIMARY KEY AUTO_INCREMENT,
    country varchar(100),
    iso_code varchar(20),
    continentId int NOT NULL,
    FOREIGN KEY (continentId) REFERENCES continents(id)
);

INSERT INTO locations(country, iso_code, continentId) 
SELECT A.location, A.iso_code, B.id  FROM covidCleanedBase AS A
JOIN continents AS B
ON B.continent=A.continent
;

