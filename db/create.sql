--
-- create tables
--

DROP TABLE IF EXISTS Products; 
CREATE TABLE Products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT,
  Price NUMERIC(10, 2),
  Kleur_id INTEGER,
  Sluiting_id INTEGER,
  Categorie_id INTEGER
);

DROP TABLE IF EXISTS Kleur; 
CREATE TABLE Kleur (
  k_id INTEGER PRIMARY KEY AUTOINCREMENT,
  color VARCHAR(25)
);

DROP TABLE IF EXISTS Categorie; 
CREATE TABLE  Categorie (
  c_id INTEGER PRIMARY KEY AUTOINCREMENT,
  category VARCHAR(25)
);

DROP TABLE IF EXISTS ProductsMateriaal; 
CREATE TABLE  ProductsMateriaal (
  pm_id INTEGER PRIMARY KEY AUTOINCREMENT,
  Products_id INTEGER,
  Materiaal_id INTEGER
);

DROP TABLE IF EXISTS Materiaal; 
CREATE TABLE Materiaal (
  m_id INTEGER PRIMARY KEY AUTOINCREMENT,
  material VARCHAR(30)
);

DROP TABLE IF EXISTS Sluiting; 
CREATE TABLE Sluiting (
  s_id INTEGER PRIMARY KEY AUTOINCREMENT,
  clasp VARCHAR(30)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into Products (id, name, description, Price, Kleur_id, Sluiting_id, Categorie_id) values 
(1, 'Necklace Gold', 
'Een goude ketting met twee lagen, aan beide lagen zit een rondje. Bij deze ketting zit ook een gewone algemene Sluiting. Staat leuk op alles!', 
15.95, 1, 1, 1);

insert into Products (id, name, description, Price, Kleur_id, Sluiting_id, Categorie_id) values 
(2, 'Necklace Silver', 
'Een zilveren ketting met 1 laag, en rondom de hele ketting zitten leuke rondjes. Ook zit er bij deze ketting een erg simpele Sluiting. Leuk voor de feestdagen!', 
9.95, 2, 1, 1);

insert into Products (id, name, description, Price, Kleur_id, Sluiting_id, Categorie_id) values 
(3, 'Earrings Gold',
'Super leuke gouden oorbellen die helemaal in zijn. De achterkantjes zijn hierbij inbegrepen.', 
13.5, 1, 2, 2);

insert into Products (id, name, description, Price, Kleur_id, Sluiting_id, Categorie_id) values 
(4, 'Earrings Silver', 
'Leuke zilveren oorbellen met erg leuke hangertjes in de vorm van smileys. Je kan deze oorbellen erg simpel sluiten, gewoon de achterkant om je prikker heen klikken en klaar!', 
13.5, 2, 2, 2);

insert into Products (id, name, description, Price, Kleur_id, Sluiting_id, Categorie_id) values 
(5, 'Ring Gold', 
'Gouden ring met de vorm van een krans.', 
14, 1, 2, 3);

insert into Products (id, name, description, Price, Kleur_id, Sluiting_id, Categorie_id) values 
(6, 'Ring Silver',
'Een simpele zilveren ring die overal leuk bij staat!', 
14, 2, 2, 3);

insert into Products (id, name, description, Price, Kleur_id, Sluiting_id, Categorie_id) values 
(7, 'Bracelet Gold', 
'Een gouden armband met een plaatje, op deze armband zit een gewone simpele Sluiting. Je kan hierbij nog de keuze maken om er iets op te laten zetten voor een iets hogere prijs.', 
14, 1, 1, 4);

insert into Products (id, name, description, Price, Kleur_id, Sluiting_id, Categorie_id) values 
(8, 'Bracelet Silver', 
'Een zilveren armband met een gewone simpele Sluiting.', 
14, 2, 1, 4);


INSERT INTO Kleur (k_id, color) values (1, 'Goud');
INSERT INTO Kleur (k_id, color) values (2, 'Zilver');

INSERT INTO Categorie (c_id, category) values (1, 'Necklace');
INSERT INTO Categorie (c_id, category) values (2, 'Earring');
INSERT INTO Categorie (c_id, category) values (3, 'Ring');
INSERT INTO Categorie (c_id, category) values (4, 'Bracelet');

INSERT INTO Materiaal (m_id, material) values (1, 'Echt goud');
INSERT INTO Materiaal (m_id, material) values (2, 'Echt zilver');
INSERT INTO Materiaal (m_id, material) values (3, 'Nep goud');
INSERT INTO Materiaal (m_id, material) values (4, 'Nep zilver');
INSERT INTO Materiaal (m_id, material) values (5, 'verguld goud');

INSERT INTO Sluiting (s_id, clasp) values (1, 'Wel een Sluiting');
INSERT INTO Sluiting (s_id, clasp) values (2, 'Niet een Sluiting');

INSERT INTO ProductsMateriaal (pm_id, Products_id, Materiaal_id) values (1, 1, 2);
INSERT INTO ProductsMateriaal (pm_id, Products_id, Materiaal_id) values (2, 1, 5);
INSERT INTO ProductsMateriaal (pm_id, Products_id, Materiaal_id) values (3, 2, 4);
INSERT INTO ProductsMateriaal (pm_id, Products_id, Materiaal_id) values (4, 3, 3);
INSERT INTO ProductsMateriaal (pm_id, Products_id, Materiaal_id) values (5, 4, 2);
INSERT INTO ProductsMateriaal (pm_id, Products_id, Materiaal_id) values (6, 5, 1);
INSERT INTO ProductsMateriaal (pm_id, Products_id, Materiaal_id) values (7, 6, 4);
INSERT INTO ProductsMateriaal (pm_id, Products_id, Materiaal_id) values (8, 7, 2);
INSERT INTO ProductsMateriaal (pm_id, Products_id, Materiaal_id) values (9, 7, 5);
INSERT INTO ProductsMateriaal (pm_id, Products_id, Materiaal_id) values (10, 8, 2);