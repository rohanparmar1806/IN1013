INSERT INTO petEvent VALUES
    ("Fluffy", "2020-10-15", "vet", "antibiotics");

INSERT INTO petPet VALUES
    ("Hammy", "Diane", "hamster", "M", "2010-10-30", NULL);

INSERT INTO petEvent VALUES
    ("Hammy", "2020-10-15", "vet", "antibiotics");

UPDATE petevent SET remark = "5 kittens, 3 female, 2 male" WHERE petname = "Fluffy"
AND eventtype = "litter";

UPDATE petevent SET petname = "Claws" WHERE petname = "Slim" AND eventdate =
"1997-08-03" AND remark = "broken rib";

UPDATE petpet SET death = "2020-09-01" WHERE petname = "Puffball";

DELETE FROM petevent WHERE Retame = "Buffy";

DELETE FROM petpet WHERE petname = "Buffy";