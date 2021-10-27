CREATE TABLE `tb_usuario` (
	`email` varchar(100) NOT NULL,
	`nome` varchar(100) NOT NULL,
	`senha` varchar(8) NOT NULL,
	PRIMARY KEY (`email`)
);

CREATE TABLE `tb_postagem` (
	`id_postagem` bigint NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL,
	`texto` varchar(8000) NOT NULL,
	`curtida` int NOT NULL,
	`imagem` longblob NOT NULL,
	`fk_email` varchar(100) NOT NULL,
	`fk_id_tema` bigint NOT NULL,
	PRIMARY KEY (`id_postagem`)
);

CREATE TABLE `tb_tema` (
	`id_tema` bigint NOT NULL AUTO_INCREMENT,
	`categoria` varchar(255) NOT NULL,
	`salvar` BINARY NOT NULL,
	`alta_dia` BOOLEAN NOT NULL,
	PRIMARY KEY (`id_tema`)
);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`fk_email`) REFERENCES `tb_usuario`(`email`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk1` FOREIGN KEY (`fk_id_tema`) REFERENCES `tb_tema`(`id_tema`);




