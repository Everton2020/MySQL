-- Criando banco de dados
create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

-- Criando primeira tabela
create table tb_categoria(
id bigint(10) auto_increment,
area varchar(50) not null,
bloco varchar(15) not null,
professor varchar(50) not null,

primary key(id)
);

-- Criando segunda tabela
create table tb_curso(
id bigint(10) auto_increment,
nome varchar(50) not null,
preco decimal (6,2),
nivel varchar(30),
avaliacao varchar(5),
categoria_id bigint(10),

primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Populando primeira tabela
insert into tb_categoria (area,bloco,professor)
value ("TECNOLOGIA","1-AZUL","Moacyr");
insert into tb_categoria (area,bloco,professor)
value ("SAUDE","2-VERDE","Ana Clara");
insert into tb_categoria (area,bloco,professor)
value ("FINANÇAS","3-LARANJA","Caetano");
insert into tb_categoria (area,bloco,professor)
value ("ENGENHARIA","4-AMARELO","Priscila");
insert into tb_categoria (area,bloco,professor)
value ("GASTRONOMIA","5-VERMELHO","Juca");

-- Populando segunda tabela

insert into tb_curso (nome,preco,nivel,avaliacao,categoria_id)
value("JAVA I",80.99,"iniciante","8/10",1);
insert into tb_curso (nome,preco,nivel,avaliacao,categoria_id)
value("JAVA II",189.99,"intermediario","7/10",1);
insert into tb_curso (nome,preco,nivel,avaliacao,categoria_id)
value("CONTABILIDADE I",159.99,"iniciante","8/10",3);
insert into tb_curso (nome,preco,nivel,avaliacao,categoria_id)
value("ECONOMIA I",209.99,"intermediario","7/10",3);
insert into tb_curso (nome,preco,nivel,avaliacao,categoria_id)
value("PÃES I",53.99,"iniciante","10/10",5);
insert into tb_curso (nome,preco,nivel,avaliacao,categoria_id)
value("COZINHA ITALIANA",109.99,"intermediario","9/10",5);
insert into tb_curso (nome,preco,nivel,avaliacao,categoria_id)
value("CUIDADOS DE IDOSOS",239.99,"intermediario","10/10",2);
insert into tb_curso (nome,preco,nivel,avaliacao,categoria_id)
value("ENG. ELETRICA I",209.99,"basico","8/10",4);

-- Seletores

select * from tb_curso join tb_categoria
on tb_curso.categoria_id = tb_categoria.id
where tb_curso.preco > 50;

select * from tb_curso join tb_categoria
on tb_curso.categoria_id = tb_categoria.id
where tb_curso.preco >= 3 and tb_curso.preco <=60;  

select * from tb_curso join tb_categoria
on tb_curso.categoria_id = tb_categoria.id
where tb_curso.nome like "%JAV%";

select * from tb_curso join tb_categoria
on tb_curso.categoria_id = tb_categoria.id;

select * from tb_curso join tb_categoria
on tb_curso.categoria_id = tb_categoria.id
where tb_categoria.area = "TECNOLOGIA";