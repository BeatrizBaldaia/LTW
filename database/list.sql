CREATE TABLE users (
  username VARCHAR PRIMARY KEY,
  password VARCHAR,
  name VARCHAR
);

CREATE TABLE lists (
  id INTEGER PRIMARY KEY ,--AUTOINCREMENT,
  username VARCHAR REFERENCES users,
  name VARCHAR
);

CREATE TABLE items (
  id INTEGER PRIMARY KEY ,--AUTOINCREMENT,
  name VARCHAR,
  complet INTEGER DEFAULT 0,
  id_lists VARCHAR REFERENCES lists
);

INSERT INTO users VALUES ("dominic", "7110eda4d09e062aa5e4a390b0a572ac0d2c0220", "Dominic Woods");
INSERT INTO users VALUES ("zachary", "7110eda4d09e062aa5e4a390b0a572ac0d2c0220", "Zachary Young");
INSERT INTO users VALUES ("alicia", "7110eda4d09e062aa5e4a390b0a572ac0d2c0220", "Alicia Hamilton");
INSERT INTO users VALUES ("abril", "7110eda4d09e062aa5e4a390b0a572ac0d2c0220", "Abril Cooley");

INSERT INTO lists (username, name) VALUES ("abril", "Wedding");

INSERT INTO items (name, id_lists) VALUES ("Buy cake", 1);
