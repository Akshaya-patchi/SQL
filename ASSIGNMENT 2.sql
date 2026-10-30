CREATE DATABASE spice_garden;
use spice_garden;
create table categories(cat_no INT PRIMARY KEY NOT NULL,cat_name VARCHAR(50) UNIQUE NOT NULL);
INSERT INTO CATEGORIES (CAT_NO,CAT_NAME) VALUES (1,'Starters'),
(2,'Main Course'),
(3,'Desserts');
DROP TABLE MENU_ITEMS;
CREATE TABLE menu_items (
    item_no INT PRIMARY KEY NOT NULL,
    item_name VARCHAR(100) NOT NULL,
    cat_no INT,
    price DECIMAL(10,2) NOT NULL,
    availability VARCHAR(3) DEFAULT 'Yes',
    FOREIGN KEY (cat_no) REFERENCES categories(cat_no)
); 
INSERT INTO menu_items (item_no,item_name,cat_no,price,availability) values
(1,'Chicken 65',1,180.00,'Yes'),
(2,'Veg Spring Roll',1,120.00,default),
(3,'Chicken Biriyani',2,250.00,default),
(4 ,'Paneer Button Masala',2,220.00,'No'),
(5,'Gulab Jamun',3,80.00,default);

-- INSERT INTO categories values(4,'Starters');
-- INSERT INTO menu_items values(6,3,130.00,'No');
-- INSERT INTO menu_items values(6,'Peri Peri',7,150.00,'No');
-- INSERT INTO menu_items values(5,'Shawai',3,220.00,'Yes');
SELECT * FROM menu_items;
SELECT * FROM categories;

ALTER TABLE menu_items ADD COLUMN spice_level varchar(20);
ALTER TABLE menu_items MODIFY COLUMN item_name varchar(80);
ALTER TABLE menu_items RENAME COLUMN availability to in_stock;
ALTER TABLE menu_items DROP COLUMN spice_level;
 
CREATE TABLE offers_test (no INT,offer_level varchar(20));
SELECT * FROM  OFFERS_TEST;
DROP TABLE OFFERS_TEST;

DROP TABLE categories;

