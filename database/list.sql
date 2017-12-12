PRAGMA foreign_keys=ON;

DROP TABLE IF EXISTS userItem;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS lists;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS projectUsers;
DROP TABLE IF EXISTS projectLists;
DROP TABLE IF EXISTS projects;

CREATE TABLE countries (
  name VARCHAR PRIMARY KEY
);

CREATE TABLE users (
  username VARCHAR PRIMARY KEY,
  password VARCHAR,
  name VARCHAR,
  email VARCHAR,
  country VARCHAR REFERENCES countries
);

CREATE TABLE lists (
  id INTEGER PRIMARY KEY ,--AUTOINCREMENT,
  username VARCHAR REFERENCES users ON DELETE CASCADE,
  name VARCHAR,
  category INTEGER  REFERENCES categories,
  dateDue DATE,
  notified INTEGER DEFAULT 0
);
CREATE TABLE categories (
  id INTEGER PRIMARY KEY ,--AUTOINCREMENT,
  name VARCHAR,
  fullName VARCHAR
);

CREATE TABLE items (
  id INTEGER PRIMARY KEY ,--AUTOINCREMENT,
  name VARCHAR,
  complet INTEGER DEFAULT 0,
  id_lists INTEGER REFERENCES lists ON DELETE CASCADE,
  priority INTEGER
);


CREATE TABLE projects (
  id INTEGER PRIMARY KEY ,--AUTOINCREMENT,
  name VARCHAR,
  admin VARCHAR REFERENCES users ON DELETE CASCADE,
  deadline DATE
);

CREATE TABLE projectUsers (
  user VARCHAR REFERENCES users ON DELETE CASCADE,
  project INTEGER REFERENCES projects ON DELETE CASCADE
);

CREATE TABLE projectLists (
  list INTEGER REFERENCES lists ON DELETE CASCADE,
  project INTEGER REFERENCES projects ON DELETE CASCADE
);

CREATE TABLE userItem (
  user INTEGER REFERENCES users ON DELETE CASCADE,
  item INTEGER REFERENCES items ON DELETE CASCADE
);


INSERT INTO countries (name) VALUES ('Afghanistan');
INSERT INTO countries (name) VALUES ('Albania');
INSERT INTO countries (name) VALUES ('Algeria');
INSERT INTO countries (name) VALUES ('American Samoa');
INSERT INTO countries (name) VALUES ('Andorra');
INSERT INTO countries (name) VALUES ('Angola');
INSERT INTO countries (name) VALUES ('Anguilla');
INSERT INTO countries (name) VALUES ('Antarctica');
INSERT INTO countries (name) VALUES ('Antigua and Barbuda');
INSERT INTO countries (name) VALUES ('Argentina');
INSERT INTO countries (name) VALUES ('Armenia');
INSERT INTO countries (name) VALUES ('Aruba');
INSERT INTO countries (name) VALUES ('Australia');
INSERT INTO countries (name) VALUES ('Austria');
INSERT INTO countries (name) VALUES ('Azerbaijan');
INSERT INTO countries (name) VALUES ('Bahamas');
INSERT INTO countries (name) VALUES ('Bahrain');
INSERT INTO countries (name) VALUES ('Bangladesh');
INSERT INTO countries (name) VALUES ('Barbados');
INSERT INTO countries (name) VALUES ('Belarus');
INSERT INTO countries (name) VALUES ('Belgium');
INSERT INTO countries (name) VALUES ('Belize');
INSERT INTO countries (name) VALUES ('Benin');
INSERT INTO countries (name) VALUES ('Bermuda');
INSERT INTO countries (name) VALUES ('Bhutan');
INSERT INTO countries (name) VALUES ('Bolivia');
INSERT INTO countries (name) VALUES ('Bosnia and Herzegovina');
INSERT INTO countries (name) VALUES ('Botswana');
INSERT INTO countries (name) VALUES ('Bouvet Island');
INSERT INTO countries (name) VALUES ('Brazil');
INSERT INTO countries (name) VALUES ('British Indian Ocean Territory');
INSERT INTO countries (name) VALUES ('Brunei Darussalam');
INSERT INTO countries (name) VALUES ('Bulgaria');
INSERT INTO countries (name) VALUES ('Burkina Faso');
INSERT INTO countries (name) VALUES ('Burundi');
INSERT INTO countries (name) VALUES ('Cambodia');
INSERT INTO countries (name) VALUES ('Cameroon');
INSERT INTO countries (name) VALUES ('Canada');
INSERT INTO countries (name) VALUES ('Cape Verde');
INSERT INTO countries (name) VALUES ('Cayman Islands');
INSERT INTO countries (name) VALUES ('Central African Republic');
INSERT INTO countries (name) VALUES ('Chad');
INSERT INTO countries (name) VALUES ('Chile');
INSERT INTO countries (name) VALUES ('China');
INSERT INTO countries (name) VALUES ('Christmas Island');
INSERT INTO countries (name) VALUES ('Cocos INSERT INTO countries (name) VALUES (Keeling) Islands');
INSERT INTO countries (name) VALUES ('Colombia');
INSERT INTO countries (name) VALUES ('Comoros');
INSERT INTO countries (name) VALUES ('Congo');
INSERT INTO countries (name) VALUES ('Congo, The Democratic Republic of The');
INSERT INTO countries (name) VALUES ('Cook Islands');
INSERT INTO countries (name) VALUES ('Costa Rica');
INSERT INTO countries (name) VALUES ('Cote D''ivoire');
INSERT INTO countries (name) VALUES ('Croatia');
INSERT INTO countries (name) VALUES ('Cuba');
INSERT INTO countries (name) VALUES ('Cyprus');
INSERT INTO countries (name) VALUES ('Czech Republic');
INSERT INTO countries (name) VALUES ('Denmark');
INSERT INTO countries (name) VALUES ('Djibouti');
INSERT INTO countries (name) VALUES ('Dominica');
INSERT INTO countries (name) VALUES ('Dominican Republic');
INSERT INTO countries (name) VALUES ('Easter Island');
INSERT INTO countries (name) VALUES ('Ecuador');
INSERT INTO countries (name) VALUES ('Egypt');
INSERT INTO countries (name) VALUES ('El Salvador');
INSERT INTO countries (name) VALUES ('Equatorial Guinea');
INSERT INTO countries (name) VALUES ('Eritrea');
INSERT INTO countries (name) VALUES ('Estonia');
INSERT INTO countries (name) VALUES ('Ethiopia');
INSERT INTO countries (name) VALUES ('Falkland Islands INSERT INTO countries (name) VALUES (Malvinas)');
INSERT INTO countries (name) VALUES ('Faroe Islands');
INSERT INTO countries (name) VALUES ('Fiji');
INSERT INTO countries (name) VALUES ('Finland');
INSERT INTO countries (name) VALUES ('France');
INSERT INTO countries (name) VALUES ('French Guiana');
INSERT INTO countries (name) VALUES ('French Polynesia');
INSERT INTO countries (name) VALUES ('French Southern Territories');
INSERT INTO countries (name) VALUES ('Gabon');
INSERT INTO countries (name) VALUES ('Gambia');
INSERT INTO countries (name) VALUES ('Georgia');
INSERT INTO countries (name) VALUES ('Germany');
INSERT INTO countries (name) VALUES ('Ghana');
INSERT INTO countries (name) VALUES ('Gibraltar');
INSERT INTO countries (name) VALUES ('Greece');
INSERT INTO countries (name) VALUES ('Greenland');
INSERT INTO countries (name) VALUES ('Grenada');
INSERT INTO countries (name) VALUES ('Guadeloupe');
INSERT INTO countries (name) VALUES ('Guam');
INSERT INTO countries (name) VALUES ('Guatemala');
INSERT INTO countries (name) VALUES ('Guinea');
INSERT INTO countries (name) VALUES ('Guinea-bissau');
INSERT INTO countries (name) VALUES ('Guyana');
INSERT INTO countries (name) VALUES ('Haiti');
INSERT INTO countries (name) VALUES ('Heard Island and Mcdonald Islands');
INSERT INTO countries (name) VALUES ('Honduras');
INSERT INTO countries (name) VALUES ('Hong Kong');
INSERT INTO countries (name) VALUES ('Hungary');
INSERT INTO countries (name) VALUES ('Iceland');
INSERT INTO countries (name) VALUES ('India');
INSERT INTO countries (name) VALUES ('Indonesia');
INSERT INTO countries (name) VALUES ('Iran');
INSERT INTO countries (name) VALUES ('Iraq');
INSERT INTO countries (name) VALUES ('Ireland');
INSERT INTO countries (name) VALUES ('Israel');
INSERT INTO countries (name) VALUES ('Italy');
INSERT INTO countries (name) VALUES ('Jamaica');
INSERT INTO countries (name) VALUES ('Japan');
INSERT INTO countries (name) VALUES ('Jordan');
INSERT INTO countries (name) VALUES ('Kazakhstan');
INSERT INTO countries (name) VALUES ('Kenya');
INSERT INTO countries (name) VALUES ('Kiribati');
INSERT INTO countries (name) VALUES ('Korea, North');
INSERT INTO countries (name) VALUES ('Korea, South');
INSERT INTO countries (name) VALUES ('Kosovo');
INSERT INTO countries (name) VALUES ('Kuwait');
INSERT INTO countries (name) VALUES ('Kyrgyzstan');
INSERT INTO countries (name) VALUES ('Laos');
INSERT INTO countries (name) VALUES ('Latvia');
INSERT INTO countries (name) VALUES ('Lebanon');
INSERT INTO countries (name) VALUES ('Lesotho');
INSERT INTO countries (name) VALUES ('Liberia');
INSERT INTO countries (name) VALUES ('Libyan Arab Jamahiriya');
INSERT INTO countries (name) VALUES ('Liechtenstein');
INSERT INTO countries (name) VALUES ('Lithuania');
INSERT INTO countries (name) VALUES ('Luxembourg');
INSERT INTO countries (name) VALUES ('Macau');
INSERT INTO countries (name) VALUES ('Macedonia');
INSERT INTO countries (name) VALUES ('Madagascar');
INSERT INTO countries (name) VALUES ('Malawi');
INSERT INTO countries (name) VALUES ('Malaysia');
INSERT INTO countries (name) VALUES ('Maldives');
INSERT INTO countries (name) VALUES ('Mali');
INSERT INTO countries (name) VALUES ('Malta');
INSERT INTO countries (name) VALUES ('Marshall Islands');
INSERT INTO countries (name) VALUES ('Martinique');
INSERT INTO countries (name) VALUES ('Mauritania');
INSERT INTO countries (name) VALUES ('Mauritius');
INSERT INTO countries (name) VALUES ('Mayotte');
INSERT INTO countries (name) VALUES ('Mexico');
INSERT INTO countries (name) VALUES ('Micronesia, Federated States of');
INSERT INTO countries (name) VALUES ('Moldova, Republic of');
INSERT INTO countries (name) VALUES ('Monaco');
INSERT INTO countries (name) VALUES ('Mongolia');
INSERT INTO countries (name) VALUES ('Montenegro');
INSERT INTO countries (name) VALUES ('Montserrat');
INSERT INTO countries (name) VALUES ('Morocco');
INSERT INTO countries (name) VALUES ('Mozambique');
INSERT INTO countries (name) VALUES ('Myanmar');
INSERT INTO countries (name) VALUES ('Namibia');
INSERT INTO countries (name) VALUES ('Nauru');
INSERT INTO countries (name) VALUES ('Nepal');
INSERT INTO countries (name) VALUES ('Netherlands');
INSERT INTO countries (name) VALUES ('Netherlands Antilles');
INSERT INTO countries (name) VALUES ('New Caledonia');
INSERT INTO countries (name) VALUES ('New Zealand');
INSERT INTO countries (name) VALUES ('Nicaragua');
INSERT INTO countries (name) VALUES ('Niger');
INSERT INTO countries (name) VALUES ('Nigeria');
INSERT INTO countries (name) VALUES ('Niue');
INSERT INTO countries (name) VALUES ('Norfolk Island');
INSERT INTO countries (name) VALUES ('Northern Mariana Islands');
INSERT INTO countries (name) VALUES ('Norway');
INSERT INTO countries (name) VALUES ('Oman');
INSERT INTO countries (name) VALUES ('Pakistan');
INSERT INTO countries (name) VALUES ('Palau');
INSERT INTO countries (name) VALUES ('Palestinian Territory');
INSERT INTO countries (name) VALUES ('Panama');
INSERT INTO countries (name) VALUES ('Papua New Guinea');
INSERT INTO countries (name) VALUES ('Paraguay');
INSERT INTO countries (name) VALUES ('Peru');
INSERT INTO countries (name) VALUES ('Philippines');
INSERT INTO countries (name) VALUES ('Pitcairn');
INSERT INTO countries (name) VALUES ('Poland');
INSERT INTO countries (name) VALUES ('Portugal');
INSERT INTO countries (name) VALUES ('Puerto Rico');
INSERT INTO countries (name) VALUES ('Qatar');
INSERT INTO countries (name) VALUES ('Reunion');
INSERT INTO countries (name) VALUES ('Romania');
INSERT INTO countries (name) VALUES ('Russia');
INSERT INTO countries (name) VALUES ('Rwanda');
INSERT INTO countries (name) VALUES ('Saint Helena');
INSERT INTO countries (name) VALUES ('Saint Kitts and Nevis');
INSERT INTO countries (name) VALUES ('Saint Lucia');
INSERT INTO countries (name) VALUES ('Saint Pierre and Miquelon');
INSERT INTO countries (name) VALUES ('Saint Vincent and The Grenadines');
INSERT INTO countries (name) VALUES ('Samoa');
INSERT INTO countries (name) VALUES ('San Marino');
INSERT INTO countries (name) VALUES ('Sao Tome and Principe');
INSERT INTO countries (name) VALUES ('Saudi Arabia');
INSERT INTO countries (name) VALUES ('Senegal');
INSERT INTO countries (name) VALUES ('Serbia and Montenegro');
INSERT INTO countries (name) VALUES ('Seychelles');
INSERT INTO countries (name) VALUES ('Sierra Leone');
INSERT INTO countries (name) VALUES ('Singapore');
INSERT INTO countries (name) VALUES ('Slovakia');
INSERT INTO countries (name) VALUES ('Slovenia');
INSERT INTO countries (name) VALUES ('Solomon Islands');
INSERT INTO countries (name) VALUES ('Somalia');
INSERT INTO countries (name) VALUES ('South Africa');
INSERT INTO countries (name) VALUES ('South Georgia and The South Sandwich Islands');
INSERT INTO countries (name) VALUES ('Spain');
INSERT INTO countries (name) VALUES ('Sri Lanka');
INSERT INTO countries (name) VALUES ('Sudan');
INSERT INTO countries (name) VALUES ('Suriname');
INSERT INTO countries (name) VALUES ('Svalbard and Jan Mayen');
INSERT INTO countries (name) VALUES ('Swaziland');
INSERT INTO countries (name) VALUES ('Sweden');
INSERT INTO countries (name) VALUES ('Switzerland');
INSERT INTO countries (name) VALUES ('Syria');
INSERT INTO countries (name) VALUES ('Taiwan');
INSERT INTO countries (name) VALUES ('Tajikistan');
INSERT INTO countries (name) VALUES ('Tanzania, United Republic of');
INSERT INTO countries (name) VALUES ('Thailand');
INSERT INTO countries (name) VALUES ('Timor-leste');
INSERT INTO countries (name) VALUES ('Togo');
INSERT INTO countries (name) VALUES ('Tokelau');
INSERT INTO countries (name) VALUES ('Tonga');
INSERT INTO countries (name) VALUES ('Trinidad and Tobago');
INSERT INTO countries (name) VALUES ('Tunisia');
INSERT INTO countries (name) VALUES ('Turkey');
INSERT INTO countries (name) VALUES ('Turkmenistan');
INSERT INTO countries (name) VALUES ('Turks and Caicos Islands');
INSERT INTO countries (name) VALUES ('Tuvalu');
INSERT INTO countries (name) VALUES ('Uganda');
INSERT INTO countries (name) VALUES ('Ukraine');
INSERT INTO countries (name) VALUES ('United Arab Emirates');
INSERT INTO countries (name) VALUES ('United Kingdom');
INSERT INTO countries (name) VALUES ('United States');
INSERT INTO countries (name) VALUES ('United States Minor Outlying Islands');
INSERT INTO countries (name) VALUES ('Uruguay');
INSERT INTO countries (name) VALUES ('Uzbekistan');
INSERT INTO countries (name) VALUES ('Vanuatu');
INSERT INTO countries (name) VALUES ('Vatican City');
INSERT INTO countries (name) VALUES ('Venezuela');
INSERT INTO countries (name) VALUES ('Vietnam');
INSERT INTO countries (name) VALUES ('Virgin Islands, British');
INSERT INTO countries (name) VALUES ('Virgin Islands, U.S.');
INSERT INTO countries (name) VALUES ('Wallis and Futuna');
INSERT INTO countries (name) VALUES ('Western Sahara');
INSERT INTO countries (name) VALUES ('Yemen');
INSERT INTO countries (name) VALUES ('Zambia');
INSERT INTO countries (name) VALUES ('Zimbabwe');


INSERT INTO users (username, password, name, email, country) VALUES ('dominic', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Dominic Woods', 'dominic@gmail.com', 'Portugal');
INSERT INTO users (username, password, name, email, country) VALUES ('zachary', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Zachary Young', 'zach@gmail.com', 'Russia');
INSERT INTO users (username, password, name, email, country) VALUES ('alicia', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Alicia Hamilton', 'alicia@gmail.com', 'Spain');
INSERT INTO users (username, password, name, email, country) VALUES ('abril', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Abril Cooley', 'abril@gmail.com', 'Zimbabwe');

insert into categories (id, name, fullName) values (1, 'pink', 'Spring Day');
insert into categories (id, name, fullName) values (2, 'white', "It's cold outside");
insert into categories (id, name, fullName) values (3, 'xmas', "Christmas Time");

INSERT INTO lists (username, name, category, dateDue) VALUES ('abril', 'Wedding', 2, '2017-12-31');
insert into lists (username, name, category, dateDue) values ('abril', 'Nunc rhoncus dui vel sem.', 1, '2017-11-01');
insert into lists (username, name, category, dateDue) values ('alicia', 'Curabitur convallis.', 2, '2017-12-31');
insert into lists (username, name, category, dateDue) values ('zachary', 'Etiam justo.', 2, '2017-12-31');
insert into lists (username, name, category, dateDue) values ('abril', 'Ut at dolor quis odio consequat varius.', 2, '2017-12-31');
insert into lists (username, name, category, dateDue) values ('zachary', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 3, '2017-12-31');
insert into lists (username, name, category, dateDue) values ('dominic', 'Vestibulum ac est lacinia nisi venenatis tristique.', 1, '2017-12-31');
insert into lists (username, name, category, dateDue) values ('abril', 'Nullam varius.', 1, '2017-12-31');
insert into lists (username, name, category, dateDue) values ('abril', 'Praesent id massa id nisl venenatis lacinia.', 1, '2017-12-31');
insert into lists (username, name, category, dateDue) values ('alicia', 'Proin risus.', 1, '2017-12-31');
insert into lists (username, name, category, dateDue) values ('dominic', 'Aliquam sit amet diam in magna bibendum imperdiet.', 1, '2017-12-31');


INSERT INTO items (name, id_lists, priority) VALUES ('Buy cake', 1, 1);
insert into items (name, id_lists, priority) values ('Ploceus rubiginosus', 10, 1);
insert into items (name, id_lists, priority) values ('Lemur catta', 9, 2);
insert into items (name, id_lists, priority) values ('Galictis vittata', 9, 3);
insert into items (name, id_lists, priority) values ('Vulpes chama', 8, 1);
insert into items (name, id_lists, priority) values ('Dicrurus adsimilis', 7, 1);
insert into items (name, id_lists, priority) values ('Connochaetus taurinus', 1, 2);
insert into items (name, id_lists, priority) values ('Snycerus caffer', 5, 2);
insert into items (name, id_lists, priority) values ('Macropus rufogriseus', 9, 2);
insert into items (name, id_lists, priority) values ('Manouria emys', 1, 2);
insert into items (name, id_lists, priority) values ('Vulpes vulpes', 4, 2);
insert into items (name, id_lists, priority) values ('Tyto novaehollandiae', 4, 3);
insert into items (name, id_lists, priority) values ('Branta canadensis', 7, 3);
insert into items (name, id_lists, priority) values ('Ramphastos tucanus', 6, 3);
insert into items (name, id_lists, priority) values ('Ephipplorhynchus senegalensis', 10, 3);
insert into items (name, id_lists, priority) values ('Heloderma horridum', 1, 1);
insert into items (name, id_lists, priority) values ('Vulpes cinereoargenteus', 9, 1);
insert into items (name, id_lists, priority) values ('Ovibos moschatus', 6, 1);
insert into items (name, id_lists, priority) values ('Sarcorhamphus papa', 8, 1);
insert into items (name, id_lists, priority) values ('Macropus robustus', 10, 1);
insert into items (name, id_lists, priority) values ('Ratufa indica', 1, 2);
insert into items (name, id_lists, priority) values ('Pteropus rufus', 7, 2);
insert into items (name, id_lists, priority) values ('Upupa epops', 1, 2);
insert into items (name, id_lists, priority) values ('Pseudocheirus peregrinus', 9, 2);
insert into items (name, id_lists, priority) values ('Varanus albigularis', 3, 1);
insert into items (name, id_lists, priority) values ('Geospiza sp.', 9, 1);
insert into items (name, id_lists, priority) values ('Agkistrodon piscivorus', 10, 1);
insert into items (name, id_lists, priority) values ('Trichoglossus haematodus moluccanus', 3, 1);
insert into items (name, id_lists, priority) values ('Drymarchon corias couperi', 5, 1);
insert into items (name, id_lists, priority) values ('Columba palumbus', 10, 1);
insert into items (name, id_lists, priority) values ('Gyps bengalensis', 11, 1);
insert into items (name, id_lists, priority) values ('Geochelone elegans', 4, 1);
insert into items (name, id_lists, priority) values ('Chamaelo sp.', 4, 1);
insert into items (name, id_lists, priority) values ('Pteronura brasiliensis', 1, 1);
insert into items (name, id_lists, priority) values ('Dasypus novemcinctus', 7, 1);
insert into items (name, id_lists, priority) values ('Lemur fulvus', 7, 1);
insert into items (name, id_lists, priority) values ('Ploceus rubiginosus', 1, 1);
insert into items (name, id_lists, priority) values ('Gymnorhina tibicen', 4, 1);
insert into items (name, id_lists, priority) values ('Crocodylus niloticus', 11, 1);
insert into items (name, id_lists, priority) values ('Cyrtodactylus louisiadensis', 7, 2);
insert into items (name, id_lists, priority) values ('Papio cynocephalus', 7, 2);
insert into items (name, id_lists, priority) values ('Phalaropus fulicarius', 3, 2);
insert into items (name, id_lists, priority) values ('Phalaropus fulicarius', 2, 2);
insert into items (name, id_lists, priority) values ('Francolinus swainsonii', 7, 3);
insert into items (name, id_lists, priority) values ('Kobus defassa', 3, 3);
insert into items (name, id_lists, priority) values ('Bubo sp.', 9, 3);
insert into items (name, id_lists, priority) values ('Cervus canadensis', 9, 2);
insert into items (name, id_lists, priority) values ('Bradypus tridactylus', 7, 2);
insert into items (name, id_lists, priority) values ('Hippopotamus amphibius', 9, 2);
insert into items (name, id_lists, priority) values ('Lemur fulvus', 3, 1);
insert into items (name, id_lists, priority) values ('unavailable', 3, 1);
insert into items (name, id_lists, priority) values ('Climacteris melanura', 5, 1);
insert into items (name, id_lists, priority) values ('Graspus graspus', 6, 1);
insert into items (name, id_lists, priority) values ('Cynomys ludovicianus', 9, 1);
insert into items (name, id_lists, priority) values ('Macropus giganteus', 11, 1);
insert into items (name, id_lists, priority) values ('Trachyphonus vaillantii', 7, 1);
insert into items (name, id_lists, priority) values ('Tiliqua scincoides', 3, 1);
insert into items (name, id_lists, priority) values ('Macropus agilis', 10, 1);
insert into items (name, id_lists, priority) values ('Butorides striatus', 5, 1);
insert into items (name, id_lists, priority) values ('Tenrec ecaudatus', 11, 1);
insert into items (name, id_lists, priority) values ('Fulica cristata', 5, 1);
insert into items (name, id_lists, priority) values ('Ctenophorus ornatus', 3, 1);
insert into items (name, id_lists, priority) values ('Sceloporus magister', 5, 1);
insert into items (name, id_lists, priority) values ('Megaderma spasma', 1, 1);
insert into items (name, id_lists, priority) values ('Cygnus buccinator', 5, 1);
insert into items (name, id_lists, priority) values ('Haliaeetus leucoryphus', 8, 1);
insert into items (name, id_lists, priority) values ('Aegypius tracheliotus', 2, 1);
insert into items (name, id_lists, priority) values ('Pedetes capensis', 2, 1);
insert into items (name, id_lists, priority) values ('Herpestes javanicus', 4, 1);
insert into items (name, id_lists, priority) values ('Arctogalidia trivirgata', 10, 1);
insert into items (name, id_lists, priority) values ('Pteronura brasiliensis', 1, 1);
insert into items (name, id_lists, priority) values ('Canis aureus', 1, 1);
insert into items (name, id_lists, priority) values ('Merops nubicus', 6, 1);
insert into items (name, id_lists, priority) values ('Ardea golieth', 11, 1);
insert into items (name, id_lists, priority) values ('Himantopus himantopus', 7, 1);
insert into items (name, id_lists, priority) values ('Paradoxurus hermaphroditus', 2, 1);
insert into items (name, id_lists, priority) values ('Crotaphytus collaris', 3, 1);
insert into items (name, id_lists, priority) values ('Spheniscus mendiculus', 8, 1);
insert into items (name, id_lists, priority) values ('Sagittarius serpentarius', 4, 1);
insert into items (name, id_lists, priority) values ('Eurocephalus anguitimens', 7, 1);
insert into items (name, id_lists, priority) values ('Zonotrichia capensis', 10, 1);
insert into items (name, id_lists, priority) values ('Erinaceus frontalis', 11, 1);
insert into items (name, id_lists, priority) values ('Laniarius ferrugineus', 4, 1);
insert into items (name, id_lists, priority) values ('Dendrohyrax brucel', 6, 1);
insert into items (name, id_lists, priority) values ('Cathartes aura', 5, 1);
insert into items (name, id_lists, priority) values ('Trichoglossus haematodus moluccanus', 9, 1);
insert into items (name, id_lists, priority) values ('Canis lupus baileyi', 5, 1);
insert into items (name, id_lists, priority) values ('Cervus duvauceli', 5, 1);
insert into items (name, id_lists, priority) values ('Certotrichas paena', 6, 1);
insert into items (name, id_lists, priority) values ('Pavo cristatus', 8, 1);
insert into items (name, id_lists, priority) values ('Varanus salvator', 6, 1);
insert into items (name, id_lists, priority) values ('Tachybaptus ruficollis', 2, 1);
insert into items (name, id_lists, priority) values ('Ardea cinerea', 9, 1);
insert into items (name, id_lists, priority) values ('Philetairus socius', 6, 1);
insert into items (name, id_lists, priority) values ('Libellula quadrimaculata', 6, 2);
insert into items (name, id_lists, priority) values ('Myrmecophaga tridactyla', 8, 1);
insert into items (name, id_lists, priority) values ('Coluber constrictor', 4, 1);
insert into items (name, id_lists, priority) values ('Fulica cristata', 9, 1);
insert into items (name, id_lists, priority) values ('Perameles nasuta', 9, 1);
insert into items (name, id_lists, priority) values ('Nyctanassa violacea', 2, 1);
insert into items (name, id_lists, priority) values ('Grus antigone', 7, 1);

INSERT INTO projects (name, admin, deadline) VALUES ('sobreviver a ltw', 'abril', '2017-12-31');

INSERT INTO projectUsers (user, project) VALUES ('abril', 1);
INSERT INTO projectUsers (user, project) VALUES ('dominic', 1);
INSERT INTO projectUsers (user, project) VALUES ('alicia', 1);


INSERT INTO projectLists (list, project) VALUES (1, 1);
INSERT INTO projectLists (list, project) VALUES (2, 1);
