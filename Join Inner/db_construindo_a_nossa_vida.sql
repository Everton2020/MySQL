-- Criando Banco de Dados
create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

-- Criando primeira tabela
create table tb_categoria(
id bigint(10) auto_increment,
categoria varchar(30) not null,
fornecedor varchar(30),
telefone varchar(15),
primary key(id)
);

-- Criando segunda tabela
create table tb_produtos(
id bigint(10) auto_increment,
nome varchar(50) not null,
preco decimal (6,2) not null,
situacao boolean,
qtde bigint(3) not null,
categoria_id bigint(10),

primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Populando primeira tabela 
insert into tb_categoria (categoria,fornecedor,telefone)
value ("HIDRAULICA","TIGRE","(92) 3615-4946");
insert into tb_categoria (categoria,fornecedor,telefone)
value ("CIMENTOS","VOTORANTIM","(11) 4003-9894");
insert into tb_categoria (categoria,fornecedor,telefone)
value ("TIJOLOS","NOVA CONQUISTA","(15) 3322-8400");
insert into tb_categoria (categoria,fornecedor,telefone)
value ("PISO","DURAFLOOR","0800 770 3872");
insert into tb_categoria (categoria,fornecedor,telefone)
value ("VASOS E PIAS","CELITE","0800 701 1300");

-- Populando segunda tabela
insert into tb_produtos (nome,preco,situacao,qtde,categoria_id)
value("Tubo soldável 6 metros 3/4 Tigre",24.90,true,100,1);
insert into tb_produtos (nome,preco,situacao,qtde,categoria_id)
value("Joelho 90° soldável 3/4 Tigre",0.79,true,100,1);
insert into tb_produtos (nome,preco,situacao,qtde,categoria_id)
value("Cimento Todas as Obras 50kg",25.99,true,300,2);
insert into tb_produtos (nome,preco,situacao,qtde,categoria_id)
value("Cimento Queimado Pronto Platina 5kg",55.49,true,50,2);
insert into tb_produtos (nome,preco,situacao,qtde,categoria_id)
value("Bloco cerâmico 14x19x29cm",1.49,true,800,3);
insert into tb_produtos (nome,preco,situacao,qtde,categoria_id)
value("Bloco cerâmico 11,5x14x24cm",0.79,false,0,3);
insert into tb_produtos (nome,preco,situacao,qtde,categoria_id)
value("Piso laminado Durafloor C: 1340cm x L: 187cm",144.04,true,150,4);
insert into tb_produtos (nome,preco,situacao,qtde,categoria_id)
value("Piso vinílico de cola Urban Cartagena 122x18,8cm",242.56,true,50,4);
insert into tb_produtos (nome,preco,situacao,qtde,categoria_id)
value("Kit bacia Celite com caixa acoplada",329.90,false,0,5);
insert into tb_produtos (nome,preco,situacao,qtde,categoria_id)
value("Lavatório de coluna City",164.90,true,125,5);

-- Seletores
select * from tb_produtos join tb_categoria
on tb_produtos.categoria_id = tb_categoria.id;

select * from tb_produtos join tb_categoria
on tb_produtos.categoria_id = tb_categoria.id
where tb_produtos.preco > 50;

select * from tb_produtos join tb_categoria
on tb_produtos.categoria_id = tb_categoria.id
where tb_produtos.preco >= 3 and tb_produtos.preco <=60;

select * from tb_produtos join tb_categoria
on tb_produtos.categoria_id = tb_categoria.id
where tb_produtos.nome like "%Ci%";

select * from tb_produtos join tb_categoria
on tb_produtos.categoria_id = tb_categoria.id
where tb_categoria.categoria = "hidraulica";