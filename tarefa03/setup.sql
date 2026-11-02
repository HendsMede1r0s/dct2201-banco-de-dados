DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE biblioteca;

CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
) ENGINE=InnoDB;


CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor_id INT,
    CONSTRAINT fk_livros_autores 
        FOREIGN KEY (autor_id) REFERENCES autores(id) 
        ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE emprestimos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro_id INT,
    data_emprestimo DATE NOT NULL,
    devolvido BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT fk_emprestimos_livros 
        FOREIGN KEY (livro_id) REFERENCES livros(id) 
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;




INSERT INTO autores (nome) VALUES 
('J.K. Rowling'),
('George R.R. Martin'),
('J.R.R. Tolkien');


INSERT INTO livros (titulo, autor_id) VALUES 
('Harry Potter e a Pedra Filosofal', 1),
('A Guerra dos Tronos', 2),
('O Senhor dos Anéis: A Sociedade do Anel', 3);


INSERT INTO emprestimos (livro_id, data_emprestimo, devolvido) VALUES 
(1, CURDATE() - INTERVAL 5 DAY, 0), -- Não devolvido
(2, CURDATE() - INTERVAL 3 DAY, 0), -- Não devolvido
(3, CURDATE() - INTERVAL 10 DAY, 1); -- Devolvido




DROP USER IF EXISTS 'app_biblioteca'@'%';
CREATE USER 'app_biblioteca'@'%' IDENTIFIED BY 'AppBiblio2026!';
GRANT SELECT, INSERT, UPDATE, DELETE ON biblioteca.* TO 'app_biblioteca'@'%';


DROP USER IF EXISTS 'consulta'@'%';
CREATE USER 'consulta'@'%' IDENTIFIED BY 'Consulta2026!';
GRANT SELECT ON biblioteca.* TO 'consulta'@'%';


FLUSH PRIVILEGES;
