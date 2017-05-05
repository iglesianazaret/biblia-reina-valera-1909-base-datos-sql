
-- ------------------------------------------------------------------------------------------------------
-- Tabla: books
-- Descripción: Contiene los libros de la Biblia
-- Campos:
-- + id: identificador numérico único, correspondiente al número de orden del libro en la Biblia
-- + name: nombre del libro, según aparece en la presente versión
-- + modern_name: nombre habitual del libro en las versiones actuales
-- + new_testament: valor lógico que indica si el libro pertenece (1) o no (0) al nuevo testamento
-- Notas:
-- + La clave primaria es el campo 'id'
-- ------------------------------------------------------------------------------------------------------

CREATE TABLE books (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    modern_name VARCHAR(100) NOT NULL,
    new_testament TINYINT(1) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- ------------------------------------------------------------------------------------------------------
-- Tabla: verses
-- Descripción: Contiene los versículos de todos los libros de la Biblia
-- Campos:
-- + book_id: identificador del libro al que pertenece
-- + chapter: número del capítulo
-- + verse: número del versículo
-- + text: texto del versículo
-- Notas:
-- + La clave primaria está formada por la terna 'book_id', 'chapter' y 'verse'
-- + El campo 'book_id' tiene asociada una clave foránea a la tabla 'books'
-- ------------------------------------------------------------------------------------------------------

CREATE TABLE verses (
    book_id INT NOT NULL,
    chapter INT NOT NULL,
    verse INT NOT NULL,
    text TEXT NOT NULL,
    PRIMARY KEY (book_id, chapter, verse),
    FOREIGN KEY (book_id) REFERENCES books (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
