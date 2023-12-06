create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tipoDePizza varchar(20) not null,
bordaRecheada boolean not null,
primary key(id)
);

select * from tb_categorias;

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(30) not null,
quantidadePedacos int not null,
refrigerante boolean,
preco decimal (5,2) not null,
categoria_id bigint not null,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_categorias (tipoDePizza,bordaRecheada) values ("Salgada", true); -- 1
insert into tb_categorias (tipoDePizza,bordaRecheada) values ("doce", true); -- 4
insert into tb_categorias (tipoDePizza,bordaRecheada) values ("doce", false); -- 2
insert into tb_categorias (tipoDePizza,bordaRecheada) values ("Salgada", false); -- 5
insert into tb_categorias (tipoDePizza,bordaRecheada) values ("dois sabores", true); -- 6
insert into tb_categorias (tipoDePizza,bordaRecheada) values ("dois sabores", false); -- 3

select * from tb_categorias;

INSERT INTO tb_pizzas (sabor, quantidadePedacos, refrigerante, preco, categoria_id)
VALUES ("Queijo", 8, true, 49.00,1);
INSERT INTO tb_pizzas (sabor, quantidadePedacos, refrigerante, preco, categoria_id)
VALUES ("Baiana", 2, false, 10.00,5);
INSERT INTO tb_pizzas (sabor, quantidadePedacos, refrigerante, preco, categoria_id)
VALUES ("Presunto e Queijo", 8, true, 59.00,6);
INSERT INTO tb_pizzas (sabor, quantidadePedacos, refrigerante, preco, categoria_id)
VALUES ("Chocolate", 8, true, 79.00,4);
INSERT INTO tb_pizzas (sabor, quantidadePedacos, refrigerante, preco, categoria_id)
VALUES ("5 Queijo", 6, true, 39.00,1);
INSERT INTO tb_pizzas (sabor, quantidadePedacos, refrigerante, preco, categoria_id)
VALUES ("Nutella", 8, false, 89.00,2);
INSERT INTO tb_pizzas (sabor, quantidadePedacos, refrigerante, preco, categoria_id)
VALUES ("Frango com Queijo ", 8, true, 59.00,6);
INSERT INTO tb_pizzas (sabor, quantidadePedacos, refrigerante, preco, categoria_id)
VALUES ("Queijo com Requeijão", 8, true, 43.00,1);
INSERT INTO tb_pizzas (sabor, quantidadePedacos, refrigerante, preco, categoria_id)
VALUES ("Brocolis com queijo", 1, true, 19.00,3);

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco between 50.00 and 100.00;

select * from tb_pizzas where sabor Like "%M%";

SELECT sabor, quantidadePedacos, refrigerante, preco, tb_categorias.tipoDePizza as categoria
FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT sabor, quantidadePedacos, refrigerante, preco, tb_categorias.tipoDePizza as categoria
FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
where tb_categorias.tipoDePizza = "doce";