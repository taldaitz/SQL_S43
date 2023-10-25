CREATE DATABASE formation;

SHOW DATABASES;

USE formation;

SHOW TABLES;

CREATE TABLE contact (
	id int PRIMARY KEY AUTO_INCREMENT,
    lastname varchar(100) NOT NULL,
    firstname varchar(200) NOT NULL DEFAULT 'toto',
    email varchar(200) NULL UNIQUE,
    date_of_birth date NOT NULL
);

INSERT INTO contact (firstname, lastname, date_of_birth)
VALUES ('Aldaitz', 'Thomas', '1985-04-28');

INSERT INTO contact (firstname, lastname)
VALUES ('Robert', 'test');

SELECT * FROM contact;

UPDATE contact
SET lastname = 'Robert'
WHERE id = 1;


DROP TABLE contact;

DESCRIBE contact;

CREATE TABLE product(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price FLOAT NOT NULL,
    stock INT NULL,
    description TEXT
);

CREATE TABLE category (
	id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(255)
);


CREATE TABLE customer (
	id INT PRIMARY KEY AUTO_INCREMENT,
    lastname VARCHAR(255) NOT NULL,
    firstname VARCHAR(255) NOT NULL,
    tel VARCHAR(30) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE company (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    city VARCHAR(255) NOT NULL
);



ALTER TABLE article
	RENAME product;



SHOW TABLES;
DESCRIBE product;
DESCRIBE category;
DESCRIBE customer;
DESCRIBE company;


ALTER TABLE product
	MODIFY stock INT NOT NULL DEFAULT 0;

ALTER TABLE category
	ADD COLUMN creation_date datetime NOT NULL DEFAULT now();
    
ALTER TABLE company
	DROP COLUMN postal_code;


INSERT INTO product (name, price, stock, description)
VALUES ('clavier', 12.50, 15, 'Trés joli clavier AZERTY');

SELECT * FROM product;

INSERT INTO product (name, price, stock, description)
VALUES ('écran', 220.50, 8, 'Trés joli écran 24 pouces'),
	('gourde', 11, 58, 'Gourde de 50cl')
;

INSERT INTO Category (label)
VALUES ('informatique'), ('randonnée');

SELECT * FROM category;
SELECT * FROM company;

INSERT INTO company (name, address, city)
VALUES 
('Dawan', '56 rue bonnel', 'Lyon'),
('Microsoft', '10 avenue Bill Gates', 'San Francisco'),
('Google', '10 avenue du Test', 'Paris')
;

SELECT * FROM customer;

INSERT INTO customer (lastname,firstname,tel,email)
VALUES
  ("Norton","Nadine","07 55 28 46 81","placerat@aol.couk"),
  ("Moody","Holly","04 57 65 17 71","interdum.feugiat.sed@aol.edu"),
  ("Foster","Demetria","01 38 15 96 38","rhoncus.id@yahoo.edu"),
  ("Park","Conan","06 35 58 87 30","fermentum.metus@yahoo.com"),
  ("Clarke","Chloe","07 63 05 73 20","at.fringilla@icloud.com"),
  ("Weber","Brian","08 78 05 82 78","nulla.integer.vulputate@outlook.couk"),
  ("Huffman","Lila","05 71 08 57 73","sit.amet@outlook.ca"),
  ("Cohen","Hector","06 23 38 03 76","et.ultrices@protonmail.ca"),
  ("Bullock","Griffin","09 95 72 82 32","eget.massa.suspendisse@hotmail.edu"),
  ("Bush","Rinah","01 33 04 18 33","dignissim.magna@protonmail.net");
INSERT INTO customer (lastname,firstname,tel,email)
VALUES
  ("Bartlett","Whitney","08 61 75 80 08","vestibulum@yahoo.couk"),
  ("Little","Charissa","06 78 64 99 37","proin@google.edu"),
  ("Case","Kevin","05 55 38 46 38","facilisi.sed@hotmail.couk"),
  ("Snyder","Hop","06 34 23 18 57","quisque@icloud.ca"),
  ("Chase","Hakeem","05 41 73 58 24","lobortis.risus@outlook.edu"),
  ("Mcdowell","Emi","06 76 37 26 44","tincidunt.pede@aol.net"),
  ("Taylor","Aretha","06 75 49 28 17","eleifend@protonmail.edu"),
  ("Byers","Jada","07 67 60 90 52","tristique.senectus@icloud.edu"),
  ("Bryant","Jared","06 84 51 51 15","mi.lacinia.mattis@outlook.net"),
  ("Norris","Beverly","04 75 97 61 34","auctor.ullamcorper@outlook.com");
INSERT INTO customer (lastname,firstname,tel,email)
VALUES
  ("Montoya","Ashely","02 24 17 34 31","vitae@hotmail.net"),
  ("Chen","Nash","09 56 54 41 02","aliquet@outlook.com"),
  ("Hayden","Aspen","01 67 57 16 04","interdum@protonmail.org"),
  ("Talley","Demetria","05 48 02 36 16","tempor@protonmail.net"),
  ("Downs","Phyllis","08 17 87 66 97","risus.odio@protonmail.net"),
  ("Butler","Darryl","04 44 45 88 87","ornare.sagittis@icloud.net"),
  ("Wilcox","Mikayla","09 41 74 75 36","orci.adipiscing@outlook.ca"),
  ("Owens","Quinlan","08 19 66 53 96","mattis@google.edu"),
  ("Zamora","Rashad","09 87 38 67 58","cras@protonmail.couk"),
  ("Vincent","Ariel","05 11 60 23 77","dictum.magna.ut@icloud.com");
INSERT INTO customer (lastname,firstname,tel,email)
VALUES
  ("Shannon","Davis","03 77 25 53 01","aliquet.odio@outlook.edu"),
  ("Stevenson","Kim","04 15 67 04 45","sodales.purus.in@outlook.ca"),
  ("Cook","Jameson","05 51 34 73 44","eu.sem@hotmail.com"),
  ("Lindsey","James","02 37 85 74 42","enim@outlook.edu"),
  ("Santana","Barry","05 32 37 66 86","sem@hotmail.org"),
  ("Garza","Ifeoma","01 45 21 17 83","morbi.quis@protonmail.com"),
  ("Powell","Allen","06 13 58 70 41","donec@icloud.net"),
  ("Becker","Adena","03 85 08 67 87","suspendisse.non@yahoo.net"),
  ("England","Jonas","08 26 25 63 73","sed.dui@icloud.couk"),
  ("Pennington","Whilemina","04 32 64 77 49","venenatis.lacus@hotmail.edu");
INSERT INTO customer (lastname,firstname,tel,email)
VALUES
  ("Hobbs","Martha","02 32 84 34 45","aliquet.proin@protonmail.edu"),
  ("Chaney","Germane","05 77 71 20 60","ultrices.a@hotmail.net"),
  ("Huber","Caesar","01 77 43 89 66","amet@yahoo.ca"),
  ("Ratliff","Charlotte","09 81 48 69 07","augue.eu.tempor@google.net"),
  ("Bullock","Leilani","09 71 85 78 56","faucibus@protonmail.com"),
  ("Newman","Kyle","04 23 40 57 81","scelerisque@hotmail.net"),
  ("Robbins","Rogan","03 31 11 10 95","proin.vel.nisl@outlook.ca"),
  ("Crawford","Yen","08 33 54 18 62","duis.sit.amet@outlook.com"),
  ("Erickson","Timon","02 54 51 25 98","velit.in@outlook.ca"),
  ("Lamb","Briar","07 46 16 57 32","fermentum.fermentum@aol.edu");
INSERT INTO customer (lastname,firstname,tel,email)
VALUES
  ("Suarez","Galvin","06 22 28 71 48","ac.fermentum@aol.edu"),
  ("Gilliam","Brenden","08 52 33 62 14","ut.molestie.in@yahoo.ca"),
  ("Jacobson","Adam","04 74 51 44 25","fusce.mi@yahoo.net"),
  ("Lester","Armand","02 68 85 34 27","sed@outlook.couk"),
  ("Sandoval","Gemma","06 52 49 85 56","a.dui@protonmail.edu"),
  ("Manning","Laith","01 21 57 14 55","ut.sem.nulla@hotmail.com"),
  ("Randall","Travis","08 50 39 36 38","lacus.pede.sagittis@hotmail.org"),
  ("Chandler","Yolanda","02 73 66 16 12","mauris.ut.quam@aol.org"),
  ("Ortega","Reece","08 01 75 18 22","tempor@aol.org"),
  ("Pierce","Honorato","08 48 88 78 23","nec.diam.duis@icloud.org");
INSERT INTO customer (lastname,firstname,tel,email)
VALUES
  ("Cortez","Freya","08 68 76 68 43","nullam.feugiat@protonmail.ca"),
  ("Berg","Kasimir","04 06 44 66 65","donec.nibh@aol.com"),
  ("Everett","Karina","04 82 78 47 81","fermentum.vel@hotmail.net"),
  ("Hendrix","Dominic","04 76 16 15 37","massa.non@yahoo.ca"),
  ("Knight","Adele","09 46 17 16 55","porta@yahoo.net"),
  ("Crawford","Hashim","06 78 35 04 66","ante@icloud.org"),
  ("Reid","Colin","08 55 25 23 66","adipiscing.elit@hotmail.com"),
  ("Carlson","Alexandra","09 92 96 12 41","fringilla.ornare@yahoo.ca"),
  ("Roman","Hyacinth","04 90 56 35 58","iaculis.enim@yahoo.net"),
  ("Bright","Yasir","02 21 61 63 19","id.mollis.nec@aol.org");
INSERT INTO customer (lastname,firstname,tel,email)
VALUES
  ("Fry","Alyssa","03 71 43 72 46","nulla.dignissim@aol.org"),
  ("Fisher","Carl","04 68 14 12 38","quam.quis@icloud.couk"),
  ("Compton","Petra","01 76 91 18 48","mauris.ipsum@icloud.ca"),
  ("Chavez","Steel","08 45 43 58 03","auctor.nunc@icloud.org"),
  ("Hinton","Hu","02 83 12 18 30","libero.morbi@icloud.net"),
  ("Goodwin","Ashely","03 88 35 71 82","nunc.laoreet@protonmail.com"),
  ("Contreras","Reagan","06 38 72 56 78","leo.vivamus.nibh@icloud.ca"),
  ("Huff","Vaughan","05 74 69 42 39","elit.aliquam.auctor@aol.edu"),
  ("Sanders","Gil","04 25 66 23 58","non.magna@hotmail.ca"),
  ("Maldonado","Vaughan","07 64 13 12 31","luctus.ipsum@hotmail.com");
INSERT INTO customer (lastname,firstname,tel,email)
VALUES
  ("Rasmussen","Adara","04 86 19 26 88","nec.diam@hotmail.org"),
  ("Contreras","Rebecca","02 80 27 75 67","vulputate.posuere.vulputate@outlook.ca"),
  ("Berg","Dieter","04 53 89 34 41","tristique@icloud.ca"),
  ("Farley","Mira","02 75 74 67 78","sit.amet@aol.org"),
  ("Allen","Leonard","01 28 54 14 26","mollis.dui@yahoo.net"),
  ("Pope","Jenette","08 14 76 07 45","enim.nunc@protonmail.net"),
  ("Lindsey","Dorothy","08 31 56 37 17","pede.et@google.edu"),
  ("Lindsey","Lucian","03 21 21 28 36","est.congue@google.net"),
  ("Hopkins","Porter","07 92 31 04 76","et@icloud.couk"),
  ("Hull","Madonna","03 84 34 45 01","et.ipsum@hotmail.org");
INSERT INTO customer (lastname,firstname,tel,email)
VALUES
  ("Mccarty","Morgan","04 64 70 77 86","vel.arcu.curabitur@icloud.couk"),
  ("Sullivan","Gareth","02 25 21 85 18","egestas.fusce@outlook.edu"),
  ("Campos","Evelyn","09 38 34 26 65","ultrices.posuere@google.edu"),
  ("Shaw","Gage","08 32 22 81 63","gravida.aliquam.tincidunt@hotmail.edu"),
  ("Benton","Calista","01 23 15 51 05","scelerisque.sed.sapien@yahoo.ca"),
  ("Gilbert","Blake","04 91 11 28 36","eros.nec@outlook.com"),
  ("Singleton","Angela","07 38 95 58 94","tempor.diam.dictum@hotmail.net"),
  ("Norton","Ezekiel","06 56 64 12 43","ullamcorper.velit@yahoo.edu"),
  ("Nguyen","Malachi","03 61 74 13 18","vel@google.edu"),
  ("Humphrey","Alexander","04 31 59 33 67","a.purus@google.net");







UPDATE customer
SET lastname = 'Du Test' 
WHERE id = 10; 

SELECT * FROM customer;

UPDATE customer
SET lastname = firstname
WHERE id = 15;

DELETE FROM customer
WHERE id = 13;


UPDATE customer
SET email = CONCAT(lastname, '.', firstname, '@dawan.fr')
;


INSERT INTO customer (lastname,firstname,tel,email)
VALUES
  ("Aldaitz","Thomas","06 55 28 46 81","taldaitz@dawan.fr");


ALTER TABLE product
	ADD COLUMN total_value float;
    
/*--> Triggers*/

SELECT * FROM product;

UPDATE product
SET total_value = stock * price;


SELECT price * stock
FROM product;


SELECT * FROM customer
WHERE firstname LIKE '%r%'
ORDER BY lastname, firstname DESC
;

SELECT * FROM Product
ORDER BY stock DESC
LIMIT 2
;


SELECT * FROM full_order;

/*-> Le nom, prénom et email des clients dont le prénom est "Julien"*/
SELECT COUNT(*)
FROM full_order
WHERE customer_firstname = 'Julien';


SELECT customer_firstname, COUNT(*) AS nb_of_order
FROM full_order
GROUP BY customer_firstname
	HAVING nb_of_order >= 70
ORDER BY nb_of_order DESC;


/*-> Le nom, prénom et email des clients dont l'email se termine par "@gmail.com"*/
SELECT customer_lastname AS Nom, customer_firstname AS Prénom, customer_email AS Email
FROM full_order
WHERE customer_email LIKE '%@gmail.com';

/*-> toutes les commandes  non payées*/
SELECT * FROM full_order
WHERE is_paid = 0;

/*-> toutes les commandes  payées mais non livré*/
SELECT * FROM full_order
WHERE is_paid = 1
AND shipment_date IS NULL;


/*-> toutes les commandes  livré hors de France*/
SELECT * FROM full_order
WHERE shipment_date IS NOT NULL
AND shipment_country != 'France';


SELECT * FROM full_order
WHERE shipment_date IS NOT NULL
AND shipment_country <> 'France';

/*-> toutes les commandes au montant de plus 8000€ ordonnées du plus grand au plus petit*/
SELECT * FROM full_order
WHERE amount > 8000
ORDER BY amount DESC;

/*-> La commande avec le plus petit montant (une seule)*/
SELECT * FROM full_order
ORDER BY amount LIMIT 1;


/*-> toutes les commandes réglé en Cash en 2022 livré en France dont le montant 
est inférieur à 5000 €**/
SELECT * FROM full_order
WHERE payment_type = 'Cash'
AND payment_date BETWEEN '2022-01-01' AND '2022-12-31'
AND shipment_country = 'France'
AND amount < 5000;


/*-> toutes les commandes payés par carte ou payé aprés le 15/10/2021*/
SELECT * FROM full_order
WHERE payment_type = 'Credit Card'
OR payment_date > '2021-10-15';

/*-> les 3 dernières commandes envoyées en France*/
SELECT * FROM full_order
WHERE shipment_country = 'France'
ORDER BY shipment_date DESC LIMIT 3;

/*-> la somme des commandes non payés*/
SELECT ROUND(SUM(amount), 2), SUM(amount)
FROM full_order
WHERE is_paid = 0;

/*-> la moyenne des montants des commandes payés en cash*/
SELECT AVG(amount)
FROM full_order
WHERE payment_type = 'Cash';


/*-> le nombre de client dont le nom est "La porte"*/
SELECT COUNT(*)
FROM full_order
WHERE customer_lastname = REPLACE('La Porte', ' ', '');



/*-> le nombre de commande payés en chèque sur 2021*/
SELECT COUNT(*)
FROM full_order
WHERE payment_type = 'Check'
AND payment_date LIKE '2021%';



/*-> Le nombre de jour Maximum entre la date de payment et la date de livraison -> DATEDIFF()*/
SELECT MAX(DATEDIFF(payment_date, shipment_date))
FROM full_order;


/*-> Le délai moyen (en jour) de réglement d'une commande*/
SELECT CEIL(AVG(DATEDIFF(payment_date, date)))
FROM full_order
WHERE is_paid = 1
;


/*-> Le total des commandes par type de paiement*/

SELECT payment_type, ROUND(SUM(amount), 2)
FROM full_order
WHERE payment_type IS NOT NULL
GROUP BY payment_type;

/*-> La moyenne des montants des commandes par Pays*/

SELECT shipment_country, ROUND(AVG(amount), 2)
FROM full_order
WHERE shipment_country IS NOT NULL
GROUP BY shipment_country;

/*-> Par année la somme des commandes*/

SELECT YEAR(date) as YearDate, ROUND(SUM(amount), 2) AS YearSum
FROM full_order
GROUP BY YearDate
ORDER BY YearSum DESC;

/*-> Liste des clients (nom, prénom) qui au moins deux commandes*/

SELECT customer_lastname, customer_firstname, COUNT(*) AS nbOrder
FROM full_order
GROUP BY customer_lastname, customer_firstname
HAVING nbOrder >=2;

SELECT * FROM full_order
WHERE customer_firstname = 'Aimée'
AND customer_lastname = 'Bailly';





SELECT id, label FROM category;
SELECT * FROM product;
SELECT * FROM customer;
SELECT * FROM company;

DELETE FROM category
WHERE id = 1;

ALTER TABLE product
	ADD CONSTRAINT FK_Product_Category
    FOREIGN KEY product(category_id)
    REFERENCES category(id)
;


ALTER TABLE customer
	ADD CONSTRAINT FK_Customer_Company
    FOREIGN KEY customer(company_id)
    REFERENCES company(id)
;


ALTER TABLE customer ADD COLUMN company_id int NULL;
ALTER TABLE product ADD COLUMN category_id int NULL;


SELECT cu.id, cu.firstname, cu.lastname, co.city
FROM customer cu
	JOIN company co ON cu.company_id = co.id
;

SELECT ca.label, AVG(pr.price)
FROM category ca 
	JOIN product pr ON pr.category_id = ca.id
GROUP BY ca.label
;



SELECT COUNT(*), co.name
FROM customer cu JOIN company co ON cu.company_id = co.id
GROUP BY co.name
;



SELECT * FROM customer;
SELECT * FROM bill;
SELECT * FROM line_item;
SELECT * FROM product;
SELECT * FROM category;

UPDATE product SET category_id = 1 WHERE id BETWEEN 1 AND 150;
UPDATE product SET category_id = 2 WHERE id BETWEEN 151 AND 300;
UPDATE product SET category_id = 3 WHERE id BETWEEN 301 AND 350;
UPDATE product SET category_id = 4 WHERE id BETWEEN 351 AND 450;
UPDATE product SET category_id = 5 WHERE id BETWEEN 451 AND 650;
UPDATE product SET category_id = 6 WHERE id BETWEEN 651 AND 800;

/*-> Pour chaque client (nom, prénom) remonter le nombre de facture associé*/
SELECT cu.lastname, cu.firstname, COUNT(bi.id)
FROM customer cu
	JOIN bill bi ON cu.id = bi.customer_id
GROUP BY cu.id
ORDER BY cu.lastname, cu.firstname;

/*-> Pour chaque Facture afficher le montant total */

SELECT bi.id, bi.ref, bi.date, SUM(li.quantity * po.unit_price)
FROM bill bi
	JOIN line_item li ON li.bill_id = bi.id
    JOIN product po ON li.product_id = po.id
GROUP BY bi.id
;

/*-> Pour chaque client compter le nombre de produit différents qu'il a commandé*/
SELECT cu.lastname, cu.firstname, COUNT(*), COUNT(po.id)
FROM customer cu
	JOIN bill bi ON cu.id= bi.customer_id
	JOIN line_item li ON li.bill_id = bi.id
	JOIN product po ON li.product_id = po.id
GROUP BY cu.id
    ;

/*-> Pour chaque produit compter le nombre de client différents qu'ils l'ont commandé*/

SELECT po.id, po.name, COUNT(cu.id)
FROM customer cu
	JOIN bill bi ON cu.id= bi.customer_id
	JOIN line_item li ON li.bill_id = bi.id
	JOIN product po ON li.product_id = po.id
GROUP BY po.id
;




USE formation;

SELECT * FROM full_order;

SELECT ROUND(AVG(amount), 2)
FROM full_order;

SELECT SUM(is_paid) FROM full_order;

SELECT COUNT(is_paid)
FROM full_order
WHERE is_paid = 1;

SELECT shipment_country, COUNT(shipment_country) AS nbOrder
FROM full_order
WHERE shipment_country IS NOT NULL 
	AND shipment_country <> 'France'
GROUP BY shipment_country
HAVING nbOrder > 2
;

SELECT customer_lastname, customer_firstname, COUNT(*) AS nbOrder
FROM full_order
GROUP BY customer_lastname, customer_firstname
HAVING nbOrder >= 2
ORDER BY customer_lastname
;

SELECT customer_lastname, customer_firstname
FROM full_order
ORDER BY customer_lastname
;


USE billings;


ALTER TABLE product
	ADD CONSTRAINT FK_Product_Category
    FOREIGN KEY product(category_id)
    REFERENCES category(id);
    
SELECT * FROM product;

SELECT po.name, po.unit_price, ca.label
FROM product po
	JOIN category ca ON ca.id = po.category_id
;

SELECT ca.label, AVG(po.unit_price)
FROM category ca
	JOIN product po ON po.category_id = ca.id
GROUP BY ca.label
;



/*-> le nom, prénom et somme des factures des 3 clients qui ont passé le plus grand nombre 
de facture*/

SELECT 	cu.id, 
		cu.lastname, 
        cu.firstname, 
        SUM(li.quantity * po.unit_price) AS BillSum, 
        COUNT(DISTINCT(bi.id)) AS nbBill
FROM customer cu
	JOIN bill bi ON bi.customer_id = cu.id
	JOIN line_item li ON li.bill_id = bi.id
	JOIN product po ON li.product_id = po.id
GROUP BY cu.id
ORDER BY nbBill DESC
LIMIT 3
;


/*-> le nom, prénom et (somme des factures) des 3 clients qui ont passé les factures 
les plus chers*/


SELECT 	SUM(lis.quantity * pos.unit_price) AS BillSum
FROM customer cus
	JOIN bill bis ON bis.customer_id = cus.id
	JOIN line_item lis ON lis.bill_id = bis.id
	JOIN product pos ON lis.product_id = pos.id
WHERE cus.id = 1080;

SELECT 	cu.id, 
		cu.lastname, 
        cu.firstname, 
        (
			SELECT 	SUM(lis.quantity * pos.unit_price) AS BillSum
			FROM customer cus
				JOIN bill bis ON bis.customer_id = cus.id
				JOIN line_item lis ON lis.bill_id = bis.id
				JOIN product pos ON lis.product_id = pos.id
			WHERE cus.id = cu.id
        ) AS totalBilled,
        bi.id,
        bi.ref,
        SUM(li.quantity * po.unit_price) AS BillSum
        
FROM customer cu
	JOIN bill bi ON bi.customer_id = cu.id
	JOIN line_item li ON li.bill_id = bi.id
	JOIN product po ON li.product_id = po.id
GROUP BY cu.id, bi.id
ORDER BY BillSum DESC
;


/*-> le nom, prénom et somme des factures des 3 clients qui ont  le total des factures 
les plus élevés*/

SELECT 	cu.id, 
		cu.lastname, 
        cu.firstname, 
        SUM(li.quantity * po.unit_price) AS BillSum
FROM customer cu
	JOIN bill bi ON bi.customer_id = cu.id
	JOIN line_item li ON li.bill_id = bi.id
	JOIN product po ON li.product_id = po.id
GROUP BY cu.id
ORDER BY BillSum DESC
LIMIT 3
;


/*-> La moyenne d'age des consomateurs pour chaque catégorie de produit*/

SELECT cat.label, AVG(TIMESTAMPDIFF(year, cu.date_of_birth, CURRENT_DATE()))
FROM customer cu
	JOIN bill bi ON bi.customer_id = cu.id
	JOIN line_item li ON li.bill_id = bi.id
	JOIN product po ON li.product_id = po.id
    JOIN category cat ON po.category_id = cat.id
GROUP BY cat.label
;

SELECT cu.date_of_birth, TIMESTAMPDIFF(year, cu.date_of_birth, CURRENT_DATE())
FROM customer cu;


/*-> pour chaque catégorie de produit la somme des facture payées*/
SELECT cat.label, SUM(li.quantity * po.unit_price)
FROM bill bi
	JOIN line_item li ON li.bill_id = bi.id
	JOIN product po ON li.product_id = po.id
    JOIN category cat ON po.category_id = cat.id
WHERE bi.is_paid = 1
GROUP BY cat.label
;


SELECT * FROM customer
WHERE id IN (
				SELECT 	cu.id
				FROM customer cu
					JOIN bill bi ON bi.customer_id = cu.id
					JOIN line_item li ON li.bill_id = bi.id
					JOIN product po ON li.product_id = po.id
				GROUP BY cu.id
                HAVING COUNT(DISTINCT(bi.id)) >= 5
				ORDER BY COUNT(DISTINCT(bi.id)) DESC
				 )
LIMIT 3;

SELECT 	cu.id, 
		cu.lastname, 
        cu.firstname, 
        SUM(li.quantity * po.unit_price) AS BillSum, 
        COUNT(DISTINCT(bi.id)) AS nbBill
FROM customer cu
	JOIN bill bi ON bi.customer_id = cu.id
	JOIN line_item li ON li.bill_id = bi.id
	JOIN product po ON li.product_id = po.id
GROUP BY cu.id
ORDER BY nbBill DESC
LIMIT 3
;


/*-> Ajouter une colonne sur customer -> is_vip boolean NULL*/
ALTER TABLE customer
	ADD COLUMN is_vip boolean NULL;
    
SELECT * FROM customer;

/*-> Passiez en vip les clients dont la somme des factures dépasse 10000€*/

UPDATE customer
SET customer.is_vip = 1
WHERE customer.id in (
	SELECT * FROM (
		SELECT cu.id
		FROM customer cu
			JOIN bill bi ON bi.customer_id = cu.id
			JOIN line_item li ON li.bill_id = bi.id
			JOIN product po ON li.product_id = po.id
		GROUP BY cu.id
		HAVING SUM(li.quantity * po.unit_price) >= 10000
    ) tempTable
);


SELECT cu.id
FROM customer cu
	JOIN bill bi ON bi.customer_id = cu.id
	JOIN line_item li ON li.bill_id = bi.id
	JOIN product po ON li.product_id = po.id
GROUP BY cu.id
HAVING SUM(li.quantity * po.unit_price) >= 10000
;


CREATE VIEW totalBilled_per_customer_view AS
	SELECT 	cu.id, 
			cu.lastname, 
			cu.firstname, 
			SUM(li.quantity * po.unit_price) AS BillSum
	FROM customer cu
		JOIN bill bi ON bi.customer_id = cu.id
		JOIN line_item li ON li.bill_id = bi.id
		JOIN product po ON li.product_id = po.id
	GROUP BY cu.id
;


SELECT * FROM totalbilled_per_customer_view;
SELECT * FROM bill;


CREATE VIEW valued_bills_view AS
SELECT bi.*, SUM(li.quantity * po.unit_price) AS total
FROM bill bi 
	JOIN line_item li ON li.bill_id = bi.id
	JOIN product po ON li.product_id = po.id
GROUP BY bi.id;

SELECT * FROM valued_bills_view;



SELECT 	cu.id, 
		cu.lastname, 
        cu.firstname, 
        SUM(vbi.total) AS BillSum, 
        COUNT(DISTINCT(vbi.id)) AS nbBill
FROM customer cu
	JOIN valued_bills_view vbi ON cu.id = vbi.customer_id
GROUP BY cu.id
ORDER BY nbBill DESC
LIMIT 3
;


SELECT *, TIMESTAMPDIFF(year, date_of_birth, CURRENT_DATE) AS Age FROM customer;

delimiter //

CREATE PROCEDURE senior_vip_proc()
BEGIN
	UPDATE customer
	SET is_vip = 1 
	WHERE TIMESTAMPDIFF(year, date_of_birth, CURRENT_DATE) >= 60;
END//


CALL senior_vip_proc();

SELECT * FROM bill;

ALTER TABLE bill
	ADD COLUMN payment_date date null;
    
 
 delimiter //
 
CREATE PROCEDURE update_payment_date_proc(IN nbDays int)
BEGIN

UPDATE bill
SET payment_date = DATE_ADD(CURRENT_DATE(), INTERVAL nbDays DAY)
WHERE is_paid = 1
AND payment_date IS NULL;

END//

CALL update_payment_date_proc(-1);

USE billings ;

CREATE TABLE payment (
	id int PRIMARY KEY AUTO_INCREMENT,
    amount float NOT NULL,
    bill_id int NOT NULL
);

ALTER TABLE payment
	ADD CONSTRAINT FK_Bill_Payment
    FOREIGN KEY payment(bill_id)
    REFERENCES bill(id);
 
SELECT * FROM payment;
SELECT * FROM bill WHERE id = 5;

INSERT INTO payment (amount, bill_id)
VALUES(500, 5);

delimiter //

CREATE TRIGGER ins_payment BEFORE INSERT ON payment
FOR EACH ROW
BEGIN
	
    UPDATE bill
    SET is_paid = 1
    WHERE id = NEW.bill_id;
	
END//

