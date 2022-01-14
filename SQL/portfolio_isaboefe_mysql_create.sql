CREATE TABLE `tb_secoes` (
	`id_secoes` DECIMAL NOT NULL AUTO_INCREMENT,
	`categoria` varchar(255) NOT NULL,
	`descricao` varchar(1000) NOT NULL,
	`ano` DECIMAL NOT NULL,
	PRIMARY KEY (`id_secoes`)
);

CREATE TABLE `tb_trabalhos` (
	`id_trabalhos` DECIMAL NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`descricao` varchar(2000) NOT NULL,
	`ficha técnica` varchar(2000) NOT NULL,
	`imagem` BINARY NOT NULL,
	`video` BINARY NOT NULL,
	`exibicao/montagem` varchar(255) NOT NULL,
	`fk_secoes_id` DECIMAL NOT NULL,
	PRIMARY KEY (`id_trabalhos`)
);

ALTER TABLE `tb_trabalhos` ADD CONSTRAINT `tb_trabalhos_fk0` FOREIGN KEY (`fk_secoes_id`) REFERENCES `tb_secoes`(`id_secoes`);



