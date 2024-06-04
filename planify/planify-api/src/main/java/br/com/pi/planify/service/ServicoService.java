package br.com.pi.planify.service;

import br.com.pi.planify.model.Servico;
import br.com.pi.planify.repository.ServicoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServicoService {
    @Autowired
    private ServicoRepository servicoRepository;

    public List<Servico> getAllServices() {
        return servicoRepository.findAll();
    }
}
