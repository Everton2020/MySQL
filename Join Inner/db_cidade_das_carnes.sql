-- Criando banco de dados
create database db_cidade_das_carnes;
use db_cidade_das_carnes;

-- Criando primeira tabela
create table tb_categoria(
id bigint(10) auto_increment,
fornecedor varchar(40) not null,
nf bigint(10),
recebimento date,
primary key (id)
);

-- Criando segunda tabela
create table tb_produto(
id bigint(10) auto_increment,
nome varchar(50) not null,
preco decimal(6,2) not null,
setor varchar(20) not null,
validade date not null,
qtde bigint(3),
categoria_id bigint(10),

primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Populando primeira tabela
insert into tb_categoria (fornecedor, nf, recebimento)
value("AURORA ALIMENTOS",023415,"2020-05-30");
insert into tb_categoria (fornecedor, nf, recebimento)
value("FRIBOI Ltda.",486744,"2020-06-25");
insert into tb_categoria (fornecedor, nf, recebimento)
value("SEARA ALIMENTOS",564654,"2020-04-15");
insert into tb_categoria (fornecedor, nf, recebimento)
value("SADIA ALIMENTOS",456213,"2020-01-22");
insert into tb_categoria (fornecedor, nf, recebimento)
value("GRANJA DOIS IRMÃOS",984784,"2020-09-01");

-- Populando segunda tabela
insert into tb_produto (nome,preco,setor,validade,qtde,categoria_id)
value("Linguiça Toscana Aurora 5kg",71.75,"FREEZER","2021-03-10",50,1);
insert into tb_produto (nome,preco,setor,validade,qtde,categoria_id)
value("Caixa Ovos Branco c/30",12.90,"MERCEARIA","2020-11-30",200,5);
insert into tb_produto (nome,preco,setor,validade,qtde,categoria_id)
value("Contra Filé Friboi Vacuo 1,5kg",34.35,"AÇOUGUE","2020-12-09",150,2);
insert into tb_produto (nome,preco,setor,validade,qtde,categoria_id)
value("Peito frango Sadia cong. 1kg",16.99,"FREEZER","2020-10-10",50,4);
insert into tb_produto (nome,preco,setor,validade,qtde,categoria_id)
value("Salsicha Seara trad. 500g",8.55,"FREEZER","2021-02-12",100,3);
insert into tb_produto (nome,preco,setor,validade,qtde,categoria_id)
value("Costela Gaucha 1kg",22.99,"AÇOUGUE","2020-10-20",100,2);
insert into tb_produto (nome,preco,setor,validade,qtde,categoria_id)
value("Linguiça Calabresa Aurora 5kg",87.35,"AÇOUGUE","2021-03-22",50,1);
insert into tb_produto (nome,preco,setor,validade,qtde,categoria_id)
value("Coxão Mole Friboi Vacuo 1,5kg",30.21,"AÇOUGUE","2020-12-09",200,2);

-- Seletores
select * from tb_produto join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_produto.preco > 50;

select * from tb_produto join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_produto.preco > 3 and tb_produto.preco < 60;

select * from tb_produto join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_produto.nome like "%co%";

select * from tb_produto join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_produto.setor = "FREEZER";