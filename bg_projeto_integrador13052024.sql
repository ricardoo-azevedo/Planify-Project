
create table tb_cliente(
	id_cliente serial Primary Key,
	no_cliente varchar(70) not null,
	cpf_cliente varchar(14) not null unique,
	tel_cliente varchar(16) not null,
	dt_mat_cliente timestamp not null default now()
);

create table tb_funcionario(
	id_func serial Primary Key,
	nome_func varchar(70) not null,
	cpf_func varchar(14) not null unique,
	tel_func varchar(16) not null,
	cargo_func varchar(30) not null,
	fun_func varchar(30) not null,
	dt_mat_func timestamp not null default now()
);

create type privilegio as enum ('User','Admin');

create table tb_usuario(
	id_user serial primary key,
	nome_func varchar(70) not null,
	priv_user privilegio not null,
	log_user varchar(50) not null,
	senha_user varchar(20) not null,
	fk_idUser int not null,
	dt_mat_user timestamp not null default now(),
	foreign key (fk_idUser) references tb_funcionario(id_func)
);

drop table tb_usuario;


