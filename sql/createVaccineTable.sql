CREATE TABLE vaccines (
    id int PRIMARY KEY AUTO_INCREMENT,
    vaccine varchar(120)
);

INSERT INTO vaccines(vaccine) SELECT DISTINCT vaccine FROM covidVaccineManufacturersBase;

