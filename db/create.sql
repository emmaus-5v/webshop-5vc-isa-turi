--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  kleur_id INTEGER,
  sluiting_id INTEGER
);

DROP TABLE IF EXISTS color; 
CREATE TABLE color (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
);

DROP TABLE IF EXISTS category; 
CREATE TABLE  category (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
);

DROP TABLE IF EXISTS productsMaterial; 
CREATE TABLE  productsMaterial (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  Material_id INTEGER
);

DROP TABLE IF EXISTS Material; 
CREATE TABLE Material (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(30)
);

DROP TABLE IF EXISTS sluiting; 
CREATE TABLE sluiting (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(30)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (id, name, description, price, kleur_id, sluiting_id) values 
(1, 'Necklace Gold', 
'Een goude ketting met twee lagen, aan beide lagen zit een rondje. Bij deze ketting zit ook een gewone algemene sluiting. Staat leuk op alles!', 
15.95, 1, 1);

insert into products (id, name, description, price, kleur_id, sluiting_id) values 
(2, 'Necklace Silver', 
'Een zilveren ketting met 1 laag, en rondom de hele ketting zitten leuke rondjes. Ook zit er bij deze ketting een erg simpele sluiting. Leuk voor de feestdagen!', 
9.95, 1, 1);

insert into products (id, name, description, price, kleur_id, sluiting_id) values 
(3, 'Earrings Gold',
'Super leuke gouden oorbellen die helemaal in zijn. De achterkantjes zijn hierbij inbegrepen.', 
13.5, 1, 2);

insert into products (id, name, description, price, kleur_id, sluiting_id) values 
(4, 'Earrings Silver', 
'Leuke zilveren oorbellen met erg leuke hangertjes in de vorm van smileys. Je kan deze oorbellen erg simpel sluiten, gewoon de achterkant om je prikker heen klikken en klaar!', 
13.5, 1, 2);

insert into products (id, name, description, price, kleur_id, sluiting_id) values 
(5, 'Ring Gold', 
'Gouden ring met de vorm van een krans.', 
14, 1, 2);

insert into products (id, name, description, price, kleur_id, sluiting_id) values 
(6, 'Ring Silver',
'Een simpele zilveren ring die overal leuk bij staat!', 
14, 1, 2);

insert into products (id, name, description, price, kleur_id, sluiting_id) values 
(7, 'Bracelet Gold', 
'Een gouden armband met een plaatje, op deze armband zit een gewone simpele sluiting. Je kan hierbij nog de keuze maken om er iets op te laten zetten voor een iets hogere prijs.', 
14, 1, 1);

insert into products (id, name, description, price, kleur_id, sluiting_id) values 
(8, 'Bracelet Silver', 
'Een zilveren armband met een gewone simpele sluiting.', 
14, 1, 1);


INSERT INTO color (id, name) values (1, 'Goud');
INSERT INTO color (id, name) values (2, 'zilver');

INSERT INTO category (id, name) values (1, 'Necklace');
INSERT INTO category (id, name) values (2, 'Earring');
INSERT INTO category (id, name) values (3, 'Ring');
INSERT INTO category (id, name) values (4, 'Bracelet');

INSERT INTO Material (id, name) values (1, 'Echt goud');
INSERT INTO Material (id, name) values (2, 'Echt zilver');
INSERT INTO Material (id, name) values (3, 'Nep goud');
INSERT INTO Material (id, name) values (4, 'Nep zilver');
INSERT INTO Material (id, name) values (5, 'verguld goud');

INSERT INTO sluiting (id, name) values (1, 'met');
INSERT INTO sluiting (id, name) values (2, 'zonder');

INSERT INTO productsMaterial (id, products_id, Material_id) values (1, 1, 2);
INSERT INTO productsMaterial (id, products_id, Material_id) values (2, 1, 5);
INSERT INTO productsMaterial (id, products_id, Material_id) values (3, 2, 4);
INSERT INTO productsMaterial (id, products_id, Material_id) values (4, 3, 3);
INSERT INTO productsMaterial (id, products_id, Material_id) values (5, 4, 2);
INSERT INTO productsMaterial (id, products_id, Material_id) values (6, 5, 1);
INSERT INTO productsMaterial (id, products_id, Material_id) values (7, 6, 4);
INSERT INTO productsMaterial (id, products_id, Material_id) values (8, 7, 2);
INSERT INTO productsMaterial (id, products_id, Material_id) values (9, 7, 5);
INSERT INTO productsMaterial (id, products_id, Material_id) values (10, 8, 2);