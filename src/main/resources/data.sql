-- Criação das tabelas
CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nome_usuario VARCHAR(255) NOT NULL,
    cpf_usuario VARCHAR(11) UNIQUE NOT NULL,
    endereco_usuario VARCHAR(255) NOT NULL,
    telefone_usuario VARCHAR(15) NOT NULL,
    email_usuario VARCHAR(255) UNIQUE NOT NULL,
    senha_usuario VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS role (
    id_role SERIAL PRIMARY KEY,
    authority VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS usuario_role (
    id_usuario SERIAL,
    id_role SERIAL,
    PRIMARY KEY (id_usuario, id_role),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_role) REFERENCES role(id_role)
);

CREATE TABLE IF NOT EXISTS empresas (
    id_empresa SERIAL PRIMARY KEY,
    nome_empresa VARCHAR(255) NOT NULL,
    cnpj_empresa VARCHAR(14) UNIQUE NOT NULL,
    endereco_empresa VARCHAR(255) NOT NULL,
    telefone_empresa VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS produtos (
    id_produto SERIAL PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    valor_produto DECIMAL(10, 2) NOT NULL,
    avaliacao_produto INTEGER NOT NULL,
    img_url VARCHAR(255),
    descricao_produto TEXT
);

CREATE TABLE IF NOT EXISTS empresa_produto (
    id_empresa SERIAL,
    id_produto SERIAL,
    PRIMARY KEY (id_empresa, id_produto),
    FOREIGN KEY (id_empresa) REFERENCES empresas(id_empresa),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Inserção de dados

-- Inserir dados de usuários
INSERT INTO usuarios (nome_usuario, cpf_usuario, endereco_usuario, telefone_usuario, email_usuario, senha_usuario)
VALUES ('admin', '98765432109', '123, Rua Imaginária, Bairro Fictício, RJ', '21993614814', 'admin@chamanois.com', '$2y$10$8F64f1ZBZSL4nOygLqkhxutUBMgaXn.t7PeQwsfy0gWE5FQ7wvEwG');

INSERT INTO usuarios (nome_usuario, cpf_usuario, endereco_usuario, telefone_usuario, email_usuario, senha_usuario)
VALUES ('Marcos', '12345678909', '456, Avenida dos Sonhos, Bairro dos Ilusões, RJ', '21987654321', 'marcos@mail.com', '$2y$10$9BYLWbJKGB3vE8nGIKT04.hn0gkWC6Yuz2XKJ4j3/5N1SuirKtYW2');

-- Inserir dados de roles
INSERT INTO role (authority) VALUES ('ROLE_COMUM');
INSERT INTO role (authority) VALUES ('ROLE_ADMIN');

-- Inserir dados de relação entre usuários e roles
INSERT INTO usuario_role (id_usuario, id_role) VALUES (1, 2);
INSERT INTO usuario_role (id_usuario, id_role) VALUES (2, 1);

-- Inserir dados de empresas
INSERT INTO empresas (nome_empresa, cnpj_empresa, endereco_empresa, telefone_empresa) VALUES
    ('InovaSoft', '12345678901234', 'Rua Criatividade, 1, Bairro Imaginário, RJ', '21987654321'),
    ('TecnoGadgets', '23456789012345', 'Avenida dos Avanços, 2, Bairro da Inovação, RJ', '21345678901'),
    ('EcoSoluções', '34567890123456', 'Travessa do Sustentável, 3, Bairro Verdejante, RJ', '21789012345'),
    ('ModaFutura', '45678901234567', 'Praça das Tendências, 4, Bairro da Moda, RJ', '21901234567'),
    ('SaúdeBio', '56789012345678', 'Alameda da Saúde, 5, Bairro Vital, RJ', '21567890123'),
    ('CódigosArtes', '67890123456789', 'Estrada da Inovação, 6, Bairro dos Desenvolvedores, RJ', '21890123456'),
    ('DelíciasGourmet', '78901234567890', 'Avenida dos Sabores, 7, Bairro Gastronômico, RJ', '21456789012'),
    ('MaravilhasNatureza', '89012345678901', 'Rua da Exploração, 8, Bairro Natural, RJ', '21234567890'),
    ('TecnologiaNasAlturas', '90123456789012', 'Travessa das Alturas, 9, Bairro Tecnológico, RJ', '21901234567'),
    ('ArtesanatoArte', '01234567890123', 'Praça das Artes, 10, Bairro Criativo, RJ', '21789012345');

-- Inserir dados de produtos
INSERT INTO produtos (nome_produto, valor_produto, avaliacao_produto, img_url, descricao_produto) VALUES
    ('Notebook TechMaster', 2599.99, 8, 'https://m.media-amazon.com/images/I/61nfZWK4oqL._AC_UL320_.jpg', 'Produto de alta qualidade para suas necessidades tecnológicas.'),
    ('Conjunto FashionStyle', 129.99, 7, 'https://m.media-amazon.com/images/I/319zawzK-6L._AC_UL320_.jpg', 'Roupas modernas e confortáveis para acompanhar as tendências.'),
    ('Smartwatch ConnectX', 299.99, 9, 'https://m.media-amazon.com/images/I/71s7fVYV1kL._AC_UL320_.jpg', 'Gadget inovador para facilitar o seu dia a dia e aumentar sua produtividade.'),
    ('Cesta Gourmet Delight', 89.99, 6, 'https://m.media-amazon.com/images/I/919m-XAO+RL._AC_UL320_.jpg', 'Alimento gourmet para os paladares mais exigentes.'),
    ('Kit Saúde Natural', 149.99, 10, 'https://m.media-amazon.com/images/I/61T3fPaP83L._AC_UL320_.jpg', 'Produtos naturais para cuidar da sua saúde e bem-estar.'),
    ('Escultura Artesanal', 199.99, 8, 'https://m.media-amazon.com/images/I/51PEEtd9AyL._AC_UL320_.jpg', 'Obra de arte única, feita à mão por artesãos talentosos.');

-- Associar os produtos às empresas
    INSERT INTO empresa_produto (id_empresa, id_produto) VALUES
    (1, 1),  -- InovaSoft -> Notebook TechMaster
    (4, 2),  -- ModaFutura -> Conjunto FashionStyle
    (6, 3),  -- CodeCrafters -> Smartwatch ConnectX
    (7, 4),  -- DelíciasGourmet -> Cesta Gourmet Delight
    (5, 5),  -- SaúdeBio -> Kit Saúde Natural
    (10, 6); -- ArtesanatoArte -> Escultura Artesanal