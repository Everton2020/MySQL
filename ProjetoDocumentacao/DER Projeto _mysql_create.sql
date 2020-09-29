CREATE TABLE `tb_usuario` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`nomecompleto` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_categoria` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`nomecateg` varchar(255) NOT NULL,
	`setor` varchar(255) NOT NULL,
	`situacao` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_produto` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`preco` DECIMAL(10,2) NOT NULL,
	`endereco` varchar(255) NOT NULL,
	`descricao` varchar(255) NOT NULL,
	`categoria_id` INT(10) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_produto` ADD CONSTRAINT `tb_produto_fk0` FOREIGN KEY (`categoria_id`) REFERENCES `tb_categoria`(`id`);

