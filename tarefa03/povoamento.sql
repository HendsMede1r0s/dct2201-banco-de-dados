-- Inserção de 10 novos autores (IDs de 5 a 14)
INSERT INTO autores (nome, pais, ano_nascimento) VALUES
('Machado de Assis', 'Brasil', 1839),
('Virginia Woolf', 'Reino Unido', 1882),
('Gabriel García Márquez', 'Colômbia', 1927),
('George Orwell', 'Reino Unido', 1903),
('Fyodor Dostoevsky', 'Rússia', 1821),
('Haruki Murakami', 'Japão', 1949),
('Jane Austen', 'Reino Unido', 1775),
('Franz Kafka', 'República Tcheca', 1883),
('Clarice Lispector', 'Brasil', 1920),
('Albert Camus', 'Argélia', 1913);

-- Inserção de 26 livros (associados aos autores 1 a 4 e aos novos 5 a 14)
INSERT INTO livros (titulo, ano_publicacao, preco, autor_id) VALUES
-- Livros para os autores de ID 1 a 4
('Obra Conceitual Vol. 1', 1995, 39.90, 1),
('Ensaios Fundamentais', 2002, 45.00, 1),
('Estudos Coloniais', 1885, 29.90, 2),
('Crônicas do Século XIX', 1892, 34.50, 2),
('Teoria Moderna', 2015, 89.90, 3),
('Manual de Referência', 2020, 119.00, 3),
('Poemas Reunidos', 1978, 25.00, 4),

-- Livros para os autores de ID 5 a 14 (datas e preços coerentes)
('Memórias Póstumas de Brás Cubas', 1881, 42.90, 5),
('Dom Casmurro', 1899, 38.50, 5),
('Quincas Borba', 1891, 35.00, 5),
('Mrs. Dalloway', 1925, 49.90, 6),
('Ao Farol', 1927, 44.00, 6),
('Cem Anos de Solidão', 1967, 59.90, 7),
('O Amor nos Tempos do Cólera', 1985, 54.90, 7),
('1984', 1949, 41.90, 8),
('A Revolução dos Bichos', 1945, 29.90, 8),
('Crime e Castigo', 1866, 64.90, 9),
('Os Irmãos Karamázov', 1880, 79.90, 9),
('Norwegian Wood', 1987, 52.00, 10),
('Kafka à Beira-Mar', 2002, 68.50, 10),
('Orgulho e Preconceito', 1813, 39.90, 11),
('Razão e Sensibilidade', 1811, 37.50, 11),
('A Metamorfose', 1915, 27.90, 12),
('O Processo', 1925, 46.00, 12),
('A Hora da Estrela', 1977, 32.90, 13),
('O Estrangeiro', 1942, 43.50, 14);