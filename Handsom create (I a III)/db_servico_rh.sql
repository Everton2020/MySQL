-- Criação banco de dados
create database db_servico_funcionario;
use db_servico_funcionario;

-- Criação da Tabela
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(30) not null,
funcao varchar(30) not null,
admissao date,
salario decimal(10,2),
situacao boolean,
primary key (id)
);
select * from tb_funcionarios;

insert into tb_funcionarios(nome,funcao,admissao,salario,situacao) value ("Everton","Desenvolvedor Jr","2010-11-25",2000.00,true);
insert into tb_funcionarios(nome,funcao,admissao,salario,situacao) value ("Lucas","Desenvolvedor Senior","2000-03-09",10543.65,false);
insert into tb_funcionarios(nome,funcao,admissao,salario,situacao) value ("Geandro","Trainee","2015-05-25",3565.94,true);
insert into tb_funcionarios(nome,funcao,admissao,salario,situacao) value ("João Vitor","Desenvolvedor Jr","2008-07-21",1850.00,true);
insert into tb_funcionarios(nome,funcao,admissao,salario,situacao) value ("Maria Aparecida","RH","2005-06-25",3518.00,false);

select * from tb_funcionarios;

-- update tb_funcionarios set salario = 1999 where id = 1

-- select * from tb_funcionarios where salario > 2000

select * from tb_funcionarios where salario < 2000;