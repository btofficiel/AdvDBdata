CREATE TABLE locationAndVaccine (
    locationId int,
    vaccineId int,
    FOREIGN KEY (locationId) REFERENCES locations(id),
    FOREIGN KEY (vaccineId) REFERENCES vaccines(id)
);

INSERT INTO locationAndVaccine(
    locationId,
    vaccineId
)
SELECT
L.id,
(SELECT id FROM vaccines WHERE vaccine="Johnson&Johnson") AS V
FROM locations AS L
JOIN covidVaccinesByLocation AS CVL
ON L.iso_code=CVL.iso_code
WHERE CVL.vaccines 
LIKE '%Johnson&Johnson%';

INSERT INTO locationAndVaccine(
    locationId,
    vaccineId
)
SELECT
L.id,
(SELECT id FROM vaccines WHERE vaccine="Moderna") AS V
FROM locations AS L
JOIN covidVaccinesByLocation AS CVL
ON L.iso_code=CVL.iso_code
WHERE CVL.vaccines 
LIKE '%Moderna%';

INSERT INTO locationAndVaccine(
    locationId,
    vaccineId
)
SELECT
L.id,
(SELECT id FROM vaccines WHERE vaccine="Oxford/AstraZeneca") AS V
FROM locations AS L
JOIN covidVaccinesByLocation AS CVL
ON L.iso_code=CVL.iso_code
WHERE CVL.vaccines 
LIKE '%Oxford/AstraZeneca%';

INSERT INTO locationAndVaccine(
    locationId,
    vaccineId
)
SELECT
L.id,
(SELECT id FROM vaccines WHERE vaccine="Pfizer/BioNTech") AS V
FROM locations AS L
JOIN covidVaccinesByLocation AS CVL
ON L.iso_code=CVL.iso_code
WHERE CVL.vaccines 
LIKE '%Pfizer/BioNTech%';

INSERT INTO locationAndVaccine(
    locationId,
    vaccineId
)
SELECT
L.id,
(SELECT id FROM vaccines WHERE vaccine="Sinovac") AS V
FROM locations AS L
JOIN covidVaccinesByLocation AS CVL
ON L.iso_code=CVL.iso_code
WHERE CVL.vaccines 
LIKE '%Sinovac%';

INSERT INTO locationAndVaccine(
    locationId,
    vaccineId
)
SELECT
L.id,
(SELECT id FROM vaccines WHERE vaccine="CanSino") AS V
FROM locations AS L
JOIN covidVaccinesByLocation AS CVL
ON L.iso_code=CVL.iso_code
WHERE CVL.vaccines 
LIKE '%CanSino%';

INSERT INTO locationAndVaccine(
    locationId,
    vaccineId
)
SELECT
L.id,
(SELECT id FROM vaccines WHERE vaccine="Sputnik V") AS V
FROM locations AS L
JOIN covidVaccinesByLocation AS CVL
ON L.iso_code=CVL.iso_code
WHERE CVL.vaccines 
LIKE '%Sputnik V%';

INSERT INTO locationAndVaccine(
    locationId,
    vaccineId
)
SELECT
L.id,
(SELECT id FROM vaccines WHERE vaccine="Sinopharm/Beijing") AS V
FROM locations AS L
JOIN covidVaccinesByLocation AS CVL
ON L.iso_code=CVL.iso_code
WHERE CVL.vaccines 
LIKE '%Sinopharm/Beijing%';
