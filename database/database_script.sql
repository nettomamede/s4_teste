CREATE DATABASE IF NOT EXISTS s4_supplys;

CREATE USER 's4user'@'localhost' IDENTIFIED BY 'dev123*#@';
GRANT ALL PRIVILEGES ON s4_supplys.* TO 's4user'@'localhost';
FLUSH PRIVILEGES;

USE s4_supplys;

CREATE TABLE IF NOT EXISTS Product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO Product (name, description, price) VALUES ('Smartphone 5G', 'Smartphone ABC 5G, tela 6.5", 128GB armazenamento', 2500.00);
INSERT INTO Product (name, description, price) VALUES ('Smart TV 50"', 'Smart TV 50 polegadas, 4K, conectividade Wi-Fi e Bluetooth', 3200.00);
INSERT INTO Product (name, description, price) VALUES ('Cafeteira Elétrica', 'Cafeteira Elétrica DEF, capacidade de 2 litros, preta', 150.00);
INSERT INTO Product (name, description, price) VALUES ('Fone de Ouvido Bluetooth', 'Fone de Ouvido Bluetooth XYZ, cancelamento de ruído', 450.00);
INSERT INTO Product (name, description, price) VALUES ('Tablet 8"', 'Tablet 8 polegadas, 64GB, Wi-Fi, bateria de longa duração', 1100.00);
INSERT INTO Product (name, description, price) VALUES ('Teclado Mecânico', 'Teclado Mecânico RGB, switches Cherry MX Blue', 350.00);
INSERT INTO Product (name, description, price) VALUES ('Mouse Gamer', 'Mouse Gamer com 12 botões programáveis e sensor de 16000 DPI', 280.00);
INSERT INTO Product (name, description, price) VALUES ('Câmera Digital', 'Câmera Digital XYZ, 20MP, zoom óptico 15x, vídeo 4K', 2200.00);
INSERT INTO Product (name, description, price) VALUES ('Impressora 3D', 'Impressora 3D DEF, volume de impressão 25x25x25 cm, compatível com PLA e ABS', 3200.00);
INSERT INTO Product (name, description, price) VALUES ('Notebook Gamer Pro', 'Notebook Gamer Pro, tela 17", processador i9, 32GB RAM, SSD 1TB', 7600.00);
INSERT INTO Product (name, description, price) VALUES ('Tablet Pro', 'Tablet Pro 12", 256GB armazenamento, 4G LTE', 3200.00);
INSERT INTO Product (name, description, price) VALUES ('Smartphone X', 'Smartphone X, tela 6.2", 128GB, câmera tripla', 4100.00);
INSERT INTO Product (name, description, price) VALUES ('Smartwatch Fitness', 'Smartwatch Fitness com monitoramento cardíaco e GPS', 900.00);
INSERT INTO Product (name, description, price) VALUES ('Câmera DSLR', 'Câmera DSLR, 24MP, lentes intercambiáveis', 2500.00);
INSERT INTO Product (name, description, price) VALUES ('Drone com Câmera 4K', 'Drone com capacidade de filmagem 4K, 60fps', 4800.00);
INSERT INTO Product (name, description, price) VALUES ('Console de Videogame', 'Console de última geração, 1TB SSD, suporte a 4K', 5000.00);
INSERT INTO Product (name, description, price) VALUES ('Fone de Ouvido sem Fio', 'Fone de Ouvido sem Fio, cancelamento de ruído', 600.00);
INSERT INTO Product (name, description, price) VALUES ('Teclado Mecânico RGB', 'Teclado Mecânico com iluminação RGB e teclas programáveis', 450.00);
INSERT INTO Product (name, description, price) VALUES ('Mouse Gamer', 'Mouse Gamer, 16000 DPI, 8 botões programáveis', 350.00);
INSERT INTO Product (name, description, price) VALUES ('Monitor 4K', 'Monitor 4K, 32", tempo de resposta 1ms', 4400.00);
INSERT INTO Product (name, description, price) VALUES ('Notebook Ultrafino', 'Notebook Ultrafino, tela 14", processador i5, 8GB RAM, SSD 256GB', 4200.00);
INSERT INTO Product (name, description, price) VALUES ('Impressora 3D', 'Impressora 3D, volume de impressão 25x25x25 cm', 3000.00);
INSERT INTO Product (name, description, price) VALUES ('Sistema de Som', 'Sistema de Som 5.1 Canais, 500W RMS', 2200.00);
INSERT INTO Product (name, description, price) VALUES ('Smart TV 4K', 'Smart TV 4K, 55", HDR10, Dolby Vision', 4600.00);
INSERT INTO Product (name, description, price) VALUES ('Câmera de Segurança Wi-Fi', 'Câmera de Segurança Wi-Fi, visão noturna, detecção de movimento', 800.00);
INSERT INTO Product (name, description, price) VALUES ('Roteador Wi-Fi 6', 'Roteador Wi-Fi 6, suporte a múltiplas conexões simultâneas', 1200.00);
INSERT INTO Product (name, description, price) VALUES ('Carregador Portátil', 'Carregador Portátil 20000mAh, 2 portas USB', 150.00);
INSERT INTO Product (name, description, price) VALUES ('Assistente Virtual', 'Assistente Virtual com IA, controle de voz', 700.00);
INSERT INTO Product (name, description, price) VALUES ('Kit de Iluminação Inteligente', 'Kit de Iluminação Inteligente, controle por app, RGB', 500.00);
