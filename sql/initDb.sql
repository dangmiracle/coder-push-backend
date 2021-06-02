CREATE TABLE `users` (
	`id` INT ( 11 ) NOT NULL auto_increment,
	`title` VARCHAR ( 255 ),
	`firstName` VARCHAR ( 255 ),
	`lastName` VARCHAR ( 255 ),
	`gender` VARCHAR ( 100 ),
	`email` VARCHAR ( 255 ),
	`dateOfBirth` DATETIME  DEFAULT CURRENT_TIMESTAMP,
	`registerDate` VARCHAR ( 255 ) ,
	`phone` VARCHAR ( 255 ) ,
	`picture` VARCHAR ( 255 ),
	`created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` DATETIME ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY ( `id` )
	);

CREATE TABLE `users_mark` (
	`id` INT ( 11 ) NOT NULL auto_increment,
	`fromUserId` INT ( 11 ) NOT NULL,
	`markVal` INT ( 2 ),
	`toUserId` INT ( 255 ) NOT NULL,
	`swiped` INT ( 2 ) NOT NULL DEFAULT 0,
	`created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` DATETIME ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY ( `id` ),
UNIQUE ( `fromUserId`, `toUserId` )

)
ENGINE = INNODB charset = utf8mb4 COLLATE utf8mb4_general_ci;


INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Fiedler','Heinz-Georg','heinz-georg.fiedler@example.com','mr','https://randomuser.me/api/portraits/men/81.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Hughes','Katie','katie.hughes@example.com','miss','https://randomuser.me/api/portraits/women/74.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Aasland','Vetle','vetle.aasland@example.com','mr','https://randomuser.me/api/portraits/men/97.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Vasquez','Dylan','dylan.vasquez@example.com','mr','https://randomuser.me/api/portraits/men/66.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Vicente','Margarita','margarita.vicente@example.com','miss','https://randomuser.me/api/portraits/women/5.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Oliver','Joey','joey.oliver@example.com','mr','https://randomuser.me/api/portraits/men/61.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Lampinen','Lilja','lilja.lampinen@example.com','ms','https://randomuser.me/api/portraits/women/50.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Liu','Abigail','abigail.liu@example.com','miss','https://randomuser.me/api/portraits/women/83.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Pilz','Melanie','melanie.pilz@example.com','miss','https://randomuser.me/api/portraits/women/32.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Carlson','Evan','evan.carlson@example.com','mr','https://randomuser.me/api/portraits/men/80.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Steward','Kitty','kitty.steward@example.com','ms','https://randomuser.me/api/portraits/women/78.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Ramos','Vanessa','vanessa.ramos@example.com','ms','https://randomuser.me/api/portraits/women/33.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Gomes','Olaí','olai.gomes@example.com','mrs','https://randomuser.me/api/portraits/women/85.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Bourgeois','Constance','constance.bourgeois@example.com','miss','https://randomuser.me/api/portraits/women/87.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Carter','Kenneth','kenneth.carter@example.com','mr','https://randomuser.me/api/portraits/men/40.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Myran','Sigmund','sigmund.myran@example.com','mr','https://randomuser.me/api/portraits/men/61.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Calvo','Josefina','josefina.calvo@example.com','mrs','https://randomuser.me/api/portraits/women/3.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Somby','Annabel','annabel.somby@example.com','ms','https://randomuser.me/api/portraits/women/35.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Brand','Friedrich-Karl','friedrich-karl.brand@example.com','mr','https://randomuser.me/api/portraits/men/7.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Leibold','Sibylle','sibylle.leibold@example.com','mrs','https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Bredesen','Kayla','kayla.bredesen@example.com','miss','https://randomuser.me/api/portraits/women/13.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Riley','Jesus','jesus.riley@example.com','mr','https://randomuser.me/api/portraits/men/45.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Roux','Evan','evan.roux@example.com','mr','https://randomuser.me/api/portraits/men/59.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Roussel','Angelica','angelica.roussel@example.com','mrs','https://randomuser.me/api/portraits/women/53.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Manninen','Konsta','konsta.manninen@example.com','mr','https://randomuser.me/api/portraits/men/24.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Mortensen','Cecilie','cecilie.mortensen@example.com','mrs','https://randomuser.me/api/portraits/women/56.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Çetiner','Oya','oya.cetiner@example.com','miss','https://randomuser.me/api/portraits/women/66.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Burke','Bessie','bessie.burke@example.com','miss','https://randomuser.me/api/portraits/women/72.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Gimenez','Angeles','angeles.gimenez@example.com','miss','https://randomuser.me/api/portraits/women/56.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Wijnker','Wouter-Jan','wouter-jan.wijnker@example.com','mr','https://randomuser.me/api/portraits/men/67.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Lorenzo','Elisa','elisa.lorenzo@example.com','mrs','https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Baltzersen','Niklas','niklas.baltzersen@example.com','mr','https://randomuser.me/api/portraits/men/2.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Hawkins','Tomothy','tomothy.hawkins@example.com','mr','https://randomuser.me/api/portraits/men/48.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Streicher','Toralf','toralf.streicher@example.com','mr','https://randomuser.me/api/portraits/men/80.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Ramos','David','david.ramos@example.com','mr','https://randomuser.me/api/portraits/men/30.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Lima','Miguel','miguel.lima@example.com','mr','https://randomuser.me/api/portraits/men/31.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Aşıkoğlu','Emre','emre.asikoglu@example.com','mr','https://randomuser.me/api/portraits/men/23.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Guillot','Sandro','sandro.guillot@example.com','mr','https://randomuser.me/api/portraits/men/8.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Mendoza','Cameron','cameron.mendoza@example.com','mr','https://randomuser.me/api/portraits/men/95.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Leon','Nuria','nuria.leon@example.com','ms','https://randomuser.me/api/portraits/women/93.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Madsen','Signe','signe.madsen@example.com','ms','https://randomuser.me/api/portraits/women/84.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Droste','Rudi','rudi.droste@example.com','mr','https://randomuser.me/api/portraits/men/83.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Ambrose','Madison','madison.ambrose@example.com','miss','https://randomuser.me/api/portraits/women/15.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Ijsseldijk','Els','els.ijsseldijk@example.com','mrs','https://randomuser.me/api/portraits/women/75.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Vega','Roberto','roberto.vega@example.com','mr','https://randomuser.me/api/portraits/men/25.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Black','James','james.black@example.com','mr','https://randomuser.me/api/portraits/men/29.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('سهيلي راد','محمدپارسا','mhmdprs.shylyrd@example.com','mr','https://randomuser.me/api/portraits/men/21.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('سهيلي راد','پوریا','pwry.shylyrd@example.com','mr','https://randomuser.me/api/portraits/men/37.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Leclerc','Andri','andri.leclerc@example.com','mr','https://randomuser.me/api/portraits/men/57.jpg');
INSERT INTO users(lastName,firstName,email,title,picture) VALUES ('Wilson','Benjamin','benjamin.wilson@example.com','mr','https://randomuser.me/api/portraits/men/14.jpg');
