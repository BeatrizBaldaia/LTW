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
  id_lists INTEGER REFERENCES lists ON DELETE CASCADE,
  priority INTEGER
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
insert into items (name, id_lists, priority) values ('Libellula quadrimaculata', 6);
insert into items (name, id_lists, priority) values ('Myrmecophaga tridactyla', 8, 1);
insert into items (name, id_lists, priority) values ('Coluber constrictor', 4, 1);
insert into items (name, id_lists, priority) values ('Fulica cristata', 9, 1);
insert into items (name, id_lists, priority) values ('Perameles nasuta', 9, 1);
insert into items (name, id_lists, priority) values ('Nyctanassa violacea', 2, 1);
insert into items (name, id_lists, priority) values ('Grus antigone', 7, 1);
