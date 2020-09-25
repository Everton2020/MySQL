-- Criando banco de dados
create database db_ecommerce;
use db_ecommerce;

-- Criando primeira tabela
create table tb_categoria(
id bigint(10) auto_increment,
setor varchar(50) not null,
perecivel boolean,
situacao boolean,
primary key(id)
);

-- Criando segunda tabela
create table tb_produto(
id bigint(10) auto_increment,
nome varchar(40) not null,
cor varchar(20),
marca varchar(30)not null,
qtde int(3),
preco decimal(7,2),
categoria_id bigint(10),

primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Populando primeira tabela 

insert into tb_categoria (setor,perecivel,situacao)
value("TECNOLOGIA",false,true);
insert into tb_categoria (setor,perecivel,situacao)
value("ALIMENTACAO",true,true);
insert into tb_categoria (setor,perecivel,situacao)
value("VESTUARIO",false,true);
insert into tb_categoria (setor,perecivel,situacao)
value("ELETRODOMESTICO",false,true);
insert into tb_categoria (setor,perecivel,situacao)
value("CASA & BANHO",false,true);

-- Populando segunda tabela
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("XBOX ONE S","BRANCO","MICROSOFT",50,1999.99,1);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("PLAYSTATION 4","PRETO","SONY",75,2499.99,1);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("TVLG 32","PRETO","LG",30,1499.99,4);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("FRITADEIRA AIRFRYER","BRANCO","PHILIPS WALITA",75,499.99,4);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("FURADEIRA","VERDE","BOSCH",15,149.99,4);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("NINTENDO SWITCH","CINZA","NINTENDO",10,2499.99,1);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("CELULAR IPHONE 7","PRATA","APPLE",75,2299.99,1);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("TENIS VANS CLASSIC","PRETO","VANS",75,399.99,3);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("SALGADINHO CHETTOS"," ","ELMA CHIPS",275,2.99,2);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("ARMARIO","MARFIM","BARTIRA",30,399.99,5);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("MEIA 30-34","BRANCO","LUPO",300,19.99,3);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("CERVEJA ENGRADADO"," ","CRYSTAL",100,19.99,2);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("VESTIDO","VERMELHO","DAFFITI",50,49.99,3);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("ARROZ 5kg"," ","TIO JOÃO",400,25.99,2);
insert into tb_produto (nome,cor,marca,qtde,preco,categoria_id)
value("GELADEIRA","INOX","SAMSUNG",60,2999.99,4);

-- Seletores
select * from tb_produto join tb_categoria
on tb_produto.categoria_id = tb_categoria.id where preco > 2000;

select * from tb_produto join tb_categoria
on tb_produto.categoria_id = tb_categoria.id where preco > 1000 and preco <=2000;

select * from tb_produto join tb_categoria
on tb_produto.categoria_id = tb_categoria.id where nome like "%c%";
