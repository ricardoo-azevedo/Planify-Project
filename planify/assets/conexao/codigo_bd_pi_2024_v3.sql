create table tb_pessoa(
	id_pessoa serial primary key,
	nome_pessoa varchar(50) not null,
	fone_pessoa varchar(16) not null,
	email_pessoa varchar(100) unique not null,
	dt_reg_pessoa timestamp default current_timestamp
);

/* ===================== FUNCIONÁRIOS ===================== */
create table tb_funcionarios(
	id_func serial primary key,
	cargo_func varchar(50) not null,
	dt_mat_func timestamp default current_timestamp
)inherits(tb_pessoa);


	select * from tb_funcionarios;

	insert into tb_funcionarios(
		nome_pessoa, fone_pessoa, email_pessoa, cargo_func
	)values(
		'Maria Clara','(58) 25469-8596','mc@meuemail.com','Atendente'
	);


/* ===================== CLIENTES ===================== */
create table tb_clientes(
	id_clie serial primary key,
	dt_mat_clie timestamp default current_timestamp
)inherits(tb_pessoa);


	select * from tb_clientes;

	insert into tb_clientes(
		nome_pessoa, fone_pessoa, email_pessoa
	)values(
		'Pedro Cavalcanti','(58) 89647-3215','pc@emailcliente.com'
	);


/* ===================== SERVIÇOS ===================== */
create table tb_servicos(
	id_serv serial primary key,
	atv_serv varchar(50) not null,
	valor_serv decimal(10,2) not null,
	tempo_serv integer not null,
	dt_mat_serv timestamp default current_timestamp 
);

	select * from tb_servicos;
		
	insert into tb_servicos(
		atv_serv, valor_serv,tempo_serv
	)values(
		'Corte de Cabelo e Barba completa)', 35.00, 20
	);

	update tb_servicos set atv_serv = 'Corte de Cabelo e Barba Completa' where id_serv=3;

/* ===================== AGENDAMENTO ===================== */
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

	select * from tb_agendamento;
		
	insert into tb_agendamento(
		clie_agend, serv_agend, func_agend, data_agend, hora_agend
	)values(
		1, 2, 2, '25/05/2024', '16:00:00'
	);


	select
		data_agend, hora_agend, tb_servicos.atv_serv, tb_clientes.nome_pessoa, tb_funcionarios.nome_pessoa, situacao_agend
	from tb_agendamento
		join tb_servicos on tb_agendamento.serv_agend= tb_servicos.id_serv
		join tb_clientes on tb_agendamento.clie_agend = tb_clientes.id_clie
		join tb_funcionarios on tb_agendamento.func_agend = tb_funcionarios.id_func
	
		
