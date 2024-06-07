//CRIAÇÃO DO SERVIDOR

//Puxa os types request e response
import express, {Request, Response} from 'express';
import path from 'path';
import dotenv from 'dotenv';

//Criado para iniciar as variáveis de ambiente
dotenv.config();

const server = express();

//Para acessar eventuais imagens ou outros
server.use(express.static(path.join(__dirname, '../public')));
server.use(express.urlencoded({extended: true}));

//Criação de um endpoint. 
//Essa função vai retornar um erro caso não encontre a página
server.use((req: Request, res: Response) => {
    //Retorna uma mensagem de erro em json
    res.status(404);
    res.json({error: 'Endpoint não encontrado!'});
});

server.listen(process.env.PORT);

