-- Criação do banco de dados
create database db_storage;
use db_storage;
-- Criação da tabela

create table tb_produtos(
id bigint(6) auto_increment,
nome varchar(50) not null,
marca varchar(30) not null,
cor varchar(20) not null,
roupasize varchar (2),
calcadosize int(2),
qtde int(3),
situacao boolean,
preco decimal(10,2),
primary key (id)
);
 select * from tb_produtos;

-- Populando a tabela
insert into tb_produtos(nome,marca,cor,roupasize,qtde,situacao,preco)
value ("Camisa polo","Polo Ralph Lauren","AZUL","M",5,true,229.99);
insert into tb_produtos(nome,marca,cor,calcadosize,qtde,situacao,preco)
value ("Tenis Adidas Star","Adidas","BRANCO",40,10,true,449.99);
insert into tb_produtos (nome,marca,cor,roupasize,qtde,situacao,preco)
value ("Camisa Social","Fatto a Mano","TURQUESA","G",10,true,99.99);
insert into tb_produtos(nome,marca,cor,qtde,situacao,preco)
value("Celular ZENFONE 6 128GB","Asus","PRATA",25,1,2999.99);
insert into tb_produtos(nome,marca,cor,calcadosize,qtde,situacao,preco)
value("Sapatilha florida","Kolosh","PRETO","35",10,1,109.99);
insert into tb_produtos(nome,marca,cor,calcadosize,qtde,situacao,preco)
value("Bota Tracking","Timberland","MARROM","40",5,1,449.99);
insert into tb_produtos(nome,marca,cor,calcadosize,qtde,situacao,preco)
value("Chinelo","Havaianas","Roxo","37",50,1,45.99);
insert into tb_produtos (nome,marca,cor,roupasize,qtde,situacao,preco)
value ("Vestido","Belle Brand","Branco","P",10,false,79.99);

select * from tb_produtos;
update tb_produtos set preco = 599.99 where id = 2;
update tb_produtos set qtde = 0 where id = 8;
select * from tb_produtos where preco < 500;
-- select * from tb_produtos where preco > 500;
