package br.edu.pi.planify.service;

import br.edu.pi.planify.entity.Agendamento;
import br.edu.pi.planify.repository.AgendamentoRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AgendamentoService {
    @Autowired
    private AgendamentoRepository agendamentoRepository;

    public List<Agendamento> findAll() {
        return agendamentoRepository.findAll();
    }

    public Optional<Agendamento> findById(Long id) {
        return agendamentoRepository.findById(id);
    }

    public Agendamento save(Agendamento agendamento) {
        return agendamentoRepository.save(agendamento);
    }

    public void deleteById(Long id) {
        agendamentoRepository.deleteById(id);
    }
}

