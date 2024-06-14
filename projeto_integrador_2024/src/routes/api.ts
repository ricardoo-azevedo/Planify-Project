//Local onde fica as rotas da API
import { Router } from 'express';

import * as ApiController from '../controllers/apiController';

//Criação das rotas
const router = Router();

//Criação dos Endpoints
router.post('/agendamento', ApiController.createAgendamento);

export default router;

