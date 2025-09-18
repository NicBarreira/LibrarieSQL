create database biblioteca;
USE biblioteca;

create table livro(
livro_id int primary key,
titulo_livro varchar(300),
autor_livro varchar(300),
ano_publicacao int
);

create table usuario(
usuario_id int Primary key,
nome_usuario varchar(300),
email_usuario varchar(300),
data_nascimento date
);

create table emprestimo(
emprestimo_id int primary key,
livro_id int,
usuario_id int,
data_emprestimo date,
data_devolucao date,
foreign key(livro_id) references livro(livro_id),
foreign key(usuario_id) references usuario(usuario_id)
);

INSERT INTO livro(livro_id, titulo_livro, autor_livro, ano_publicacao) VALUES (1, "Livro A", "Nicolas", 2019),
(2, "Livro B", "Emilly", 2008), (3, "Livro C", "SeiLa", 2000);

INSERT INTO usuario(usuario_id, nome_usuario, email_usuario, data_nascimento) VALUES(1, "Nicolas", "nicolas@gmail.com", '2005-11-24'),
(2, "Emilly", "emilly@gmail.com", '2005-08-10'), (3, "Marcos", "Marcos@gmail.com", '1975-10-02');

INSERT INTO emprestimo(emprestimo_id, livro_id, usuario_id, data_emprestimo, data_devolucao) VALUES(1, 1, 1, '2025-09-17', '2025-09-24'),
(2, 2, 2, '2025-09-21', '2025-09-28');

select * from livro;
select * from usuario;
select * from emprestimo;









