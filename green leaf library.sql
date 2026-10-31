CREATE DATABaSE green_leaf_library;
use green_leaf_library;
CREATE TABLE BOOK(No INT,Title VARCHAR(50),Author VARCHAR(50),Genre VARCHAR(20),Copies INT,Price DECIMAL(10,2),Added_On DATE);
INSERT INTO BOOK VALUES(1,'The Alchemist','Paulo Coelho','Fiction',4,299.00,'2026-01-15'),
(2,'Wings of fire','A P J Abdul Kalam','Biography',6,250.00,'2026-02-10'),
(3,'Atomic Habits','James Clear','Self-Help',3,499.00,'2026-03-05'),
(4,'Malgudi Days','R K Narayan','Fiction',5,199.00,'2026-04-20'),
(5,'The Story of My Experiments with Truth','M K Gandhi','Biography',2,150.00,'2026-05-12');
insert into book (no,Title,Author) values
(6,'Ponniyan Selvan','Kalki Krishnamurthy');
describe book;
select * from book;
select Title,Price  from book;
select genre,Title,copies from book;
select Title as 'Book Name',Author as 'writer',Price as 'cost' from book;