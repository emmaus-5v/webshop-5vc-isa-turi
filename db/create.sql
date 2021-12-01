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
  color_id INTEGER
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

insert into products (id, name, description, code, price, color_id) values 
(1, 'Necklace', 
'ketting', '816905633-0', 10.5, 1);

insert into products (id, name, description, code, price, color_id) values 
(2, 'Bracelet', 
'armband', '077030122-3', 11, 1);

insert into products (id, name, description, code, price, color_id) values 
(3, 'Earrings',
'oorbellen', '445924201-X', 13.5, 1);

insert into products (id, name, description, code, price, color_id) values 
(4, 'Ring', 
'ring', '693155505-7', 13.5, 1);

insert into products (id, name, description, code, price, color_id) values 
(5, 'Watch band', 
'horloge band', '686928463-6', 14, 1);

insert into products (id, name, description, code, price, color_id) values 
(6, 'Bedeltje',
'bedeltje', '492662523-7', 14, 1);

insert into products (id, name, description, code, price, color_id) values 
(7, 'Boxes', 
'box', '492662523-7', 14, 1);

insert into products (id, name, description, code, price, color_id) values 
(8, 'Extra', 
'extra', '492662523-7', 14, 1);

insert into products (id, name, description, code, price, color_id) values 
(9, 'Ketting zilver', 
'ketting', '492662523-7', 14, 1);

INSERT INTO color (id, name) values (1, 'Goud');