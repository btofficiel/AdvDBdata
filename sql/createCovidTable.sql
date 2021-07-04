CREATE TABLE covidCleanedBase (
    iso_code varchar(100),
    continent varchar(100),
    location varchar(100),
    total_cases int,
    total_deaths int,
    total_cases_per_million float,
    new_cases_per_million float,
    total_deaths_per_million float,
    new_deaths_per_million float,
    people_fully_vaccinated int,
    people_fully_vaccinated_per_hundred float,
    gdp_per_capita float
);
