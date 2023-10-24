USE bd_vsconnect;

INSERT INTO tb_usuario VALUES (
   UUID_TO_BIN(UUID()),
   "Jessica",
   "Jessica@email.com",
   "senai@134",
   "Rua amadis, 50",
   "04221000",
   0
);

INSERT INTO tb_usuario VALUES (
   UUID_TO_BIN(UUID()),
	"Cristiano",
   "Cristiano@email.com",
   "senai@134",
   "Rua amadis, 50",
   "04221000",
   0
);

INSERT INTO tb_usuario VALUES (
   UUID_TO_BIN(UUID()),
	"Gabriela",
   "Gabriela@email.com",
   "senai@134",
   "Rua amadis, 50",
   "04221000",
   0
);

INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "html");
INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "css");

SELECT * FROM tb_usuario WHERE id = UUID_TO_BIN("488eba6b-6ed2-11ee-8e29-b445067b7f9b");

DELETE FROM tb_usuario WHERE id = UUID_TO_BIN("488eba6b-6ed2-11ee-8e29-b445067b7f9b");

UPDATE tb_usuario SET tipo_usuario  = 1 WHERE id = UUID_TO_BIN("46155a03-6ed2-11ee-8e29-b445067b7f9b");


SELECT * FROM tb_servico;


INSERT INTO tb_servico VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("46155a03-6ed2-11ee-8e29-b445067b7f9b"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("46155a03-6ed2-11ee-8e29-b445067b7f9b"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("46155a03-6ed2-11ee-8e29-b445067b7f9b"), NULL);

SELECT * FROM tb_tech_servico;

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("8a7c918a-6ed3-11ee-8e29-b445067b7f9b"), UUID_TO_BIN("93dc2dd7-6edc-11ee-8e29-b445067b7f9b")
);

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("8a7c918a-6ed3-11ee-8e29-b445067b7f9b"), UUID_TO_BIN("93dc2dd7-6edc-11ee-8e29-b445067b7f9b")
);

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("8a7c918a-6ed3-11ee-8e29-b445067b7f9b"), UUID_TO_BIN("93dc2dd7-6edc-11ee-8e29-b445067b7f9b")
);

SELECT BIN_TO_UUID(id), nome from tb_usuario;

SELECT * FROM tb_dev_tech;

INSERT INTO tb_dev_tech VALUES (
	UUID_TO_BIN("46155a03-6ed2-11ee-8e29-b445067b7f9b"), UUID_TO_BIN("8a7c918a-6ed3-11ee-8e29-b445067b7f9b")
);

SELECT BIN_TO_UUID(id), nome, tipo_usuario from tb_usuario;
SELECT BIN_TO_UUID(id), nome from tb_tech;
SELECT BIN_TO_UUID(id), titulo from tb_servico;

SELECT * FROM tb_cotacao;

INSERT INTO tb_cotacao VALUES (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("46155a03-6ed2-11ee-8e29-b445067b7f9b"),
    UUID_TO_BIN("93dc2dd7-6edc-11ee-8e29-b445067b7f9b"),
    500.00
);