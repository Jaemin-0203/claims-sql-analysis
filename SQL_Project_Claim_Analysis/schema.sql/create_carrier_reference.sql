--Create new table carrier_reference for JOIN

CREATE TABLE carrier_reference (
    carrier TEXT PRIMARY KEY,
    carrier_type TEXT,
    contract_priority TEXT);

--Inseting data for above table carrier_reference 
    INSERT INTO carrier_reference
    (carrier, carrier_type, contract_priority)
    VALUES 
    ('PULSE', 'Regional', 'Medium'),
    ('XPO', 'LTL', 'High'),
    ('FEDEX', 'Parcel', 'Low'),
    ('HUBG', 'Intermodal', 'Medium'),
    ('RXO', 'FTL', 'High'),
    ('BNSF', 'Intermodal', 'Medium')
    ('JBJUNT', 'FTL', 'High');

SELECT *
FROM carrier_reference;



