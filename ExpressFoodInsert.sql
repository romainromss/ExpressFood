-- Insertion de users
INSERT INTO ExpressFood.users (id, role, name, firstname, email, password) VALUES
  (1, 'clients', 'Kevin', 'Knapp', 'tempor.augue@neceuismod.edu', 'MTE67TML9RD'),
  (2, 'clients', 'Arden', 'Riley', 'Cras.interdum.Nunc@metusAeneansed.net', 'FBJ85KRJ2WF'),
  (3, 'clients', 'Deanna', 'Garrett', 'amet@sedsapienNunc.com', 'UQM04GPT9AA'),
  (4, 'clients', 'Castor', 'Booth', 'eu@vitaedolorDonec.edu', 'IIS87YPE3IK'),
  (5, 'clients', 'Hedwig', 'Griffith', 'eget@Maecenasiaculisaliquet.edu', 'UXK06CPD0YT'),
  (6, 'clients', 'Kevin', 'Harvey', 'tellus.sem.mollis@sem.org', 'VKL57TSV7VN'),
  (7, 'clients', 'Zeph', 'Austin', 'at.sem.molestie@anteiaculis.net', 'LWD33WNW0FS'),
  (8, 'clients', 'Anastasia', 'Chandler', 'leo.Vivamus@euismod.edu', 'DWT92HQV9UB'),
  (9, 'clients', 'Wang', 'Dillon', 'sit.amet.luctus@ridiculusmus.ca', 'HDE20WHZ0ZK'),
  (10, 'manager', 'Arthur', 'Campos', 'augue@vitaeeratvel.com', 'KOR17ZRZ9HU');


-- Insertion des adresses
INSERT INTO ExpressFood.addresses (number, street, city, zipcode) VALUES
  (15, 'Avenue de Cras', 'Milanese', '75000'),
  (45, 'Route de Quisque', 'Hamburg', '75001'),
  (12, 'Impasse de Magna', 'Giove', '75003'),
  (78, 'Rue de Semper', 'Placanica', '75009'),
  (103, 'Rue de LEctus', 'Paris', '75200'),
  (502, 'Rue de Lorem', 'Bordeaux', '75800'),
  (89, 'Boulevard Ipsum', 'San pedro', '75450'),
  (4,'Dictum Street','Fürth','96570'),
  (76,'Tincidunt Road','Barmouth','81955'),
  (10,'Lectus. Av.','Boechout','73870'),
  (55,'Aliquam Avenue','Zandvoorde','41664'),
  (56, 'Impasse Pelarco', 'Lyon', '75801');


-- Insertion des livreurs
INSERT INTO ExpressFood.delivery_men (id, name, firstname, lat, lng, email, password) VALUES
  (1, 'Brown', 'Hiram', 22.11176000, -91.34506000, 'accumsan.interdum@porttitoreros.com', 'ALR32BYH9MF'),
  (2, 'Petersen', 'Vaughan', 5.61502000, 77.00027000, 'convallis.erat.eget@adipiscingenim.net', 'HPY04UME7XY'),
  (3, 'Vaughn', 'Nola', 51.17250000, -32.19595000, 'montes.nascetur.ridiculus@intempuseu.org', 'YYS58MAZ5RR'),
  (4, 'Kirkland', 'Hanae', -25.76016000, -99.99999999, 'facilisis.lorem@feugiat.co.uk', 'GVX44TEH9AN'),
  (5, 'Richardson', 'Malik', 40.95644000, 29.27647000, 'Maecenas.libero@pedesagittisaugue.ca', 'KHX14WCX4VQ'),
  (6, 'Justice', 'Scarlett', 33.68732000, 99.99999999, 'scelerisque.scelerisque.dui@purusmauris.net', 'WSV33UZO1YO'),
  (7, 'Holloway', 'Buckminster', 0.95663000, -58.62412000, 'metus.Aenean.sed@sed.co.uk', 'VVO51IYG5AZ'),
  (8, 'Tucker', 'Willow', -4.56205000, 53.14949000, 'Vestibulum@eueleifend.org', 'UQS02ZGQ0FS'),
  (9, 'Mooney', 'Alexis', -37.66161000, -99.99999999, 'tellus.Aenean@lorem.edu', 'OVA04PTR8WR'),
  (10, 'Horton', 'Kitra', -36.56636000, 99.99999999, 'ac.mi@Etiamimperdiet.net', 'QJT60RUU4RO');

-- Insertion de orders
INSERT INTO ExpressFood.orders (id, users_id, address_id, created_at, end_at) VALUES
  (1, 1, 1, '2017-12-10 19:14:28', null),
  (2, 2, 2, '2017-12-10 19:17:40', '2017-12-10 19:40:48'),
  (3, 3, 3, '2017-12-11 19:00:53', '2017-12-11 19:16:02'),
  (4, 4, 4, '2017-12-11 12:15:09', '2017-12-11 12:27:17'),
  (5, 5, 5, '2017-12-11 13:10:28', null),
  (6, 6, 7, '2017-12-12 16:15:56', null),
  (7, 7, 8, '2017-12-12 13:02:13', '2017-12-12 13:18:18'),
  (8, 8, 12, '2017-12-12 16:30:52', '2017-12-12 16:39:53'),
  (9, 1, 1, '2017-12-12 20:06:24', '2017-12-12 20:19:36');

-- Insertion de deliveries
INSERT INTO ExpressFood.deliveries (id, orders_id, delivery_men_id, status, date_of_assumption, date_of_delivery, lat, lng) VALUES
  (1, 1, 1, 'in_delivery', '2017-12-11 19:24:44', null, -17.65585000, -24.05240000),
  (2, 2, 1, 'delivery', '2017-12-10 19:23:26', '2017-12-10 19:38:53', 27.85371000, -98.19017000),
  (3, 3, 2, 'delivery', '2017-12-11 19:02:42', '2017-12-11 19:15:53', 54.58101000, 71.82100000),
  (4, 4, 3, 'delivery', '2017-12-11 12:17:09', '2017-12-11 12:27:37', 3.59708000, 53.21954000),
  (5, 5, 4, 'problem', '2017-12-11 13:11:29', null, -23.78123000, 64.73270000),
  (6, 6, 5, 'in_delivery', '2017-12-12 16:15:10', null, -29.89513000, 19.66164000),
  (8, 7, 5, 'delivery', '2017-12-12 13:02:25', '2017-12-12 13:17:36', -0.59517000, -64.73277000),
  (9, 8, 6, 'delivery', '2017-12-12 16:34:31', '2017-12-12 16:38:48', 52.06176000, 11.28871000),
  (10, 9, 3, 'delivery', '2017-12-12 20:07:52', '2017-12-12 20:17:03', 38.02947000, -69.25398000);

-- Insertion de products
INSERT INTO ExpressFood.products (id, orders_id, quantity, label, type, ingredients, production_date, availability_date, price) VALUES
  (1, 2, 2, 'steak avec frites sauce poivres', 'plat', 'steak, frites', '2017-12-09 11:52:12', '2017-12-09 12:57:09', 14.00),
  (2, 1, 1, 'blanquette de veau', 'plat', 'veau, légumes', '2017-12-09 11:52:33', '2017-12-09 12:57:55', 10.00),
  (3, 2, 2, 'mousse au chocolat', 'dessert', 'chocolat', '2017-12-09 10:43:03', '2017-12-09 11:43:25', 12.00),
  (4, 1, 1, 'millefeuille', 'dessert', 'vanille, crème patissière', '2017-12-09 10:46:14', '2017-12-09 11:43:34', 6.00),
  (6, 3, 1, 'steak avec frites sauce poivres', 'plat', 'steak, frites', '2017-12-09 11:52:12', '2017-12-09 12:57:09', 7.00),
  (7, 3, 1, 'blanquette de veau', 'plat', 'veau, légumes', '2017-12-09 11:52:33', '2017-12-09 12:57:55', 10.00),
  (8, 3, 1, 'mousse au chocolat', 'dessert', 'chocolat', '2017-12-09 10:43:03', '2017-12-09 11:43:25', 6.00),
  (9, 3, 1, 'millefeuille', 'dessert', 'vanille, crème patissière', '2017-12-09 10:46:14', '2017-12-09 11:43:34', 6.00),
  (10, 4, 2, 'Magret de canard', 'plat', 'canard', '2017-12-10 10:12:39', '2017-12-10 11:12:52', 16.00),
  (11, 4, 2, 'Côte de boeuf', 'palt', 'boeuf, haricots', '2017-12-10 10:30:21', '2017-12-10 11:24:41', 18.00),
  (12, 4, 2, 'crême brulée', 'dessert', 'crème, oeuf, lait', '2017-12-10 10:45:11', '2017-12-10 11:51:35', 8.00),
  (13, 4, 2, 'crumble aux pommes', 'dessert', 'pomme, beurre, sucre', '2017-12-10 10:50:03', '2017-12-10 11:54:15', 10.00),
  (19, 5, 2, 'couscous', 'plat', 'legumes, agneau, poulet, merguez, semoule', '2017-12-11 10:44:04', '2017-12-11 11:56:38', 20.00),
  (20, 6, 1, 'moules, frites', 'plat', 'moules , frites, salades', '2017-12-11 10:47:10', '2017-12-11 11:54:49', 7.00),
  (21, 5, 2, 'îles flottante', 'dessert', 'oeufs, lait, vanille ', '2017-12-11 11:44:23', '2017-12-11 11:59:24', 10.00),
  (22, 6, 1, 'tiramisu', 'dessert', 'mascarpone, sucre, sucre vanillé', '2017-12-11 11:50:30', '2017-12-11 11:59:45', 4.00),
  (23, 7, 1, 'gigot d''agneau', 'plat', 'agneau, ail, pommes de terres', '2017-12-12 09:46:01', '2017-12-12 10:46:11', 9.00),
  (24, 7, 1, 'mini raclette', 'plat', 'pommes de terres, fromages, charcuterie', '2017-12-12 09:50:16', '2017-12-12 10:49:24', 6.00),
  (25, 8, 1, 'tarte aux fraises', 'dessert', 'farine, beurre, sucre, fraises', '2017-12-12 10:46:38', '2017-12-12 11:46:48', 5.00),
  (26, 8, 1, 'crêpes', 'dessert', 'contient de l''alcool, rhum,  huile, sucre, lait, oeufs', '2017-12-12 10:50:53', '2017-12-12 11:48:59', 4.00),
  (27, 9, 2, 'gigot d''agneau', 'plat', 'agneau, ail, pommes de terres', '2017-12-12 09:46:01', '2017-12-12 10:46:11', 18.00),
  (28, 9, 2, 'tarte aux fraises', 'dessert', 'farine, beurre, sucre, fraises', '2017-12-12 10:46:38', '2017-12-12 11:46:48', 10.00);

-- Insertion de stocks
INSERT INTO ExpressFood.stocks (id, delivery_men_id, users_id, owners, quantity, meal1, dessert1, meal2, dessert2, date_of_storage) VALUES
 (1, null, 1, 'clients', 2, '1', '1', '0', '0', '2017-12-09 12:58:11'),
 (2, null, 2, 'clients', 4, '0', '0', '2', '2', '2017-12-09 12:58:13'),
 (3, null, 3, 'clients', 4, '1', '1', '1', '1', '2017-12-09 12:59:38'),
 (4, null, 4, 'clients', 8, '2', '2', '2', '2', '2017-12-10 12:00:18'),
 (5, null, 5, 'clients', 4, '2', '2', '0', '0', '2017-12-11 12:05:42'),
 (6, null, 6, 'clients', 2, '0', '0', '1', '1', '2017-12-11 12:04:40'),
 (7, null, 7, 'clients', 2, '1', '0', '1', '0', '2017-12-12 12:00:33'),
 (8, null, 8, 'clients', 2, '0', '1', '0', '1', '2017-12-12 12:06:50'),
 (9, 1, null, 'delivery_men', 34, '9', '9', '8', '8', '2017-12-09 12:58:11'),
 (10, 2, null, 'delivery_men', 36, '9', '9', '9', '9', '2017-12-09 12:58:13'),
 (11, 3, null, 'delivery_men', 30, '8', '8', '6', '6', '2017-12-09 12:59:38'),
 (12, 4, null, 'delivery_men', 36, '8', '8', '10', '10', '2017-12-10 12:00:18'),
 (13, 5, null, 'delivery_men', 35, '8', '10', '9', '8', '2017-12-11 12:05:42'),
 (14, 6, null, 'delivery_men', 38, '10', '9', '10', '9', '2017-12-11 12:04:40'),
 (15, null, 1, 'clients', 4, '2', '2', '0', '0', '2017-12-12 12:06:50'),
 (16, 7, null, 'delivery_men', 40, '10', '10', '10', '10', '2017-12-10 12:00:18'),
 (17, 8, null, 'delivery_men', 40, '10', '10', '10', '10', '2017-12-10 12:00:18'),
 (18, 9, null, 'delivery_men', 40, '10', '10', '10', '10', '2017-12-11 12:04:40'),
 (19, 10, null, 'delivery_men', 40, '10', '10', '10', '10', '2017-12-11 12:04:40');
