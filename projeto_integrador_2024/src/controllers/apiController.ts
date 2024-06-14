import { Request, Response } from 'express';

import { Agendamento } from '../models/Agendamento';



export const createAgendamento = async (req: Request, res: Response) => {

    let { cliente, fone, servico, valor, dia, hora, status } = req.body;

    let newAgend = await Agendamento.create({ cliente, fone, servico, valor, dia, hora, status });

    res.json({ id: newAgend.id, cliente: newAgend.cliente, fone: newAgend.fone, servico: newAgend.servico, valor: newAgend.valor, dia: newAgend.dia, hora: newAgend.hora, status: newAgend.status, dt_mat: newAgend.dt_mat});
}




