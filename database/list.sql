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

CREATE TRIGGER IF NOT EXISTS deleteProjectLists
BEFORE DELETE ON projectLists
BEGIN
  DELETE FROM lists WHERE OLD.list = lists.id;
END;

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


INSERT INTO users (username, password, name, email, country) VALUES ('jamie_the_cooker', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'James Trevor Oliver', 'jamie_oliver@gmail.com', 'United Kingdom');
INSERT INTO users (username, password, name, email, country) VALUES ('santa', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Saint Nicholas', 'santa_claus@gmail.com', 'Nepal');
INSERT INTO users (username, password, name, email, country) VALUES ('beatriz', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Beatriz Baldaia', 'up201505633@fe.up.pt', 'Portugal');
INSERT INTO users (username, password, name, email, country) VALUES ('anabela', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Anabela Silva', 'up201506034@fe.up.pt', 'Portugal');
INSERT INTO users (username, password, name, email, country) VALUES ('esteves', '$2y$10$ZQ6ykVkVrl7mjKMF8lN0OeRBRVGNd/5vw4YxD9TzAcxvyMxxc79Hq', 'Joao Esteves', 'up201505145@fe.up.pt', 'Portugal');

insert into categories (id, name, fullName) values (1, 'pink', 'Spring Day');
insert into categories (id, name, fullName) values (2, 'white', "It's cold outside");
insert into categories (id, name, fullName) values (3, 'xmas', "Christmas Time");

INSERT INTO lists (username, name, category, dateDue) VALUES ('jamie_the_cooker', 'Sesame butterflied chicken', 2, '2017-10-27');
insert into lists (username, name, category, dateDue) values ('jamie_the_cooker', 'Asparagus pâté', 2, '2017-12-23');
insert into lists (username, name, category, dateDue) values ('jamie_the_cooker', 'Spicy feta & pepper dip', 3, '2017-12-31');
insert into lists (username, name, category, dateDue) values ('jamie_the_cooker', 'Scrambled egg omelette', 1, '2018-01-10');
insert into lists (username, name, category, dateDue) values ('santa', 'Make a Traditional Rag Doll', 3, '2017-12-19');
insert into lists (username, name, category, dateDue) values ('santa', 'Deliver Presents', 3, '2017-12-24');
insert into lists (username, name, category, dateDue) values ('beatriz', 'Requerimentos', 1, '2017-11-26');
insert into lists (username, name, category, dateDue) values ('beatriz', 'Design', 1, '2017-11-28');
insert into lists (username, name, category, dateDue) values ('beatriz', 'Implementacao', 1, '2017-12-1');
insert into lists (username, name, category, dateDue) values ('beatriz', 'Verificacao', 1, '2017-12-13');
insert into lists (username, name, category, dateDue) values ('beatriz', 'Entrega', 1, '2017-12-14');

insert into lists (username, name, category, dateDue) values ('esteves', 'Fazer prenda para o Desespero', 1, '2017-12-14');


INSERT INTO items (name, id_lists, priority) VALUES ('Put a griddle pan on a high heat.', 1, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('In a bowl, cover the noodles with boiling kettle water to rehydrate them.', 1, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Use a sharp knife to slice into the chicken breasts, then open each one out flat like a book. Rub with 1 teaspoon of groundnut oil and a small pinch of sea salt and black pepper, then griddle for 8 minutes, or until golden and cooked through, turning halfway.', 1, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Trim the spring onions and rattle them through the finest slicer on your food processor, followed by the Chinese cabbage, sugar snap peas and chilli.', 1, 3);
INSERT INTO items (name, id_lists, priority) VALUES ('Dress with the juice of 1 lime and the soy sauce. In a small bowl, mix the peanut butter with the yoghurt and the juice of the remaining lime, peel and finely grate in the ginger, mix again, taste, and season to perfection.', 1, 2);
INSERT INTO items (name, id_lists, priority) VALUES ('Remove the chicken to a board and slice, lightly toasting the sesame seeds in the residual heat of the griddle pan and sprinkling them over the chicken before serving.', 1, 2);
INSERT INTO items (name, id_lists, priority) VALUES ('Drain the noodles, divide between your plates with the chicken, slaw and peanut sauce, mix it all up and tuck on in.', 1, 1);

INSERT INTO items (name, id_lists, priority) VALUES ('Snap the woody ends off the asparagus.', 2, 2);
INSERT INTO items (name, id_lists, priority) VALUES ('Blanch the asparagus spears in boiling salted water until tender, then drain.', 2, 3);
INSERT INTO items (name, id_lists, priority) VALUES ('Blend the asparagus and clotted cream together and mix thoroughly.', 2, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Season with sea salt and black pepper, to taste, and whiz one last time.', 2, 1);

INSERT INTO items (name, id_lists, priority) VALUES ('In a food processor combine the feta, red peppers and oil.', 3, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Season with black pepper and blend until smooth.', 3, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Transfer to a bowl, then serve.', 3, 1);

INSERT INTO items (name, id_lists, priority) VALUES ('Buy 350 g ripe mixed-colour tomatoes', 4, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Buy 1/2 a bunch of fresh basil (15g)s', 4, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Buy 1/2 - 1 fresh red chilli', 4, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Buy 1/2x 125 g ball of mozzarella', 4, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Buy 4 large free-range eggs', 4, 1);

INSERT INTO items (name, id_lists, priority) VALUES ('Draw the outline for your doll on a cloth.', 5, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Place a second layer of fabric underneath.', 5, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Assemble the parts.', 5, 2);
INSERT INTO items (name, id_lists, priority) VALUES ('Relieve the seams around curves and corners.', 5, 2);
INSERT INTO items (name, id_lists, priority) VALUES ('Turn the doll right side out.', 5, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Stuff the doll.', 5, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Fold the edges of the opening towards the inside.', 5, 3);
INSERT INTO items (name, id_lists, priority) VALUES ('Make arm and leg joints.', 5, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Add the facial features.', 5, 2);
INSERT INTO items (name, id_lists, priority) VALUES ('Make the hair.', 5, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Create doll clothes.', 5, 3);
INSERT INTO items (name, id_lists, priority) VALUES ('Find a purpose for the finished doll.', 5, 1);

INSERT INTO items (name, id_lists, priority) VALUES ('Fuel the sleigh.', 6, 2);
INSERT INTO items (name, id_lists, priority) VALUES ('Wrap all the gifts.', 6, 1);

INSERT INTO items (name, id_lists, priority) VALUES ('Verificar os objetivos minimos do trabalho.', 7, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Pensar como implementar os requisitos minimos.', 7, 3);
INSERT INTO items (name, id_lists, priority) VALUES ('Pensar em extras a adicionar.', 7, 2);

INSERT INTO items (name, id_lists, priority) VALUES ('Desenho geral de cada pagina.', 8, 3);
INSERT INTO items (name, id_lists, priority) VALUES ('Criacao do logo.', 8, 3);

INSERT INTO items (name, id_lists, priority) VALUES ('Distribuicao de tarefas.', 9, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Login na pagina.', 9, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Criacao de conta.', 9, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Adicionar seguranca ao site.', 9, 3);
INSERT INTO items (name, id_lists, priority) VALUES ('Criar listas.', 9, 3);
INSERT INTO items (name, id_lists, priority) VALUES ('Criar itens.', 9, 2);
INSERT INTO items (name, id_lists, priority) VALUES ('Criar projetos.', 9, 3);
INSERT INTO items (name, id_lists, priority) VALUES ('Fazer CSS.', 9, 2);

INSERT INTO items (name, id_lists, priority) VALUES ('Verificar inputs.', 10, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Validar html.', 10, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('SQL injection.', 10, 1);

INSERT INTO items (name, id_lists, priority) VALUES ('Adicionar cenas a DB.', 11, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Criar README.txt .', 11, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Submeter no moodle.', 11, 1);

INSERT INTO items (name, id_lists, priority) VALUES ('Ir a Leroy.', 12, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Comprar fita adesiva.', 12, 1);
INSERT INTO items (name, id_lists, priority) VALUES ('Fazer a pega do megafone.', 12, 3);
INSERT INTO items (name, id_lists, priority) VALUES ('Pintar o megafone com spray.', 12, 2);

INSERT INTO projects (name, admin, deadline) VALUES ('Projeto LTW: To-Do List', 'beatriz', '2017-12-14');

INSERT INTO projectUsers (user, project) VALUES ('beatriz', 1);
INSERT INTO projectUsers (user, project) VALUES ('anabela', 1);
INSERT INTO projectUsers (user, project) VALUES ('esteves', 1);


INSERT INTO projectLists (list, project) VALUES (7, 1);
INSERT INTO projectLists (list, project) VALUES (8, 1);
INSERT INTO projectLists (list, project) VALUES (9, 1);
INSERT INTO projectLists (list, project) VALUES (10, 1);
INSERT INTO projectLists (list, project) VALUES (11, 1);
