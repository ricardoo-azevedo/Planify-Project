import { Request, Response } from 'express';

import { Agendamento } from '../models/Agendamento';

export const createAgendamento = async (req: Request, res: Response) => {

    let { cliente, fone, servico, valor, dia, hora, status } = req.body;

    let newAgend = await Agendamento.create({ cliente, fone, servico, valor, dia, hora, status });

    res.status(201);

    res.json({ id: newAgend.id, cliente: newAgend.cliente, fone: newAgend.fone, servico: newAgend.servico, valor: newAgend.valor, dia: newAgend.dia, hora: newAgend.hora, status: newAgend.status, dt_mat: newAgend.dt_mat});
}

export const listAgendamento = async (req: Request, res: Response) => {
    let list = await Agendamento.findAll();
    res.json({list});
}

export const getAgendamento = async (req: Request, res: Response) => {
    let { id } = req.params;

    let agendamento = await Agendamento.findByPk(id);
    if(agendamento){
        res.json({ agendamento });
    } else {
        res.json({error: 'Nenhum resultado'})
    }
}

export const updateAgendamento = async (req: Request, res: Response) => {
    const id: string = req.params.id;

    let agendamento = await Agendamento.findByPk(id);
    if(agendamento){
       
        if(req.body.cliente){
            agendamento.cliente = req.body.cliente;
        }
        if(req.body.fone){
            agendamento.fone = req.body.fone;
        }
        if(req.body.servico){
            agendamento.servico = req.body.servico;
        }
        if(req.body.valor){
            agendamento.valor = req.body.valor;
        }
        if(req.body.dia){
            agendamento.dia = req.body.dia;
        }
        if(req.body.hora){
            agendamento.hora = req.body.hora;
        }
        if(req.body.status){
            agendamento.status = req.body.status;
        }

        await agendamento.save();
        res.json({ agendamento })

    } else {
        res.json({error: 'Item não encontrado'})
    }
}

