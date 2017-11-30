PRAGMA foreign_keys=ON;

DROP TABLE users;
DROP TABLE lists;
DROP TABLE categories;
DROP TABLE items;

CREATE TABLE users (
  username VARCHAR PRIMARY KEY,
  password VARCHAR,
  name VARCHAR
);

CREATE TABLE lists (
  id INTEGER PRIMARY KEY ,--AUTOINCREMENT,
  username VARCHAR REFERENCES users ON DELETE CASCADE,
  name VARCHAR,
  category INTEGER  REFERENCES categories
);
CREATE TABLE categories (
  id INTEGER PRIMARY KEY ,--AUTOINCREMENT,
  name VARCHAR
);

CREATE TABLE items (
  id INTEGER PRIMARY KEY ,--AUTOINCREMENT,
  name VARCHAR,
  complet INTEGER DEFAULT 0,
  id_lists INTEGER REFERENCES lists ON DELETE CASCADE,
  dateDue DATE
);

INSERT INTO users VALUES ('dominic', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Dominic Woods');
INSERT INTO users VALUES ('zachary', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Zachary Young');
INSERT INTO users VALUES ('alicia', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Alicia Hamilton');
INSERT INTO users VALUES ('abril', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Abril Cooley');

INSERT INTO lists (username, name, category) VALUES ('abril', 'Wedding', 1);
insert into lists (username, name, category) values ('abril', 'Nunc rhoncus dui vel sem.', 1);
insert into lists (username, name, category) values ('alicia', 'Curabitur convallis.', 2);
insert into lists (username, name, category) values ('zachary', 'Etiam justo.', 2);
insert into lists (username, name, category) values ('abril', 'Ut at dolor quis odio consequat varius.', 2);
insert into lists (username, name, category) values ('zachary', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 3);
insert into lists (username, name, category) values ('dominic', 'Vestibulum ac est lacinia nisi venenatis tristique.', 1);
insert into lists (username, name, category) values ('abril', 'Nullam varius.');
insert into lists (username, name, category) values ('abril', 'Praesent id massa id nisl venenatis lacinia.', 1);
insert into lists (username, name, category) values ('alicia', 'Proin risus.', 1);
insert into lists (username, name, category) values ('dominic', 'Aliquam sit amet diam in magna bibendum imperdiet.', 1);

insert into categories (id, name) values (1, 'pink');
insert into categories (id, name) values (2, 'white');
insert into categories (id, name) values (3, 'black');

INSERT INTO items (name, id_lists, dateDue) VALUES ('Buy cake', 1, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Ploceus rubiginosus', 10, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Lemur catta', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Galictis vittata', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Vulpes chama', 8, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Dicrurus adsimilis', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Connochaetus taurinus', 1, '2017-11-01');
insert into items (name, id_lists, dateDue) values ('Snycerus caffer', 5, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Macropus rufogriseus', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Manouria emys', 1, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Vulpes vulpes', 4, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Tyto novaehollandiae', 4, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Branta canadensis', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Ramphastos tucanus', 6, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Ephipplorhynchus senegalensis', 10, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Heloderma horridum', 1, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Vulpes cinereoargenteus', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Ovibos moschatus', 6, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Sarcorhamphus papa', 8, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Macropus robustus', 10, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Ratufa indica', 1, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Pteropus rufus', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Upupa epops', 1, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Pseudocheirus peregrinus', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Varanus albigularis', 3, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Geospiza sp.', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Agkistrodon piscivorus', 10, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Trichoglossus haematodus moluccanus', 3, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Drymarchon corias couperi', 5, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Columba palumbus', 10, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Gyps bengalensis', 11, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Geochelone elegans', 4, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Chamaelo sp.', 4, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Pteronura brasiliensis', 1, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Dasypus novemcinctus', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Lemur fulvus', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Ploceus rubiginosus', 1, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Gymnorhina tibicen', 4, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Crocodylus niloticus', 11, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Cyrtodactylus louisiadensis', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Papio cynocephalus', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Phalaropus fulicarius', 3, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Phalaropus fulicarius', 2, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Francolinus swainsonii', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Kobus defassa', 3, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Bubo sp.', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Cervus canadensis', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Bradypus tridactylus', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Hippopotamus amphibius', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Lemur fulvus', 3, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('unavailable', 3, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Climacteris melanura', 5, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Graspus graspus', 6, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Cynomys ludovicianus', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Macropus giganteus', 11, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Trachyphonus vaillantii', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Tiliqua scincoides', 3, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Macropus agilis', 10, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Butorides striatus', 5, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Tenrec ecaudatus', 11, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Fulica cristata', 5, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Ctenophorus ornatus', 3, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Sceloporus magister', 5, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Megaderma spasma', 1, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Cygnus buccinator', 5, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Haliaeetus leucoryphus', 8, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Aegypius tracheliotus', 2, '2018-01-23');
insert into items (name, id_lists, dateDue) values ('Pedetes capensis', 2, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Herpestes javanicus', 4, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Arctogalidia trivirgata', 10, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Pteronura brasiliensis', 1, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Canis aureus', 1, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Merops nubicus', 6, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Ardea golieth', 11, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Himantopus himantopus', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Paradoxurus hermaphroditus', 2, '2017-10-31');
insert into items (name, id_lists, dateDue) values ('Crotaphytus collaris', 3, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Spheniscus mendiculus', 8, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Sagittarius serpentarius', 4, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Eurocephalus anguitimens', 7, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Zonotrichia capensis', 10, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Erinaceus frontalis', 11, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Laniarius ferrugineus', 4, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Dendrohyrax brucel', 6, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Cathartes aura', 5, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Trichoglossus haematodus moluccanus', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Canis lupus baileyi', 5, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Cervus duvauceli', 5, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Certotrichas paena', 6, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Pavo cristatus', 8, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Varanus salvator', 6, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Tachybaptus ruficollis', 2, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Ardea cinerea', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Philetairus socius', 6, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Libellula quadrimaculata', 6, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Myrmecophaga tridactyla', 8, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Coluber constrictor', 4, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Fulica cristata', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Perameles nasuta', 9, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Nyctanassa violacea', 2, '2017-12-01');
insert into items (name, id_lists, dateDue) values ('Grus antigone', 7, '2017-12-01');
