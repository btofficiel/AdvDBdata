LOAD DATA LOCAL
INFILE 'manufacturersDuplicate.csv'
INTO TABLE covid.covidVaccineManufacturersBase
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
