create database db_generation_game_online;
use db_generation_game_online;
create table tb_classes(
id bigint auto_increment,
nomeClasse varchar(20) not null,
usaMagia boolean,
primary key(id)
);
create table tb_personagens(
id bigint auto_increment,
nomePersonagem varchar(20) not null,
Sexo char(1) not null,
poder int not null,
defesa int not null,
primary key(id),
classes_id bigint,
foreign key(classes_id) references tb_classes(id)
);
INSERT INTO tb_classes (nomeClasse, usaMagia) VALUES ("Arqueiro", false);
INSERT INTO tb_classes (nomeClasse, usaMagia) VALUES ("Mago", true);
INSERT INTO tb_classes (nomeClasse, usaMagia) VALUES ("Cavaleiro", false);
INSERT INTO tb_classes (nomeClasse, usaMagia) VALUES ("Feitiçeira", true);

select * from tb_classes;

INSERT INTO tb_personagens (nomePersonagem, sexo, poder, defesa, classes_id)
VALUES ("caçadoraDeCabeças","M",1200, 2000,1);
INSERT INTO tb_personagens (nomePersonagem, sexo, poder, defesa, classes_id)
VALUES ("Demolidor","M",1200, 2000,2);
INSERT INTO tb_personagens (nomePersonagem, sexo, poder, defesa, classes_id)
VALUES ("Hanter","F",4500, 2000,3);
INSERT INTO tb_personagens (nomePersonagem, sexo, poder, defesa, classes_id)
VALUES ("Demor","M",7200, 2000,4);
INSERT INTO tb_personagens (nomePersonagem, sexo, poder, defesa, classes_id)
VALUES ("Matador02","M",1500, 3000,2);
INSERT INTO tb_personagens (nomePersonagem, sexo, poder, defesa, classes_id)
VALUES ("MataNub","M",3200, 2000,3);
INSERT INTO tb_personagens (nomePersonagem, sexo, poder, defesa, classes_id)
VALUES ("Hanter94","F",4200, 2300,4);
INSERT INTO tb_personagens (nomePersonagem, sexo, poder, defesa, classes_id)
VALUES ("DemonioDaLz","M",7200, 5000,1);
INSERT INTO tb_personagens (nomePersonagem, sexo, poder, defesa, classes_id)
VALUES ("vingadora","F",1500, 3000,2);


select * from tb_personagens where poder > 2000;
select * from tb_personagens where defesa between 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nomePersonagem  LIKE "%C%";
 
 SELECT nomePersonagem, sexo, poder, defesa, tb_classes.nomeClasse as classe
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

SELECT nomePersonagem, sexo, poder, defesa, tb_classes.nomeClasse as classe
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.nomeClasse = "Arqueiro";
