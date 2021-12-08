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
  Meterial_id INTEGER,
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

DROP TABLE IF EXISTS productsMeterial; 
CREATE TABLE  productsMeterial (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  Meterial_id INTEGER
);

DROP TABLE IF EXISTS Meterial; 
CREATE TABLE Meterial (
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

insert into products (id, name, description, price, kleur_id, Meterial_id, sluiting_id) values 
(1, 'Necklace Gold', 
'ketting', 10.5, 1, 3, 1);

insert into products (id, name, description, price, kleur_id, Meterial_id, sluiting_id) values 
(2, 'Necklace Silver', 
'armband', 11, 1, 2, 1);

insert into products (id, name, description, price, kleur_id, Meterial_id, sluiting_id) values 
(3, 'Earrings Gold',
'oorbellen', 13.5, 1, 3, 2);

insert into products (id, name, description, price, kleur_id, Meterial_id, sluiting_id) values 
(4, 'Earrings Silver', 
'ring', 13.5, 1, 4, 2);

insert into products (id, name, description, price, kleur_id, Meterial_id, sluiting_id) values 
(5, 'Ring Gold', 
'horloge band', 14, 1, 1, 2);

insert into products (id, name, description, price, kleur_id, Meterial_id, sluiting_id) values 
(6, 'Ring Silver',
'bedeltje', 14, 1, 1, 2);

insert into products (id, name, description, price, kleur_id, Meterial_id, sluiting_id) values 
(7, 'Bracelet Gold', 
'box', 14, 1, 1, 1);

insert into products (id, name, description, price, kleur_id, Meterial_id, sluiting_id) values 
(8, 'Bracelet Silver', 
'extra', 14, 1, 1, 1);



INSERT INTO color (id, name) values (1, 'Goud');
INSERT INTO color (id, name) values (2, 'zilver');

INSERT INTO category (id, name) values (1, 'Necklace');
INSERT INTO category (id, name) values (2, 'Earring');
INSERT INTO category (id, name) values (3, 'Ring');
INSERT INTO category (id, name) values (4, 'Bracelet');

INSERT INTO Meterial (id, name) values (1, 'Echt goud');
INSERT INTO Meterial (id, name) values (2, 'Echt zilver');
INSERT INTO Meterial (id, name) values (3, 'Nep goud');
INSERT INTO Meterial (id, name) values (4, 'Nep zilver');
INSERT INTO Meterial (id, name) values (5, 'verguld goud');

INSERT INTO sluiting (id, name) values (1, 'met');
INSERT INTO sluiting (id, name) values (2, 'zonder');

INSERT INTO productsMeterial (id, products_id, Meterial_id) values (1, 1, 2);
INSERT INTO productsMeterial (id, products_id, Meterial_id) values (2, 1, 5);
INSERT INTO productsMeterial (id, products_id, Meterial_id) values (3, 2, 4);
INSERT INTO productsMeterial (id, products_id, Meterial_id) values (4, 3, 3);
INSERT INTO productsMeterial (id, products_id, Meterial_id) values (5, 4, 2);
INSERT INTO productsMeterial (id, products_id, Meterial_id) values (6, 5, 1);
INSERT INTO productsMeterial (id, products_id, Meterial_id) values (7, 6, 4);
INSERT INTO productsMeterial (id, products_id, Meterial_id) values (8, 7, 2);
INSERT INTO productsMeterial (id, products_id, Meterial_id) values (9, 7, 5);
INSERT INTO productsMeterial (id, products_id, Meterial_id) values (10, 8, 2);