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
  category INTEGER  REFERENCES categories,
  dateDue DATE
);
CREATE TABLE categories (
  id INTEGER PRIMARY KEY ,--AUTOINCREMENT,
  name VARCHAR
);

CREATE TABLE items (
  id INTEGER PRIMARY KEY ,--AUTOINCREMENT,
  name VARCHAR,
  complet INTEGER DEFAULT 0,
  id_lists INTEGER REFERENCES lists ON DELETE CASCADE
);

INSERT INTO users VALUES ('dominic', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Dominic Woods');
INSERT INTO users VALUES ('zachary', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Zachary Young');
INSERT INTO users VALUES ('alicia', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Alicia Hamilton');
INSERT INTO users VALUES ('abril', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Abril Cooley');

insert into categories (id, name) values (1, 'pink');
insert into categories (id, name) values (2, 'white');
insert into categories (id, name) values (3, 'black');

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


INSERT INTO items (name, id_lists) VALUES ('Buy cake', 1);
insert into items (name, id_lists) values ('Ploceus rubiginosus', 10);
insert into items (name, id_lists) values ('Lemur catta', 9);
insert into items (name, id_lists) values ('Galictis vittata', 9);
insert into items (name, id_lists) values ('Vulpes chama', 8);
insert into items (name, id_lists) values ('Dicrurus adsimilis', 7);
insert into items (name, id_lists) values ('Connochaetus taurinus', 1);
insert into items (name, id_lists) values ('Snycerus caffer', 5);
insert into items (name, id_lists) values ('Macropus rufogriseus', 9);
insert into items (name, id_lists) values ('Manouria emys', 1);
insert into items (name, id_lists) values ('Vulpes vulpes', 4);
insert into items (name, id_lists) values ('Tyto novaehollandiae', 4);
insert into items (name, id_lists) values ('Branta canadensis', 7);
insert into items (name, id_lists) values ('Ramphastos tucanus', 6);
insert into items (name, id_lists) values ('Ephipplorhynchus senegalensis', 10);
insert into items (name, id_lists) values ('Heloderma horridum', 1);
insert into items (name, id_lists) values ('Vulpes cinereoargenteus', 9);
insert into items (name, id_lists) values ('Ovibos moschatus', 6);
insert into items (name, id_lists) values ('Sarcorhamphus papa', 8);
insert into items (name, id_lists) values ('Macropus robustus', 10);
insert into items (name, id_lists) values ('Ratufa indica', 1);
insert into items (name, id_lists) values ('Pteropus rufus', 7);
insert into items (name, id_lists) values ('Upupa epops', 1);
insert into items (name, id_lists) values ('Pseudocheirus peregrinus', 9);
insert into items (name, id_lists) values ('Varanus albigularis', 3);
insert into items (name, id_lists) values ('Geospiza sp.', 9);
insert into items (name, id_lists) values ('Agkistrodon piscivorus', 10);
insert into items (name, id_lists) values ('Trichoglossus haematodus moluccanus', 3);
insert into items (name, id_lists) values ('Drymarchon corias couperi', 5);
insert into items (name, id_lists) values ('Columba palumbus', 10);
insert into items (name, id_lists) values ('Gyps bengalensis', 11);
insert into items (name, id_lists) values ('Geochelone elegans', 4);
insert into items (name, id_lists) values ('Chamaelo sp.', 4);
insert into items (name, id_lists) values ('Pteronura brasiliensis', 1);
insert into items (name, id_lists) values ('Dasypus novemcinctus', 7);
insert into items (name, id_lists) values ('Lemur fulvus', 7);
insert into items (name, id_lists) values ('Ploceus rubiginosus', 1);
insert into items (name, id_lists) values ('Gymnorhina tibicen', 4);
insert into items (name, id_lists) values ('Crocodylus niloticus', 11);
insert into items (name, id_lists) values ('Cyrtodactylus louisiadensis', 7);
insert into items (name, id_lists) values ('Papio cynocephalus', 7);
insert into items (name, id_lists) values ('Phalaropus fulicarius', 3);
insert into items (name, id_lists) values ('Phalaropus fulicarius', 2);
insert into items (name, id_lists) values ('Francolinus swainsonii', 7);
insert into items (name, id_lists) values ('Kobus defassa', 3);
insert into items (name, id_lists) values ('Bubo sp.', 9);
insert into items (name, id_lists) values ('Cervus canadensis', 9);
insert into items (name, id_lists) values ('Bradypus tridactylus', 7);
insert into items (name, id_lists) values ('Hippopotamus amphibius', 9);
insert into items (name, id_lists) values ('Lemur fulvus', 3);
insert into items (name, id_lists) values ('unavailable', 3);
insert into items (name, id_lists) values ('Climacteris melanura', 5);
insert into items (name, id_lists) values ('Graspus graspus', 6);
insert into items (name, id_lists) values ('Cynomys ludovicianus', 9);
insert into items (name, id_lists) values ('Macropus giganteus', 11);
insert into items (name, id_lists) values ('Trachyphonus vaillantii', 7);
insert into items (name, id_lists) values ('Tiliqua scincoides', 3);
insert into items (name, id_lists) values ('Macropus agilis', 10);
insert into items (name, id_lists) values ('Butorides striatus', 5);
insert into items (name, id_lists) values ('Tenrec ecaudatus', 11);
insert into items (name, id_lists) values ('Fulica cristata', 5);
insert into items (name, id_lists) values ('Ctenophorus ornatus', 3);
insert into items (name, id_lists) values ('Sceloporus magister', 5);
insert into items (name, id_lists) values ('Megaderma spasma', 1);
insert into items (name, id_lists) values ('Cygnus buccinator', 5);
insert into items (name, id_lists) values ('Haliaeetus leucoryphus', 8);
insert into items (name, id_lists) values ('Aegypius tracheliotus', 2);
insert into items (name, id_lists) values ('Pedetes capensis', 2);
insert into items (name, id_lists) values ('Herpestes javanicus', 4);
insert into items (name, id_lists) values ('Arctogalidia trivirgata', 10);
insert into items (name, id_lists) values ('Pteronura brasiliensis', 1);
insert into items (name, id_lists) values ('Canis aureus', 1);
insert into items (name, id_lists) values ('Merops nubicus', 6);
insert into items (name, id_lists) values ('Ardea golieth', 11);
insert into items (name, id_lists) values ('Himantopus himantopus', 7);
insert into items (name, id_lists) values ('Paradoxurus hermaphroditus', 2);
insert into items (name, id_lists) values ('Crotaphytus collaris', 3);
insert into items (name, id_lists) values ('Spheniscus mendiculus', 8);
insert into items (name, id_lists) values ('Sagittarius serpentarius', 4);
insert into items (name, id_lists) values ('Eurocephalus anguitimens', 7);
insert into items (name, id_lists) values ('Zonotrichia capensis', 10);
insert into items (name, id_lists) values ('Erinaceus frontalis', 11);
insert into items (name, id_lists) values ('Laniarius ferrugineus', 4);
insert into items (name, id_lists) values ('Dendrohyrax brucel', 6);
insert into items (name, id_lists) values ('Cathartes aura', 5);
insert into items (name, id_lists) values ('Trichoglossus haematodus moluccanus', 9);
insert into items (name, id_lists) values ('Canis lupus baileyi', 5);
insert into items (name, id_lists) values ('Cervus duvauceli', 5);
insert into items (name, id_lists) values ('Certotrichas paena', 6);
insert into items (name, id_lists) values ('Pavo cristatus', 8);
insert into items (name, id_lists) values ('Varanus salvator', 6);
insert into items (name, id_lists) values ('Tachybaptus ruficollis', 2);
insert into items (name, id_lists) values ('Ardea cinerea', 9);
insert into items (name, id_lists) values ('Philetairus socius', 6);
insert into items (name, id_lists) values ('Libellula quadrimaculata', 6);
insert into items (name, id_lists) values ('Myrmecophaga tridactyla', 8);
insert into items (name, id_lists) values ('Coluber constrictor', 4);
insert into items (name, id_lists) values ('Fulica cristata', 9);
insert into items (name, id_lists) values ('Perameles nasuta', 9);
insert into items (name, id_lists) values ('Nyctanassa violacea', 2);
insert into items (name, id_lists) values ('Grus antigone', 7);
