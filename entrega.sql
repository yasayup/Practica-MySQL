CREATE DATABASE notes_db character set utf8;

USE notes_db;

-- //creo tabla usuarios
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullName VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- //creo tabla notas
CREATE TABLE notes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(200) NOT NULL,
  creation_date DATE NOT NULL,
  modification_date DATE NOT NULL,
  permission_delete TINYINT,
  userId INT NOT NULL,
  FOREIGN KEY (userId) REFERENCES users (id)
);

-- //creo tabla categoria
CREATE TABLE categories (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nameCategory VARCHAR(100) NOT NULL
);

-- //creo tabla note_cat
CREATE TABLE note_category (
  id INT PRIMARY KEY AUTO_INCREMENT,
  noteId INT NOT NULL,
  FOREIGN KEY (noteId) REFERENCES notes (id),
  categoryId INT NOT null,
  FOREIGN KEY (categoryId) REFERENCES categories(id)
);


-- //inserto datos en Usuario
INSERT INTO users (id, fullName, email)
VALUES (1, "Romina Apablaza", "rominaapablaza210@gmail.com"),
(default, "Micaela Apablaza", "micaapa@gmail.com"),
(default, "Magalí Apablaza", "magaapa@gmail.com"),
(default, "Daniel Apablaza", "dani@gmail.com"),
(default, "Cecilia Otaño", "ceci@gmail.com"),
(default, "Yasmin Ayup", "jasayup@gmail.com"),
(default, "Nahir Ayup", "nanuayup@gmail.com"),
(default, "Fabian Ayup", "fabiayup@gmail.com"),
(default, "Gabriela Segat", "gabisegat@gmail.com"),
(default, "Ines Ferreyra", "ineferreyra@gmail.com");

-- //inserto datos en Categoria
INSERT INTO categories(id, nameCategory)
VALUES(1,"Politica"),
  (default, "Gaming"),
  (default, "Música"),
  (default, "Deportes"),
  (default, "Sociedad"),
  (default, "Turismo"),
  (default, "Medioambiente"),
  (default, "Tecnología"),
  (default, "Cocina"),
  (default, "Plantas");


-- //inserto datos en Notas
INSERT INTO
  notes (id, title, description, creation_date, modification_date, permission_delete, userId)
VALUES
  (
    1,
    "Ley de glaciares",
    "Se aprobará la ley de glaciares",
    "2020/05/15",
    "2021/05/15",
    1,
    3
  ),
  (
  default,
  "Ley de bosques",
  "Se aprobará la ley de bosques",
  "2020/05/16",
  "2021/05/16",
  1,
  1
),
(
  default,
  "Ganador del Fortnite Argentina",
  "Argentino de 10 años gana la competencia mas famosa del mundo",
  "2020/05/17",
  "2021/05/17",
  1,
  2
),
(
  default,
  "Ley de humedales",
  "Se aprobará la ley de humedales",
  "2020/05/18",
  "2020/05/18",
  1,
  5
),
(
  default,
  "50% de descuento en viajes",
  "Se aprobará el bono para viajar en Argentina durante el verano",
  "2020/05/09",
  "2021/05/09",
  1,
  4
),
(
  default,
  "Cocina vegana",
  "Saber comer es la clave para nuestra salud",
  "2020/05/12",
  "2021/05/12",
  1,
  10
),
(
  default,
  "Plantas sagradas medicinales",
  "Sabiduría psicodelica y su poder de transformación personal",
  "2020/05/13",
  "2021/05/13",
  1,
  9
),
(
  default,
  "Organic Electronic",
  "La musica electronica organica llega a Córdoba con Mose Dj",
  "2020/05/11",
  "2021/05/11",
  1,
  8
),
(
  default,
  "Tinturas madres",
  "Tinturas a base de plantas que ayudan al sistema inmunologico",
  "2020/04/15",
  "2021/04/15",
  1,
  7
),
(
  default,
  "Salvemos al planeta",
  "Gobiernos deben fomentar leyes para combatir al cambio climatico mundial",
  "2020/05/10",
  "2021/05/10",
  1,
  6
);

-- //inserto datos en note_category

INSERT INTO
 note_category(id, noteId, categoryId)
VALUES
  (1, 1, 7),
  (default, 2, 7),
  (default, 3, 2),
  (default, 4, 7),
  (default, 5, 6),
  (default, 6, 9),
  (default, 7, 10),
  (default, 8, 3),
  (default, 9, 10),
  (default, 10, 7);

  SELECT*FROM note_category;

  SELECT
  *
FROM
  categories;

SELECT
  *
FROM
  users;

  SELECT
  *
FROM
  notes;