insert into tb_servicos
	(atv_serv, tempo_serv,preco_serv)
values
	('Corte de Cabelo Masculino', 30, 40.00),
	('Corte Infantil', 3000, 20.00),
	('Aparar Barba', 25000, 15.00),
	('Barba Completa', 3500, 30.00),
	('Sobrancelha Masculina', 2000, 20.00),
	('Corte de Cabelo e Barba', 6500, 45.00);

create table tb_pessoa(
	id_pessoa serial primary key,
	nome_pessoa varchar(50) not null,
	sobrenome_pessoa varchar(50) not null,
	fone_pessoa varchar(16) not null,
	email_pessoa varchar(100) unique not null,
	dt_reg_pessoa timestamp default current_timestamp
);

create table tb_funcionarios(
	id_func serial primary key,
	cargo_func varchar(50) not null,
	funcao_fuc varchar(50) not null,
	dt_mat_func timestamp default current_timestamp
)inherits(tb_pessoa);

create table tb_clientes(
	id_clie serial primary key,
	dt_mat_clie timestamp default current_timestamp
)inherits(tb_pessoa);

create table tb_servicos(
	id_serv serial primary key,
	atv_serv varchar(50) not null,
	valor_serv decimal(10,2) not null,
	tempo_serv integer not null,
	dt_mat_serv timestamp default current_timestamp 
);

create table tb_agendamento(
	id_agend serial primary key,
	clie_agend integer not null,
	serv_agend integer not null,
	func_agend integer not null,
	data_agend date not null,
	hora_agend time not null,
	dt_reg_agend timestamp default current_timestamp,
	foreign key(clie_agend) references tb_clientes(id_clie),
	foreign key(serv_agend) references tb_servicos(id_serv),
	foreign key(func_agend) references tb_funcionarios(id_func)
);

insert into tb_agendamento(
	clie_agend, serv_agend, func_agend, data_agend, hora_agend
)values(
	1, 8, 1, '26/05/2024', '15:30:00'
)