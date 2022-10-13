-- inserting data

INSERT INTO brands(brand_id,brand_name) VALUES(1,'Solgar');
INSERT INTO brands(brand_id,brand_name) VALUES(2,'Prozis');
INSERT INTO brands(brand_id,brand_name) VALUES(3,'Klean');
INSERT INTO brands(brand_id,brand_name) VALUES(4,'Life Extension');
INSERT INTO brands(brand_id,brand_name) VALUES(5,'Biotin');


INSERT INTO categories(category_id,category_name) VALUES(1,'Vitamins');
INSERT INTO categories(category_id,category_name) VALUES(2,'Probiotics');
INSERT INTO categories(category_id,category_name) VALUES(3,'Food');
INSERT INTO categories(category_id,category_name) VALUES(4,'Cosmetic');
INSERT INTO categories(category_id,category_name) VALUES(5,'Supplements');

INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(1,'Vitamin D3 4000IU SOLGAR',1, 1,32.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(2,'Vitamin K2 MK7 1000IU SOLGAR',1, 1,28.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(3,'Vitamin C 1000IU SOLGAR',1, 1,15.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(4,'Vitamin E 1000IU SOLGAR',1, 1,37.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(5,'Complex B SOLGAR',1, 1,21.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(6,'Probiotic 30units SOLGAR',1, 2,23.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(7,'Selenium 30units SOLGAR',1, 5,28.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(8,'Calcium 1000 IU 60units SOLGAR',1, 5,14.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(9,'Magnesium 1000 IU 30units SOLGAR',1, 5,11.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(10,'ColagenPlus SOLGAR',1, 5,14.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(11,'Power-Up 3000 30units SOLGAR',1, 5,25.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(12,'Coconut Shampoo 500ml Biotin',5, 4,8.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(13,'AloeVera Gel 300ml Biotin',5, 4,5.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(14,'Coconut Conditioner 300ml Biotin',5, 4,7.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(15,'Coconut Oil',5, 4,4.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(16,'100% Nature Whey 1kg Prozis',2, 2,32.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(17,'Choco Whey 1kg Prozis',2, 2,34.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(18,'Coffee Whey 1kg Prozis',2, 2,34.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(19,'Strawberry Whey 1kg Prozis',2, 2,34.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(20,'Oatmeal crackers 8 units Klean',3, 2,3.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(21,'Oat Pancakes 4units Klean',3, 2,4.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(22,'Probiotics 60 units LIfe Extension',2, 4,13.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(23,'Vitamin D3 2200UI Life Extension',2, 1,14.99,0);
INSERT INTO products(product_id,product_name,brand_id, category_id,unit_cost,inventory) VALUES(24,'Krill Omega3 (30units) Prozis',2, 5,12.99,0);

INSERT INTO customers(customer_id,age,customer_name, customer_phone,customer_email,customer_password, street_address,city,state, zip,spending_score,voucher_promo) VALUES
(1,24,'Danell Dickerson','934576688','danyell.dickerson@msn.com','hey??','8306 Fieldstone Dr. ','Central Islip','NY','11722',50,1),
(2,37,'Davis Long','934576699','davis.long@msn.com','11111','929 Elmwood Dr. ','Lancaster','NY','14086',94,1),
(3,43,'Lynn Mcmahon','934686699','lynn.mcmahon@msn.com','hahah','9 Surrey St. ','Scarsdale','NY','10583',68,1), 
(4,25,'Tonja Henderson','917776699','tonja.henderson@aol.com','tonja???','82 Alton St. ','Scarsdale','NY','10583',91,1),
(5,27,'Krissy Ochoa','934577776','krissy.ochoa@msn.com','hehheh','80 Queen Ave. ','Port Washington','NY','11050',25,0),
(6,22,'Angella Bridges','914576666','angella.bridges@yahoo.com','angella','8708 Sycamore St','Pittsford','NY','14534',45,0),
(7,45,'Angele Castro','964576666','angele.castro@yahoo.com','opa','15 Acacia Drive ','Palos Verdes Peninsula','CA','90274',90,1),
(8,36,'Venessa Frost','924575666','venessa.frost@msn.com','venessa','621 West School Rd. ','Scarsdale','NY','10583',77,1),
(9,18,'Verna Solis','922576666','verna.solis@yahoo.com','snaaa','7 Lincoln Lane ','Rochester','NY','14606',20,0),
(10,60,'Steve Bender','964576996','steve.bender@gmail.com','steve','908 N. Pennington Dr. ','Scarsdale','NY','10583',45,0),
(11,55,'Aileen Marquez','917576666','aileen.marquez@msn.com','marquez','8899 Newbridge Street ','Torrance','CA','90505',62,1),
(12,41,'Kattie Stevenson','914876766','kattie.stevenson@aol.com','kattie','52 Carson Street ','Helotes','TX','78023',51,1),
(13,42,'Delfina Gilliam','925579616','delfina.gilliam@hotmail.com','delfina','9463 Bayberry Rd. ','West Babylon','NY','11704',43,0),
(14,32,'Venus Hewitt','919579616','venus.hewitt@msn.com','venusvenus','9835 Old Cemetery Lane ','Farmingdale','NY','11735',65,1),
(15,28,'Carter Booth','985579616','carter.booth@msn.com','booth','82 Beech Drive ','Port Chester','NY','10573',60,1),
(16,25,'Christel Cardenas','963579616','christel.cardenas@aol.com','christel','428 S. Swanson Drive ','Long Beach','NY','11561',23,0),
(17,81,'Orval Hunter','915579616','orval.hunter@aol.com','orvalhunterjj?','35 Wagon Drive ','San Angelo','TX','76901',56,1),
(18,29,'Marguerite Berger','966579616','marguerite.berger@aol.com','marguerite','875 Arch Lane ','Fullerton','CA','92831',33,0),
(19,36,'Ivette Warren','925449616','ivette.warren@gmail.com','ivette','8408 Thomas Street ','Franklin Square','NY','11010',45,0);


INSERT INTO suppliers(supplier_id, supplier_name) VALUES
(1,'MexSupplier LDA'),
(2,'MaxVendor LDA'),
(3,'LifeDist'),
(4,'Brigues LDA');

INSERT INTO purchases(purchase_id, supplier_id, product_id,purchase_date,inventory_bought,amount) VALUES
(1,1,1,'2017-08-15',100,1500),
(2,1,2,'2017-08-15',50,750),
(3,1,3,'2017-08-15',50,750),
(4,1,4,'2017-08-15',50,800),
(5,1,5,'2017-08-15',40,600),
(6,2,6,'2017-08-15',50,750),
(7,2,7,'2017-08-15',40,650),
(8,3,8,'2017-08-15',50,500),
(9,2,9,'2017-08-15',100,400),
(10,2,10,'2017-08-15',150,700),
(11,3,11,'2017-08-15',100,500),
(12,1,12,'2017-08-15',75,350),
(13,2,13,'2017-08-15',100,250),
(14,2,14,'2017-08-15',200,300),
(15,3,15,'2017-08-15',100,250),
(16,4,16,'2017-08-15',50,700),
(17,4,17,'2017-08-15',50,700),
(18,4,18,'2017-08-15',50,700),
(19,4,19,'2017-08-15',50,700),
(20,1,20,'2017-08-15',300,250),
(21,1,21,'2017-08-15',200,200),
(22,2,22,'2017-08-15',100,500),
(23,1,23,'2017-08-15',100,600),
(24,4,24,'2017-08-15',50,300);


insert into Payment_Method(Payment_Method_id,Payment_Type) VALUES
(1,'Visa'),
(2,'MBWAY'),
(3,'PayPal');

insert into Company(warehouse_id,company_name,phone,email,website,street,city,state,zip_code) VALUES
(1,'Life Gainer LDA','234789653','lifegainer@gmail.com','lifegainer.com','Warriors Boulevard 45', 'Torrance','CA','90550');

insert into staff(staff_id,staff_name,email,phone,salary,warehouse_id,job,hire_date) VALUES
(1,'Joao Chaves','joaochaves@gmail.com','913455651','2500',1,'Founder/CEO','2017-07-01'),
(2,'Jerald Blackwell','jerald.blackwell@hotmail.com','919876543','1200',1,'Software Developer','2017-07-01'),
(3,'Ruthanne Franco','ruthanne.franco@yahoo.com','919875543','1200',1,'Software Developer','2017-07-01'),
(4,'Marjory Leonard','marjory.leonard@msn.com','969875543','800',1,'Warehouse Operator','2017-08-10'),
(5,'Jimmy Russell','jimmy.russell@hotmail.com','929875543','800',1,'Warehouse Operator','2017-08-10'),
(6,'Berneice Pollard','berneice.pollard@hotmail.com','911875543','800',1,'Delivery Man','2017-08-10');


insert into invoices(invoice_id,customer_id,order_date,date_deadline,shipped_date,warehouse_id,subtotal,item_discount,discount_amount,tax_rate,tax_amount,shipping_cost,amount_net,payment_Method_id) VALUES
(1,1,'2017-09-02','2017-09-05','2017-09-04',1,66.98,0.1,6.7,0.13,7.84,1.99,70.10,1),
(2,2,'2017-10-26','2017-10-29','2017-10-27',1,52.95,0.1,5.3,0.13,6.2,1.99,55.34,1),
(3,3,'2017-12-26','2017-12-29','2017-12-27',1,62.93,0.1,6.3,0.13,7.36,1.99,65.98,1),
(4,4,'2018-01-14','2018-01-17','2018-01-17',1,52.98,0.1,5.3,0.13,6.2,1.99,55.87,2),
(5,5,'2018-01-22','2018-01-25','2018-01-24',1,62.97,0,0,0.13,8.19,1.99,73.16,1),
(6,6,'2018-02-02','2018-02-05','2018-02-04',1,57.98,0,0,0.13,7.53,1.99,67.51,2),
(7,7,'2018-03-04','2018-03-07','2018-03-06',1,73.94,0.1,7.4,0.13,8.65,1.99,77.20,1),
(8,8,'2018-04-27','2018-04-30','2018-04-29',1,32.99,0.1,3.3,0.13,3.85,1.99,35.54,2),
(9,9,'2018-06-27','2018-06-30','2018-06-29',1,39.97,0,0,0.13,5.20,1.99,47.16,1),
(10,10,'2018-07-15','2018-07-18','2018-07-16',1,25.99,0,0,0.13,3.38,1.99,31.36,2),
(11,7,'2018-12-15','2018-12-18','2018-12-16',1,73.94,0.1,7.4,0.13,8.65,1.99,77.20,1),
(12,4,'2019-01-13','2019-01-16','2019-01-15',1,52.98,0.1,5.3,0.13,6.2,1.99,55.87,2),
(13,2,'2019-02-22','2019-02-25','2019-02-25',1,52.95,0.1,5.3,0.13,6.2,1.99,55.34,1),
(14,11,'2019-03-11','2019-03-14','2019-03-12',1,34.99,0.1,5.3,0.13,4.09,1.99,37.57,3),
(15,12,'2019-04-11','2019-04-14','2019-04-12',1,56.97,0.1,5.7,0.13,6.67,1.99,59.92,1),
(16,13,'2019-05-23','2019-05-26','2019-05-25',1,21.97,0,0,0.13,2.86,1.99,26.8,2),
(17,14,'2019-07-23','2019-07-26','2019-07-25',1,39.91,0.1,4.0,0.13,5.19,1.99,47.1,1),
(18,7,'2019-08-15','2018-08-18','2018-08-16',1,73.94,0.1,7.4,0.13,8.65,1.99,77.20,1),
(19,4,'2019-09-07','2019-09-10','2019-09-08',1,52.98,0.1,5.3,0.13,6.2,1.99,55.87,2),
(20,2,'2019-11-22','2019-11-25','2019-11-25',1,52.95,0.1,5.3,0.13,6.2,1.99,55.34,1),
(21,15,'2020-01-22','2020-01-25','2020-01-25',1,56.97,0.1,5.70,0.13,7.41,1.99,66.37,1),
(22,16,'2020-02-14','2020-02-17','2020-02-16',1,23.98,0,0,0.13,3.12,1.99,29.08,2),
(23,17,'2020-03-12','2020-03-15','2020-03-13',1,65.97,0.1,6.6,0.13,7.72,1.99,69.08,3),
(24,18,'2020-03-12','2020-03-15','2020-03-13',1,33.95,0,0,0.13,4.41,1.99,40.35,2),
(25,19,'2020-04-06','2020-04-09','2020-04-08',1,14.95,0,0,0.13,1.94,1.99,18.88,2),
(26,5,'2020-06-22','2020-06-25','2020-06-24',1,62.97,0,0,0.13,8.19,1.99,73.16,1),
(27,6,'2020-08-02','2020-08-05','2020-08-04',1,57.98,0,0,0.13,7.53,1.99,67.51,2),
(28,10,'2020-09-15','2020-09-18','2020-09-16',1,25.99,0,0,0.13,3.38,1.99,31.36,2),
(29,7,'2020-10-15','2020-10-18','2020-10-16',1,73.94,0.1,7.4,0.13,8.65,1.99,77.20,1),
(30,7,'2020-11-15','2020-11-18','2020-11-16',1,73.94,0.1,7.4,0.13,8.65,1.99,77.20,1),
(31,4,'2020-12-07','2020-12-10','2020-12-08',1,52.98,0.1,5.3,0.13,6.2,1.99,55.87,2),
(32,2,'2020-12-26','2020-12-29','2020-12-27',1,52.95,0.1,5.3,0.13,6.2,1.99,55.34,1);

insert into invoices_details(invoice_detail_id,invoice_id,product_id,quantity,unit_cost,amount) VALUES
(1,1,2,1,28.99,28.99),
(2,1,4,1,37.99,37.99),
(3,2,3,2,15.99,15.99),
(4,2,5,1,21.99,21.99),
(5,2,15,3,4.99,14.97),
(6,3,19,1,34.99,34.99),
(7,3,20,5,2.99,14.95),
(8,3,24,1,12.99,12.99),
(9,4,6,1,23.99,23.99),
(10,4,7,1,28.99,28.99),
(11,5,8,2,14.99,29.98),
(12,5,1,1,32.99,32.99),
(13,6,2,2,28.99,57.98),
(14,7,13,4,5.99,23.96),
(15,7,23,1,14.99,14.99),
(16,7,17,1,34.99,34.99),
(17,8,1,1,32.99,32.99),
(18,9,10,1,14.99,14.99),
(19,9,24,2,12.99,24.98),
(20,10,11,1,25.99,25.99),
(21,11,13,4,5.99,23.96),
(22,11,23,1,14.99,14.99),
(23,11,17,1,34.99,34.99),
(24,12,6,1,23.99,23.99),
(25,12,7,1,28.99,28.99),
(26,13,3,2,15.99,15.99),
(27,13,5,1,21.99,21.99),
(28,13,15,3,4.99,14.97),
(29,14,18,1,34.99,34.99),
(30,15,22,2,13.99,27.98),
(31,15,2,1,28.99,28.99),
(32,16,14,1,7.99,7.99),
(33,16,15,1,4.99,4.99),
(34,16,12,1,8.99,8.99),
(35,17,21,4,4.99,19.96),
(36,17,22,5,3.99,19.95),
(37,18,19,1,34.99,34.99),
(38,18,20,5,2.99,14.95),
(39,18,24,1,12.99,12.99),
(40,19,9,2,11.99,23.98),
(41,20,5,3,21.99,65.97),
(42,21,14,3,7.99,23.97),
(43,21,15,2,4.99,9.98),
(44,22,20,5,2.99,14.95);


insert into ratings(rating_id, product_id, customer_id, rating_star) VALUES
(1,3,2,4),
(2,5,2,4),
(3,15,2,5),
(4,6,4,5),
(5,6,4,5),
(6,15,10,3),
(7,13,11,3),
(8,13,7,4),
(9,23,7,5),
(10,17,7,5),
(11,7,19,3);