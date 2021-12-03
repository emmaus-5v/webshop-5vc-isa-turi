--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  kleur_id INTEGER
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

DROP TABLE IF EXISTS productsCategory; 
CREATE TABLE  productsCategory (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  category_id INTEGER
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (id, name, description, code, price, kleur_id) values 
(1, 'Necklace Gold', 
'ketting', '816905633-0', 10.5, 1);

insert into products (id, name, description, code, price, kleur_id) values 
(2, 'Necklace Silver', 
'armband', '077030122-3', 11, 2);

insert into products (id, name, description, code, price, kleur_id) values 
(3, 'Earrings Gold',
'oorbellen', '445924201-X', 13.5, 1);

insert into products (id, name, description, code, price, kleur_id) values 
(4, 'Earrings Silver', 
'ring', '693155505-7', 13.5, 2);

insert into products (id, name, description, code, price, kleur_id) values 
(5, 'Ring Gold', 
'horloge band', '686928463-6', 14, 1);

insert into products (id, name, description, code, price, kleur_id) values 
(6, 'Ring Silver',
'bedeltje', '492662523-7', 14, 2);

insert into products (id, name, description, code, price, kleur_id) values 
(7, 'Bracelet Gold', 
'box', '492662523-7', 14, 1);

insert into products (id, name, description, code, price, kleur_id) values 
(8, 'Bracelet Silver', 
'extra', '492662523-7', 14, 2);


INSERT INTO color (id, name) values (1, 'Goud');
INSERT INTO color (id, name) values (2, 'zilver')