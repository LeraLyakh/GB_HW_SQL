INSERT INTO category VALUES
	(1, 'минеральная'),
	(2, 'высшая');
	
INSERT INTO products (name, still, vol, category_id ) VALUES 
	('JEVEA CRYSTALNAYA ЖИВЕЯ КРИСТАЛЬНАЯ НЕГАЗИРОВАННАЯ МИНЕРАЛЬНАЯ ПРИРОДНАЯ СТОЛОВАЯ ПИТЬЕВАЯ 0,33 ЛИТРА', 1, 0.33, 1),
	('JEVEA CRYSTALNAYA ЖИВЕЯ КРИСТАЛЬНАЯ ГАЗИРОВАННАЯ МИНЕРАЛЬНАЯ ПРИРОДНАЯ СТОЛОВАЯ ПИТЬЕВАЯ 0,33 ЛИТРА', 0, 0.33, 1),
	('JEVEA CRYSTALNAYA ЖИВЕЯ КРИСТАЛЬНАЯ НЕГАЗИРОВАННАЯ МИНЕРАЛЬНАЯ ПРИРОДНАЯ СТОЛОВАЯ ПИТЬЕВАЯ 0,5 ЛИТРА', 1, 0.5, 1),
	('JEVEA CRYSTALNAYA ЖИВЕЯ КРИСТАЛЬНАЯ ГАЗИРОВАННАЯ МИНЕРАЛЬНАЯ ПРИРОДНАЯ СТОЛОВАЯ ПИТЬЕВАЯ 0,5 ЛИТРА', 0, 0.5, 1),
	('JEVEA CRYSTALNAYA ЖИВЕЯ КРИСТАЛЬНАЯ НЕГАЗИРОВАННАЯ МИНЕРАЛЬНАЯ ПРИРОДНАЯ СТОЛОВАЯ ПИТЬЕВАЯ 1 ЛИТР', 1, 1, 1),
	('JEVEA CRYSTALNAYA ЖИВЕЯ КРИСТАЛЬНАЯ ГАЗИРОВАННАЯ МИНЕРАЛЬНАЯ ПРИРОДНАЯ СТОЛОВАЯ ПИТЬЕВАЯ 1 ЛИТР', 0, 1, 1),
	('JEVEA CRYSTALNAYA ЖИВЕЯ КРИСТАЛЬНАЯ 19 ЛИТРОВ МИНЕРАЛЬНАЯ ПРИРОДНАЯ СТОЛОВАЯ ПИТЬЕВАЯ в многоразовой таре', 1, 19, 1),
	('JEVEA CRYSTALNAYA ЖИВЕЯ КРИСТАЛЬНАЯ 19 ЛИТРОВ МИНЕРАЛЬНАЯ ПРИРОДНАЯ СТОЛОВАЯ ПИТЬЕВАЯ в одноразовой таре', 1, 19, 1),
	('JEVEA ЖИВЕЯ 19 ЛИТРОВ ПИТЬЕВАЯ ВОДА в многоразовой таре', 1, 19, 2),
	('JEVEA ЖИВЕЯ 19 ЛИТРОВ ПИТЬЕВАЯ ВОДА в одноразовой таре', 1, 19, 2);
	
INSERT INTO jevea.storehouses (address) VALUES
	 ('г.Москва, поселение Мосрентген, Проектируемый 134-й проезд, корп.28(МКАД 43км, корп.28)'),
	 ('г. Иваново, ул. Станкостроителей, д. 12, офис 5-Б'),
	 ('г. Тольятти, ул. Спортивная, д. 4, ТД "Малина"');
	 
INSERT INTO jevea.availability (id_item,num,reserved,id_storehouse) VALUES
	 (1,23890,0,1),
	 (2,45611,0,2),
	 (3,2836,0,2),
	 (4,10528,0,1),
	 (5,2641,0,2),
	 (6,8916,0,3),
	 (7,25349,0,2),
	 (8,8122,0,1),
	 (9,2067,0,3),
	 (10,48024,0,2);
	 
INSERT INTO jevea.users (email,user_password) VALUES
	 ('gerardo.harvey@example.com','7cf30437af85a985d85a'),
	 ('zane26@example.net','1571bcc418c26b7ea1ec'),
	 ('pkuhn@example.net','717e211a9c3a71dfe58c'),
	 ('jessie18@example.com','b760fa4d487e65897073'),
	 ('gussie33@example.net','5c32a529d49e71f056c0'),
	 ('emard.kristopher@example.org','e524472c607baea5967e'),
	 ('lo''keefe@example.org','b458465998ae742daace'),
	 ('fwolff@example.org','b785b55b627569edeae9'),
	 ('irenner@example.org','f1e3d3e6df9fdf1c090f'),
	 ('richie.keeling@example.org','2952052e65070bfdc4d3');
	 
INSERT INTO addresses VALUES 
	(1,9,'91786 Jarvis Plains\nSashachester, ME 50587-0198'),
	(2,2,'0870 Lowe Cliff Apt. 013\nNorth Todchester, WI 95035'),
	(3,4,'031 Murray Mills Suite 476\nNorth Janaberg, LA 48085-7244'),
	(4,7,'28317 Nitzsche Loaf\nPort Dixieberg, NC 94156-3299'),
	(5,7,'38921 Maxime Hill Apt. 841\nNorth Dora, MA 49590'),
	(6,6,'83634 Collier Mount Suite 420\nEast Brooklyn, CT 04838-4757'),
	(7,9,'03038 Skiles Rest Suite 892\nDarrickview, MA 13647-2958'),
	(8,4,'356 Bartell Flats Suite 952\nNew Allison, RI 05940'),
	(9,7,'4384 Tate Knoll\nTrompchester, CT 72949'),
	(10,5,'694 Tyson Spur\nHagenesport, CA 14740-9727'),
	(11,1,'50013 Rupert Pass Apt. 461\nProhaskafort, KS 69239-6081'),
	(12,3,'272 Lakin Gateway Apt. 762\nSouth Emilefort, IL 14832'),
	(13,10,'9975 Kuhn Prairie Apt. 194\nPort Caroline, VT 88007'),
	(14,8,'9830 Pagac Springs Apt. 795\nAuerfort, PA 56829-8657');

INSERT INTO users_info VALUES 
	(1,'Albin','Roberts',89615223687,11),
	(2,'Allie','Howe',89749278617,2),
	(3,'Effie','Mante',89928465851,12),
	(4,'Douglas','Gerhold',89080924352,3),
	(5,'Theodore','Rempel',89024438903,10),
	(6,'Leonardo','Bosco',89629709994,6),
	(7,'Brody','Schmitt',89171190869,4),
	(8,'Eryn','Schulist',89441285775,14),
	(9,'Torrance','Beer',89636791745,1),
	(10,'Ahmad','Stamm',89806604715,13);

INSERT INTO orders VALUES -- понимаю, что даты нереалистичные
-- нет времени пока разобраться как генерировать диапазон
	(1,2,7,'1984-02-26 00:00:00','2020-07-19 00:00:00'),
	(2,7,6,'1975-10-01 00:00:00','2004-12-30 00:00:00'),
	(3,3,11,'1987-04-13 00:00:00','1982-07-28 00:00:00'),
	(4,10,12,'1989-05-18 00:00:00','1977-05-30 00:00:00'),
	(5,7,1,'1985-04-04 00:00:00','2012-02-21 00:00:00'),
	(6,2,5,'1971-12-08 00:00:00','1977-04-29 00:00:00'),
	(7,9,13,'1983-02-24 00:00:00','1983-12-09 00:00:00'),
	(8,10,4,'2015-07-02 00:00:00','2005-12-28 00:00:00'),
	(9,3,13,'1992-11-14 00:00:00','2001-01-07 00:00:00'),
	(10,5,8,'1996-09-08 00:00:00','1977-08-08 00:00:00');

INSERT INTO photos VALUES 
 	(1,1,'qemxy.jpg',4733),
	(2,2,'qzzkt.jpg',855876967),
	(3,2,'bhlyx.jpg',81631749),
	(4,10,'inssv.jpg',0),
	(5,10,'tflcw.jpg',750376),
	(6,8,'nqdja.jpg',0),
	(7,7,'gqqos.jpg',9030175),
	(8,3,'pbmdx.jpg',934),
	(9,10,'ftfdv.jpg',21),
	(10,5,'jhcvh.jpg',6),
	(11,1,'hvxod.jpg',3620),
	(12,6,'zeojp.jpg',4660466),
	(13,8,'balsf.jpg',66889440),
	(14,4,'gbyhx.jpg',43),
	(15,7,'ifgiq.jpg',5),
	(16,6,'cienz.jpg',26837),
	(17,6,'vsvep.jpg',6),
	(18,1,'cfcfn.jpg',67897),
	(19,4,'hwung.jpg',287266),
	(20,5,'awfuu.jpg',9889),
	(21,2,'vqbdj.jpg',347005340),
	(22,8,'fxxxl.jpg',6002),
	(23,5,'gjmyb.jpg',0),
	(24,2,'rplhk.jpg',406972),
	(25,4,'eobbf.jpg',386834);


