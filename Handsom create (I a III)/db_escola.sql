-- Criação banco de dados
create database db_escola;
use db_escola;

-- Criação da tabela
create table tb_alunos(
id bigint(10)auto_increment,
nome varchar(50)not null,
nascimento date not null,
endereço varchar(100),
serie varchar(10)not null,
nota decimal(2,1),
primary key(id)
);

select * from tb_alunos;

-- Populando tabela 
insert into tb_alunos(nome,nascimento,endereço,serie,nota) 
value ("Cirilo","2008-10-13","Rua das Laranjeiras 365","6A",7);
insert into tb_alunos(nome,nascimento,endereço,serie,nota)
value("Jonas","2008-05-21","Rua das Carmelias 34","6B",8.5);
insert into tb_alunos(nome,nascimento,endereço,serie,nota)
value ("Joaquim","2009-02-21","Rua das Margaridas 255","5C",7.2);
insert into tb_alunos(nome,nascimento,endereço,serie,nota) 
value ("Shigeru","2005-01-30","Rua dos Alamos 25","9B",9.5);
insert into tb_alunos(nome,nascimento,endereço,serie,nota) 
value ("Sofia","2009-02-20","Rua dos Tupinambas 5","5A",8.5);
insert into tb_alunos(nome,nascimento,endereço,serie,nota) 
value ("Enzo","2010-09-5","Rua dos Tapajos 556","4C",8);
insert into tb_alunos(nome,nascimento,endereço,serie,nota) 
value ("Clara","2004-10-13","Rua dos Tapajos 115","1A",7.5);
insert into tb_alunos(nome,nascimento,endereço,serie,nota) 
value ("Priscila","2008-11-14","Rua dos Canudos 4455","6A",9.5);
insert into tb_alunos(nome,nascimento,endereço,serie,nota) 
value ("Clarice","2009-11-1","Rua das Carmelias 365","5A",7.5);

-- testes
update tb_alunos set nota = 6.5 where id = 3;
select * from tb_alunos where nota < 7;
-- select * from tb_alunos where nota < 7;

