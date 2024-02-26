# S4_teste

Este aplicativo exemplifica de forma simples a utilização da biblioteca Flask em Python.

## Configuração

```
pip3 install -U Flask
```

```
pip3 install Flask-SQLAlchemy
```

```
pip3 install Flask-migrate
```

```
pip3 install mysql
```

```
pip3 install flask-mysql
```

```
pip3 install --upgrade mysql-connector-python
```

## Banco de dados

```sql
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
```

## Design

O design é bem simples, irei continuar estudando essa parte de css para melhorar os proximos projetos

## Estrutura do projeto

Deixei os codigos separados por pastas, a pasta do "database" é onde ficou o script do banco de dados, a pasta "templates" é onde ficou toda a parte de html, e o arquivo "models.py" é está a classe Produto e os métodos das operações CRUD





