import {Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/pg';
import { DecimalLocale } from 'validator';

export interface AgendamentoInstance extends Model {
    id: number;//serial primary key,
	cliente: string;//varchar(50) not null,
	fone: string;//varchar(16) not null,
	servico: string;//varchar(100) not null,
    valor: DecimalLocale;	
	dia: Date;//date not null,
	hora: string;//varchar(5) not null,
	status: string;//varchar(15) not null,
	dt_mat: Date//date default now() not null
}

export const Agendamento = sequelize.define<AgendamentoInstance>('Agendamento', {
    id: {
        primaryKey: true,
        autoIncrement: true,
        type: DataTypes.INTEGER
    },
	cliente: {
        type: DataTypes.STRING
    },
	fone: {
        type: DataTypes.STRING
    },
	servico: {
        type: DataTypes.STRING
    },
	valor: {
        type: DataTypes.DECIMAL
    },
	dia: {
        type: DataTypes.DATE
    },
	hora: {
        type: DataTypes.STRING
    },
	status: {
        type: DataTypes.STRING
    },
	dt_mat: {
        type: DataTypes.DATE
    }
}, {
    tableName: 'tb_agenda',
    timestamps: false
})