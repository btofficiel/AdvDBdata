CREATE TABLE covidByLocation (
    locationId int PRIMARY KEY,
    total_cases int,
    total_deaths int,
    total_cases_per_million float,
    new_cases_per_million float,
    total_deaths_per_million float,
    new_deaths_per_million float,
    people_fully_vaccinated int,
    people_fully_vaccinated_per_hundred float,
    gdp_per_capita float,
    FOREIGN KEY(locationId) REFERENCES locations(id)
);

INSERT INTO covidByLocation(
    locationId,
    total_cases,
    total_deaths,
    total_cases_per_million,
    new_cases_per_million,
    total_deaths_per_million,
    new_deaths_per_million,
    people_fully_vaccinated,
    people_fully_vaccinated_per_hundred,
    gdp_per_capita
)
SELECT 
B.id,
A.total_cases,
A.total_deaths,
A.total_cases_per_million,
A.new_cases_per_million,
A.total_deaths_per_million,
A.new_deaths_per_million,
A.people_fully_vaccinated,
A.people_fully_vaccinated_per_hundred,
A.gdp_per_capita
FROM
covidCleanedBase AS A
JOIN locations AS B
ON B.iso_code=A.iso_code
;

