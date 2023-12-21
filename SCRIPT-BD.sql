create database bd_controle;
use bd_controle;

create table tb_vendedor(
id int auto_increment primary key,
nm_name varchar(45) not null
);

create table tb_cliente(
id int auto_increment primary key,
nm_name varchar(45) not null,
nr_telefone varchar(45) not null,
nm_email varchar(45) not null
);

create table tb_pagamento(
id int auto_increment primary key,
forma_pagamento varchar(45) not null
);

create table tb_venda(
id int auto_increment primary key,
vl_total decimal (10,2) not null,
dt_data datetime not null,
fk_cliente_id int,
fk_vendedor_id int,
fk_pagamento_id int,
foreign key(fk_cliente_id) references tb_cliente (id),
foreign key(fk_vendedor_id) references tb_vendedor (id),
foreign key(fk_pagamento_id) references tb_pagamento (id)
);

create table tb_categoria(
id int auto_increment primary key,
nm_nome varchar(45) not null
);

create table tb_fornecedores(
id int auto_increment primary key,
nr_cnpj varchar(45) not null,
nm_nome varchar(45) not null
);

create table tb_produto(
id int auto_increment primary key,
nm_ decimal (10,2) not null,
nr_preco decimal (10,2) not null,
qtd_estoque varchar (45) not null,
fk_categoria_id int,
fk_fornecedores_id int,
foreign key(fk_categoria_id) references tb_categoria (id),
foreign key(fk_fornecedores_id) references tb_fornecedores (id)
);

create table tb_venda_produto(
cd_venda_produto int auto_increment primary key,
fk_venda_id int,
fk_produto_id int,
foreign key(fk_venda_id) references tb_venda (id),
foreign key(fk_produto_id) references tb_produto (id)
);

