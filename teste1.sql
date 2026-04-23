-- 1. Cria o banco de dados(a "caixa" onde tudo fica guardado)
CREATE DATABASE conquista_estagio;
USE conquista_estagio;

-- 2. Cria a tabela de produtos (o que a empresa vende)
CREATE TABLE produtos (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2) -- 10 digitos no total, 2 após a virgula
);

-- 3. Cria a tabela de vendas (o registro do que aconteceu)
CREATE TABLE vendas (
	id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    data_venda DATE,
    quantidade INT,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- 4. Insetindo dados nos produtos
INSERT INTO produtos (nome_produto, categoria, preco) VALUES
('Armário de Cozinha Premium', 'Cozinha', 4500.00),
('Guarda-roupa 3 Portas', 'Quarto', 3200.00),
('Gabinete de Banheiro', 'Banheiro', 850.00),
('Mesa de Jantar 6 cadeiras', 'Sala', 2100.00);

-- 5. Insetindo dados nas vendas
INSERT INTO vendas (id_produto, data_venda, quantidade) VALUES
(1, '2026-04-20', 1),
(2, '2026-04-21', 2),
(1, '2026-04-22', 1),
(3, '2026-04-23', 5);