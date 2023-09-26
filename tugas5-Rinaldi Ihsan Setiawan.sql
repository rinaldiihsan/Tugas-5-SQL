-- Soal Nomor 1

CREATE DATABASE books_store;

CREATE TABLE books (
    id_buku INT AUTO_INCREMENT PRIMARY KEY,
    judul_buku VARCHAR(255) NOT NULL,
    pengarang VARCHAR(255),
    tahun_terbit INT,
    penerbit VARCHAR(255),
    tanggal_dibuat DATE ,
    tanggal_diupdate DATE
);

CREATE TABLE category (
    id_category INT AUTO_INCREMENT PRIMARY KEY,
    nama_category VARCHAR(255) NOT NULL,
    tanggal_dibuat DATE ,
    tanggal_diupdate DATE
);

-- Soal Nomor 2

INSERT INTO books ( judul_buku, pengarang, tahun_terbit, penerbit, tanggal_dibuat, tanggal_diupdate)
VALUES 
("Clean Code" , "Robert C.Martin", 2008, "Prentice Hall" , "2023-09-18" , "2023-09-18"), 
("The Pragmatic Programmer" , "Andrew Hunt", 1999, "Addison-Wesley" , "2023-09-18" , "2023-09-18"),
("Design Patterns" , "Erich Gamma", 1994, "Addison-Wesley" , "2023-09-18" , "2023-09-18"),
("Introduction to Algorithms" , "Thomas H.Cormen", 1990, "MIT Press" , "2023-09-18" , "2023-09-18"),
("The Art of Computer Prog. " , "Donald E. Knuth", 1968, "Addison-Wesley" , "2023-09-18" , "2023-09-18"),
("Clean Architecture" , "Robert C. Martin", 2017, "Prentice Hall" , "2023-09-18" , "2023-09-18"),
("Refactoring" , "Martin Fowler", 1999, "Addison-Wesley" , "2023-09-18" , "2023-09-18"),
("Domain-Driven-Desing" , "Eric Evans", 2003, "Addison-Wesley" , "2023-09-18" , "2023-09-18"),
("The Mythical Man-Month" , "Frederick Brooks", 1975, "Addison-Wesley" , "2023-09-18" , "2023-09-18");

INSERT INTO category ( nama_category, tanggal_dibuat, tanggal_diupdate)
VALUES
("Pemrograman","2023-09-18","2023-09-18"),
("Fiksi","2023-09-18","2023-09-18"),
("NonFiksi","2023-09-18","2023-09-18"),
("Bisnis","2023-09-18","2023-09-18"),
("Teknoloogi","2023-09-18","2023-09-18"),
("Seni","2023-09-18","2023-09-18"),
("Sejarah","2023-09-18","2023-09-18"),
("Sains","2023-09-18","2023-09-18"),
("Hukum","2023-09-18","2023-09-18"),
("Kesehatan","2023-09-18","2023-09-18");

-- Soal Nomor 3

SELECT * FROM books;
SELECT * FROM category;

-- Soal Nomor 4

UPDATE books SET judul_buku = "Building Microservices: Designing Fine-Grained Systems 1st", tahun_terbit = 2015 WHERE id = 1;

-- Soal Nomor 5
DELETE FROM books WHERE id_buku = 10;
DELETE FROM category WHERE id_category = 10;

-- Soal Nomor 6
SELECT * FROM books WHERE penerbit LIKE  "%Addison-Wesley%";
SELECT * FROM books WHERE tahun_terbit BETWEEN 2003 AND 2023;
SELECT * FROM books WHERE judul_buku LIKE '%design%';

-- Soal Nomor 7
CREATE TABLE book_categories (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    id_category INT,
    id_book INT,
    tanggal_dibuat DATE ,
    tanggal_diupdate DATE,
    FOREIGN KEY (id_category) REFERENCES category(id_category),
    FOREIGN KEY (id_book) REFERENCES books(id_buku)
);

-- Soal Nomor 8
INSERT INTO book_categories (Id_category, Id_book, tanggal_dibuat, tanggal_diupdate)
VALUES
    (1, 2, '2023-09-18', '2023-09-18'),
    (5, 3, '2023-09-18', '2023-09-18'),
    (1, 1, '2023-09-18', '2023-09-18');

-- Soal Nomor 9
SELECT
    books.id_buku AS id,
    books.judul_buku AS judul_buku,
    category.nama_category AS nama_category
FROM
    books
JOIN 
    book_categories ON books.id_buku = book_categories.id_book
JOIN
    category ON book_categories.id_category = category.id_category
ORDER BY
    books.id_buku ASC;

-- Soal Nomor 10
ALTER TABLE books ADD jumlah_halaman INT;

