-- Cria o banco de dados
CREATE DATABASE MeuBancoDeDados;
GO

-- Usa o banco de dados criado
USE MeuBancoDeDados;
GO

-- Cria uma tabela simples
CREATE TABLE MinhaTabela (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(50),
    Sobrenome NVARCHAR(50),
    Email NVARCHAR(50)
);
GO

-- Cria um novo login
CREATE LOGIN MeuUsuario WITH PASSWORD = 'Complex@123';
GO

-- Cria um usuário para o login
CREATE USER MeuUsuario FOR LOGIN MeuUsuario;
GO

-- Adiciona o usuário ao role de datareader, para que ele possa ler os dados
EXEC sp_addrolemember 'db_datareader', 'MeuUsuario';
GO

-- Adiciona o usuário ao role de datawriter, para que ele possa modificar os dados
EXEC sp_addrolemember 'db_datawriter', 'MeuUsuario';
GO