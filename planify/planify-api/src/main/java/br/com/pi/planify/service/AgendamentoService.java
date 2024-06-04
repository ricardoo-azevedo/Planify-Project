package br.com.pi.planify.service;

import br.com.pi.planify.model.Agendamento;
import br.com.pi.planify.repository.AgendamentoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AgendamentoService {
    @Autowired
    private AgendamentoRepository agendamentoRepository;

    public Agendamento createAgendamento(Agendamento agendamento) {
        boolean isProfissionalAvailable = !agendamentoRepository.existsByProfissionalIdAndDateTime(agendamento.getProfissional().getId(), agendamento.getDateTime());
        if (!isProfissionalAvailable) {
            throw new IllegalArgumentException("Profissional não disponível no horário especificado");
        }
        return agendamentoRepository.save(agendamento);
    }

    public List<Agendamento> getAllAppointments() {
        return agendamentoRepository.findAll();
    }
}
